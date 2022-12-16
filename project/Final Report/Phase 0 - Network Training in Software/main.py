# General imports
import numpy as np
import pandas as pd
import time
from datetime import datetime
from pathlib import Path
import random
import os

# PyTorch imports
import torch
import torch.nn as nn
import torch.optim as optim
import torch.multiprocessing
torch.multiprocessing.set_sharing_strategy('file_system') # To prevent dataloader limits for increased batches
# To detect anomalies such as nan values in gradient/loss, set this to true
torch.autograd.set_detect_anomaly(True)

# NeuroTorch-specific (OY) imports
from mlp import MLP
from args import parser, log_args
from core import train_net, test_net, get_mnist_bw

if __name__ == '__main__':

	args = parser.parse_args() # parse the args dict

	current_time = datetime.now().strftime('%Y_%m_%d_%H_%M_%S')
	lr = args.lr
	batch_size = args.batch_size
	n_epochs = args.epochs

	exp_name = 'FPGA-Inference-b-' +str(batch_size) +'-lr-' + str(lr) +'-'+time.strftime("%Y%m%d-%H%M%S")

	if (args.out_file != ''):
		exp_name = args.out_file
	if (args.out_dir != ''):
		exp_name = args.out_dir + exp_name
		Path(args.out_dir).mkdir(parents=True, exist_ok=True)

	print('Experiment Name:', exp_name)

	### DATASET GENERATION ###
	# For simplicity, the MNIST dataset is binarized (pixels are 1 bit, either a 0 or 1), and resized to 28 x 28
	# Export the binarized test set (for simplicity) - this will be loaded onto the FPGA board
	if (args.gen_data_rtl):
		# Generate dataset as separate (feature, label) files for each image in the testing dataset
		trainloader, testloader = get_mnist_bw(batch_size=1)
		Path('data_rtl').mkdir(parents=True, exist_ok=True)
		# Manual file generation, might be too complicated to handle on-board (20k text files), plus it's too low-level since we have a full-blown PS on-board
		for idx, data in enumerate(testloader):
			image = data[0].reshape(18, 18).numpy()
			label = data[1].numpy()
			np.savetxt(f'data_rtl/image_{idx}.txt', image, fmt='%1.0f')
			np.savetxt(f'data_rtl/label_{idx}.txt', label, fmt='%1.0f')

		exit()

	if (args.gen_data_hls):
		# Generate dataset as two files containing all information
		# https://stackoverflow.com/questions/54897646/pytorch-datasets-converting-entire-dataset-to-numpy
		_, testloader_full = get_mnist_bw(batch_size=10000) # 10k testing images
		
		X_test = next(iter(testloader_full))[0].numpy()
		y_test = next(iter(testloader_full))[1].numpy()

		Path('data_hls').mkdir(parents=True, exist_ok=True)
		np.save('data_hls/X_test.npy', X_test)
		np.save('data_hls/y_test.npy', y_test)

		# Testing by re-loading
		test_X = np.load('data_hls/X_test.npy', allow_pickle=True)
		test_Y = np.load('data_hls/y_test.npy', allow_pickle=True)

		print(test_X.shape)

		exit()

	if torch.cuda.is_available():  
		dev = "cuda:0" 
	else:
		dev = "cpu"

	dev = "cpu"

	data = {'epoch': [], 'acc': [], 'loss':[]}
	df = pd.DataFrame(data=data)

	if (args.train_hls):
		# For the HLS network, we use the hls4ml framework later which doesn't support no biases
		net = MLP()
		output_network_name = 'mlp_hls.pt'
	elif (args.train_rtl):
		# For training rtl, we choose to turn biases off to further simplify the task
		net = MLP(biases=False)
		output_network_name = 'mlp_rtl.pt'
	else:
		print("No training argument has been provided (train_hls OR train_rtl), exiting.")
		exit()

	trainloader, testloader = get_mnist_bw(batch_size=batch_size)

	# Network parameters
	optimizer = optim.SGD(net.parameters(), lr=lr)
	net.to(torch.device(dev))

	acc = test_net(net, testloader, dev)
	df = df.append({'epoch':0, 'acc': acc, 'loss': 0, 'elapsed_time': 0}, ignore_index=True)

	if (args.loss == 'CrossEntropy'): loss_fn = nn.CrossEntropyLoss(reduction='none')
	elif (args.loss == 'MSE'): loss_fn = nn.MSELoss(reduction='none')
	else: 
		print('Loss Function undefined')
		exit()

	start = time.time()
	# Network Training
	for epoch in range(n_epochs):  # loop over the dataset multiple times
		epoch_loss = train_net(net, trainloader, loss_fn, optimizer, epoch, args, args, dev)
		epoch_loss = epoch_loss/len(trainloader)
		print('Epoch Loss', epoch_loss)
		elapsed_time = time.time() - start
		acc = test_net(net, testloader, dev)
		df = df.append({'epoch':epoch+1, 'acc': acc, 'loss': epoch_loss, 'elapsed_time': elapsed_time}, ignore_index=True)

	end = time.time()
	elapsed_time = end - start

	# Log Weights
	if (args.log_weights):
		weight_write_dir = f'{args.weight_dir}/Weights/'
		Path(weight_write_dir).mkdir(parents=True, exist_ok=True)

		state_dict = net.state_dict()
		for idx, layer in enumerate(net.linear_relu_stack):
			# Export weights (upto 32 integer/fractional bits)
			if isinstance(layer, nn.Linear):
				np.savetxt(f'{weight_write_dir}fc{idx+1}_weight.txt', layer.weight.detach().numpy(), fmt=f'%{args.log_weights_precision}.{args.log_weights_precision}f')

		df.to_csv(exp_name+f'-{os.getpid()}.csv')
		torch.save(net, output_network_name)

	print("="*80)
	print(f'Total Time Elapsed {elapsed_time}')
	print("="*80)