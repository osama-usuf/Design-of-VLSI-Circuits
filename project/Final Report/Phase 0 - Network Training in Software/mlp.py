import torch
import torch.nn as nn
import torch.nn.functional as F
import torch.optim as optim
import math
import numpy as np
import pandas as pd
import copy

class MLP(nn.Module):
    def __init__(self, biases=True):
        super(MLP, self).__init__()
        #self.flatten = nn.Flatten()
        self.linear_relu_stack = nn.Sequential(
            nn.Linear(18*18, 10, bias=biases),
            nn.ReLU(),
            nn.Linear(10, 10, bias=biases)
        )

    def forward(self, x):
        x = x.view(-1, 18*18)
        logits = self.linear_relu_stack(x)
        return logits