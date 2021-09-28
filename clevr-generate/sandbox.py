from glob import glob
import os

out_pattern = "/home/ubuntu/vdp-tool-chain-repo/data/clevr-variants/*-*[0-9].out"
outs = glob(out_pattern)
cmd = lambda name: f"python scripts/vdpsolve.py /home/ubuntu/vdp-tool-chain-repo/data/inference-outputs/{name} - 2 -N 100 -C=2 >> /home/ubuntu/vdp-tool-chain-repo/data/clevr-variants/{name}.out 2>> custom.err"
cmd2 = lambda name : f"bash ./driver.sh {name} >> /home/ubuntu/vdp-tool-chain-repo/data/clevr-variants/{name}.out 2>> /home/ubuntu/vdp-tool-chain-repo/data/clevr-variants/{name}.log"

output = " && ".join([cmd2(o) for o in map(lambda x: os.path.basename(x).split(".")[0], outs)])

print(output, file=open("cmd.sh", 'w'))