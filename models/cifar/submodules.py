import torch
import torch.nn as nn

class Affine(nn.Module):
    def __init__(self):
        super().__init__()
        self.gamma = nn.Parameter(torch.ones(3).view(1, -1, 1, 1))
        self.beta = nn.Parameter(torch.zeros(3).view(1, -1, 1, 1))
    def forward(self, x):
        return self.gamma * x + self.beta

class Beta(nn.Module):
    def __init__(self):
        super().__init__()
        self.beta = nn.Parameter(torch.zeros(3).view(1, -1, 1, 1))
    def forward(self, x):
        return x + self.beta
    
class Gamma(nn.Module):
    def __init__(self):
        super().__init__()
        self.gamma = nn.Parameter(torch.ones(3).view(1, -1, 1, 1))
    def forward(self, x):
        return self.gamma * x
