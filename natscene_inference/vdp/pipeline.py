import os
from vdputils import _to_pickle, _read_pickle

class Pipe(object):
    def __init__(self, use_cache=True):
        self.use_cache = use_cache
        self.cache = _read_pickle("/home/ubuntu/vdp/data/natscene_data/cache.pkl") if (self.use_cache and os.path.exists("/home/ubuntu/vdp/data/natscene_data/cache.pkl")) else dict()

    def _reload_cache(self):
        self.cache = _read_pickle("/home/ubuntu/vdp/data/natscene_data/cache.pkl") if (self.use_cache and os.path.exists("/home/ubuntu/vdp/data/natscene_data/cache.pkl")) else dict()
        
    def __save__(self, cache_loc="/home/ubuntu/vdp/data/natscene_data/cache.pkl"):
        if self.use_cache: 
            _to_pickle(self.cache, "/home/ubuntu/vdp/data/natscene_data/cache.pkl")
        else:
            _to_pickle(self.cache, "/home/ubuntu/vdp/data/natscene_data/temp.pkl")

    def __call__(self, params):
        self._reload_cache()
        

class Pipeline(object):
    def __init__(self, children):
        self.children = children
    
    def run(self, params):
        self.config = params
        for child in self.children:
            self.config = child.__call__(self.config)
            child.__save__()
        
        return self.config



