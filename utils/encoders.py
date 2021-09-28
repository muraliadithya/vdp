import torch
import torch.nn as nn
from collections import OrderedDict
import argparse


class MLPEncoder(nn.Sequential):
    """Simple MLP encoder."""
    def __init__(self, params):
        input_dim  = params['input_dim']
        hidden_dim = params['hidden_dim']
        output_dim = params['output_dim']

        super().__init__(OrderedDict(
            fc1  = nn.Linear(input_dim, hidden_dim),
            act1 = nn.ReLU(),
            fc2  = nn.Linear(hidden_dim, hidden_dim),
            ln   = nn.LayerNorm(hidden_dim),
            act2 = nn.Sigmoid(),
            fc3  = nn.Linear(hidden_dim, output_dim)
        ))

class CNNEncoder(nn.Sequential):
    """CNN encoder"""
    def __init__(self, params):
        input_dim   = params['input_dim']
        hidden_dim  = params['hidden_dim']
        num_objects = params['num_objects']

        super().__init__(OrderedDict(
                cnn1    =   nn.Conv2d(input_dim, hidden_dim, (10, 10), stride=10),
                ln1     =   nn.BatchNorm2d(hidden_dim),
                act1    =   nn.LeakyReLU(),
                cnn2    =   nn.Conv2d(hidden_dim, num_objects, (1, 1), stride=1),
                act4    =   nn.Sigmoid(),
                flatten =   nn.Flatten(),
        ))


class View(nn.Module):
    """Change view for nn.Sequential"""
    def __init__(self, *shape):
        self.shape = shape
        super().__init__()

    def forward(self, x):
        return x.view(x.shape[0], *self.shape)


class CNNDecoder(nn.Sequential):
    """CNN decoder."""
    def __init__(self, params):
        input_dim   = params['input_dim']
        hidden_dim  = params['hidden_dim']
        num_objects = params['num_objects']
        channel, width, height      = params['image_shape']
        output_dim = num_objects * width // 10 * height // 10

        super().__init__(OrderedDict(
            fc1     =   nn.Linear(input_dim, hidden_dim),
            act1    =   nn.LeakyReLU(),
            fc2     =   nn.Linear(hidden_dim, hidden_dim),
            ln      =   nn.LayerNorm(hidden_dim),
            act2    =   nn.LeakyReLU(),
            fc3     =   nn.Linear(hidden_dim, output_dim),
            view    =   View(num_objects, width // 10, height // 10),
            deconv1 =   nn.ConvTranspose2d(num_objects, hidden_dim, kernel_size=1, stride=1),
            act3    =   nn.LeakyReLU(),
            deconv2 =   nn.ConvTranspose2d(hidden_dim, channel, kernel_size=10, stride=10)
            ))




if __name__ == "__main__":
    device = torch.device('cpu')
    params = dict(input_dim=3, hidden_dim=32, num_objects=5)
    dparams = dict(input_dim=125, hidden_dim=32, num_objects=5, image_shape=(3, 50, 50))
    cnn = CNNEncoder(params).to(device=device)
    dcnn = CNNDecoder(dparams).to(device=device)
    data = torch.rand((100, 3, 50, 50)).to(device=device)
    out = cnn(data)
    print(out.shape)
    reconin = dcnn(out)
    print(reconin.shape)

    mlparamas = dict(input_dim=60, hidden_dim=32, output_dim=32)
    data = torch.rand((100, 60)).to(device=device)
    model = MLPEncoder(mlparamas).to(device=device)
    out = model(data)
    print(out.shape)

