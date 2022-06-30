import os, re, torch, torchvision, glob
import torch.nn as nn
import numpy as np
from tqdm.auto import tqdm
from torch.utils.data import DataLoader, Dataset
from skimage import transform as sktransform
from torchvision import models, transforms


class CLEVRData(Dataset):
    def __init__(self, root_dir='./data', mode='train', transform=None, number=None):
        self.mode = mode
        self.root_dir = root_dir
        self.number = number
        self.transform = transform
        data_dir = os.path.join(self.root_dir, self.mode)
        self.dataset = list()
        for tup in glob.glob("./clevr_data/*"):
            
        for path in glob(os.path.join(data_dir, '*_imgs.npy')):
            basepath = os.path.dirname(path)
            index, _ = get_index_type.search(path).groups()
            scan_path = (os.path.join(basepath, index + "_imgs.npy"))
            label_path = (os.path.join(basepath, index + "_seg.npy"))
            if self.mode == 'test':
                label_path=None
            self.dataset.append({'scan' : scan_path, 'label': label_path})

    def __len__(self):
        if not self.number:
            return len(self.dataset)
        else:
            return self.number

    def __getitem__(self, idx):
        entry = self.dataset[idx]
        scan = (np.load(entry['scan']))
        if self.mode == 'test':
            label = []
        else:
            label = (np.load(entry['label']))

        sample = (scan, label)
        if self.transform:
            sample = self.transform(sample)

        if self.mode == 'test':
            return scan.shape, os.path.basename(entry['scan']).replace("_imgs.npy", ""), sample

        return sample


def preprocess():
    centcrop = lambda a, b: (a + b) // 2
    randcrop = lambda a, b: np.random.randint(a, b)
    thirty   = lambda a, b: 30
    train_transform = transforms.Compose([
            # GetBrainOnly(padding=5),
            Reshape((4, 128, 128, 128)),
            # CustomCrop(128, axis=2, start_fn=randcrop),
            # CustomCrop(128, axis=3, start_fn=randcrop),
            RandomFlip(0.8, axis=[2]),
            RandomFlip(0.8, axis=[3]),
            ToTensor(),
            # Normalize(inplace=True),
        ])

    test_transform = transforms.Compose([  
            Reshape((4, 128, 128, 128)),
            # Reshape(128, axis=2, start_fn=centcrop),
            # Rescale(128, axis=3, start_fn=centcrop),
            ToTensor(),
            # Normalize(inplace=True),
        ])
    ds_train = MRIData("/content/data", 'train', train_transform)
    ds_val = MRIData("/content/data", 'validation', test_transform)
    ds_test = MRIData("/content/data", 'test', test_transform)
    return ds_train, ds_val, ds_test

ds_train, ds_val, ds_test = preprocess()


train_loader = DataLoader(ds_train, batch_size=1,
                          shuffle=True, pin_memory=True, num_workers=0)

val_loader = DataLoader(ds_val, batch_size=1,
                          shuffle=False, pin_memory=True, num_workers=0)

test_loader = DataLoader(ds_test, batch_size=1,
                          shuffle=False, pin_memory=True, num_workers=0)
