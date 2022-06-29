import torch, json, pickle, os, random
from torch.utils.data import Dataset, DataLoader
import numpy as np
from pathlib import Path

def read_json(pth):
    assert os.path.exists(pth), f"Path Not found: {pth} relative to {os.getcwd()}"
    with open(pth, 'r') as f:
        return json.load(f)
    
def to_json(obj, pth):
    with open(pth, 'w') as f:
        json.dump(obj, f)

def read_pickle(pth):
    assert os.path.exists(pth), f"Path Not found: {pth} relative to {os.getcwd()}"
    with open(pth, 'rb') as f:
        return pickle.load(f)

def to_pickle(obj, pth):
    with open(pth, 'wb') as f:
        pickle.dump(obj, f)

def read_txt(pth):
    assert os.path.exists(pth), f"Path Not found: {pth} relative to {os.getcwd()}"
    with open(pth, 'r') as fp:
        return fp.readlines()

def to_txt(lines, pth):
    with open(pth, 'w') as fp:
        for l in lines:
            fp.write("%s\n" % l)


class IRDataset(Dataset):
    def __init__(self, ir_dir, gt_dir, puzzle) -> None:
        super().__init__()
        self.ir_dir = Path(ir_dir)
        self.gt_dir = Path(gt_dir)
        self.puzzle = puzzle

        to_run = [self.puzzle]
        self.dataset = list()
        for (absdir, folders, files) in os.walk(self.ir_dir):
            assert len(files), f"IR directory @ {absdir} is empty"
            absdir = Path(absdir)
            for f in files:
                fname = os.path.splitext(f)[0]
                pname, vnum = fname.split("-fovariant-")
                if pname not in to_run:
                    continue
                gt_pth = self.gt_dir.joinpath(pname).joinpath("fovariant-" + vnum).joinpath(fname + "-gt.json")
                target = read_json(gt_pth)['order'].index(0)
                self.dataset.append( (absdir.joinpath(f), target) )
        

    def __len__(self):
        return len(self.dataset)
    
    def __getitem__(self, idx):
        if torch.is_tensor(idx):
            idx = idx.tolist()
        path, target = self.dataset[idx]
        data = np.load(path, allow_pickle=True).astype(np.float32)
        sample = {'data' : data, 'target': target}
        return sample





def seed_worker(worker_id):
    worker_seed = torch.initial_seed() % 2**32
    np.random.seed(worker_seed)
    random.seed(worker_seed)


def main():
    ir_loc = "/home/ubuntu/vdp-tool-chain-repo/data/intermediate-inference-outputs/"
    gt_loc = "/home/ubuntu/vdp-tool-chain-repo/data/clevr-single-variant/"
    dataset = IRDataset(ir_loc, gt_loc, "circle-at-ends")
    dataloader = DataLoader(dataset, batch_size=5, shuffle=True, num_workers=0, worker_init_fn=seed_worker)
    for i_batch, sample_batched in enumerate(dataloader):
        print(sample_batched['data'].shape, sample_batched['target'])

if __name__ == "__main__":
    main()