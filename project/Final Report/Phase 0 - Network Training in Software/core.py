import torch
import torchvision
import torchvision.transforms as transforms
import pandas as pd
import numpy as np
import torch.nn.functional as F
from pathlib import Path
import time


def get_mnist_bw(batch_size=32, num_workers=8):
    transform = transforms.Compose(
    [transforms.ToTensor(),
    transforms.CenterCrop((18, 18))])
     

    # Dataset has values 0 - 1
    trainset = torchvision.datasets.MNIST(root='./data', train=True,
                                            download=True, transform=transform)

    testset = torchvision.datasets.MNIST(root='./data', train=False,
                                        download=True, transform=transform)

    # Binarization
    trainset.data[trainset.data < (255 / 2)] = 0
    trainset.data[trainset.data >= (255 / 2)] = 255
    testset.data[testset.data < (255 / 2)] = 0
    testset.data[testset.data >= (255 / 2)] = 255

    # Division by 255 is done implicitly here
    trainloader = torch.utils.data.DataLoader(trainset, batch_size=batch_size,
                                            shuffle=True, num_workers=num_workers)

    testloader = torch.utils.data.DataLoader(testset, batch_size=batch_size,
                                            shuffle=False, num_workers=num_workers)

    return trainloader, testloader


def test_net(net, testloader, device="cpu"):
    correct = 0
    total = 0
    with torch.no_grad():
        for data in testloader:
            images, labels = data
            images, labels = images.to(device), labels.to(device)
            outputs = net(images)
            _, predicted = torch.max(outputs.data, 1)
            total += labels.size(0)
            correct += (predicted == labels).sum().item()

    print(f'Accuracy of the network: {(100 * correct / total)} %')

    return correct / total


def train_net(net, trainloader, loss_fn, optimizer, epoch, args=[], grad_args=[], device="cpu"):

    running_loss = 0.0
    epoch_loss = 0.0

    # Last iteration
    batch_size = trainloader.batch_size
    train_size = len(trainloader.dataset)


    start = time.time()
    for i, data in enumerate(trainloader, 0):

        # get the inputs; data is a list of [inputs, labels]
        inputs, labels = data
        inputs, labels = inputs.to(device), labels.to(device)

        # Clear the gradients of all optimized variables
        optimizer.zero_grad()

        # Forward pass: compute predicted outputs by passing inputs to the modele
        outputs = net(inputs)

        # Calculate the loss
        if args.loss == 'MSE':
            # one hot encode the labels
            labels_one_hot = torch.nn.functional.one_hot(labels, 10).float()
            loss_vector = loss_fn(outputs, labels_one_hot)
        else:
            loss_vector = loss_fn(outputs, labels)

        # call loss.backward() to trigger gradient computation
        # actually sets true gradients (dL/dx_i), but computes
        # (dL/do_i) in between, firing our required hooks 
        loss = loss_vector.mean()
        loss.backward()

        if torch.isnan(loss) or loss.item() > 200:
            # Training should be pruned
            print('NaN Loss/Loss exploded')
            return True

        # Perform a single optimization step (parameter update)
        optimizer.step()

        # print statistics
        running_loss += loss.item()
        epoch_loss += loss.item()
        if True or i % 100 == 99:    # print every 100 mini-batches
            print('[Epoch %d, Mini-batch %d] loss: %.6f' %
                  (epoch + 1, i + 1, running_loss / 1))

            if (i%100 == 99):
                end = time.time()
                print(f'Time in 100 Mini-batches: {end - start}')
                start = end

            running_loss = 0.0

    return epoch_loss