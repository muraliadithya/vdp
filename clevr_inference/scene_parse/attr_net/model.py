import os, torch
from torch.autograd import Variable
import torch.nn as nn
import torchvision.models as models
import numpy as np

PYTORCH_VER = torch.__version__


class AttributeNetwork():

    def __init__(self, opt):    
        if opt.concat_img:
            self.input_channels = 6
        else:
            self.input_channels = 3

        if opt.load_checkpoint_path:
            print('| loading checkpoint from %s' % opt.load_checkpoint_path)
            checkpoint = torch.load(opt.load_checkpoint_path)
            if self.input_channels != checkpoint['input_channels']:
                raise ValueError('Incorrect input channels for loaded model')
            self.output_dim = checkpoint['output_dim']
            self.net = _Net(self.output_dim, self.input_channels)
            self.net.load_state_dict(checkpoint['model_state'])
        else:
            print('| creating new model')
            output_dims = {
                'clevr': 18,
            }
            self.output_dim = output_dims[opt.dataset]
            self.net = _Net(self.output_dim, self.input_channels)

        self.criterion = nn.MSELoss()
        self.optimizer = torch.optim.Adam(self.net.parameters(), lr=opt.learning_rate)

        self.use_cuda = len(opt.gpu_ids) > 0 and torch.cuda.is_available()
        self.gpu_ids = opt.gpu_ids
        if self.use_cuda:
            self.net.cuda(opt.gpu_ids[0])

        self.input, self.label = None, None
                
    def set_input(self, x, y=None):
        self.input = self._to_var(x)
        if y is not None:
            self.label = self._to_var(y)

    def step(self):
        self.optimizer.zero_grad()
        self.forward()
        self.loss.backward()
        self.optimizer.step()

    def forward(self, idxs=None, name=None):
        self.pred = self.net(self.input, idxs, name)
        if self.label is not None:
            self.loss = self.criterion(self.pred, self.label)
            
    def get_loss(self):
        if PYTORCH_VER.startswith('0.4'):
            return self.loss.data.item()
        else:
            return self.loss.data[0]

    def get_pred(self):
        return self.pred.data.cpu().numpy()

    def eval_mode(self):
        self.net.eval()

    def train_mode(self):
        self.net.train()

    def save_checkpoint(self, save_path):
        checkpoint = {
            'input_channels': self.input_channels,
            'output_dim': self.output_dim,
            'model_state': self.net.cpu().state_dict()
        }
        torch.save(checkpoint, save_path)
        if self.use_cuda:
            self.net.cuda(self.gpu_ids[0])

    def _to_var(self, x):
        if self.use_cuda:
            x = x.cuda()
        return Variable(x)


class _Net(nn.Module):

    def __init__(self, output_dim, input_channels=6):
        super(_Net, self).__init__()

        resnet = models.resnet34(pretrained=True)
        layers = list(resnet.children())
        
        # remove the last layer
        layers.pop()
        # remove the first layer as we take a 6-channel input
        layers.pop(0)
        layers.insert(0, nn.Conv2d(input_channels, 64, kernel_size=(7, 7), stride=(2, 2), padding=(3, 3), bias=False))
        self.main = nn.Sequential(*layers)
        self.final_layer = nn.Linear(512, output_dim)

    def forward(self, x, idxs=None, name=None):
        x = self.main(x)
        x = x.view(x.size(0), -1)
        if idxs is not None:
            idxs = idxs.numpy()
            embedding = x.detach().view(x.size(0), -1).to(device='cpu').numpy()
            n, d = embedding.shape
            embedding_mat = np.zeros((n, d + max(idxs) + 1))
            for i, embed in enumerate(embedding):
                embedding_mat[i, :d] = embed
                embedding_mat[i, d + idxs[i]] = 1
            ir_dir = f"/home/ubuntu/vdp/data/intermediate-inference-outputs"
            os.makedirs(ir_dir, exist_ok=True)
            np.save(f"{ir_dir}/{name}.npy", embedding_mat)

        output = self.final_layer(x)
        return output


def get_model(opt):
    model = AttributeNetwork(opt)
    return model