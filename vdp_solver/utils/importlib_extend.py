"""
Extensions and wrappers for functionality in importlib.  
"""

import importlib


# Helper function to import functions from modules
def import_module_attribute(*module_qualified_name, attribute_name):
    module_obj = importlib.import_module('.'.join(module_qualified_name))
    return getattr(module_obj, attribute_name)
