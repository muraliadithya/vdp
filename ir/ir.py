"""
Primary module of the ir package.  
Defines an interface to use several options for reading an intermediate representation (IR) into a VDPPuzzle object.  
Refer to the package description to learn more about the role of this module.  
"""

import importlib

import utils.importlib_extend as importlib_extend


def ir_to_vdppuzzle(ir_args):
    loader, normaliser, puzzle_maker = _ir_handler_triple(ir_args)
    # Refer to the package description to understand why these imports are structured this way.
    # Imports must have full qualified names for the modules
    package_qualified_name = 'ir'
    load_ir = importlib_extend.import_module_attribute(package_qualified_name, loader, attribute_name='load_ir')
    normalise = importlib_extend.import_module_attribute(package_qualified_name, normaliser, attribute_name='normalise')
    mk_vdppuzzle = importlib_extend.import_module_attribute(package_qualified_name, puzzle_maker, attribute_name='mk_vdppuzzle')
    # Refer to the package description to understand why the inputs and outputs are structured this way.
    loader_output = load_ir(ir_args.puzzle_folder_path)
    normaliser_output = normalise(*loader_output)
    vdp_puzzle = mk_vdppuzzle(*normaliser_output, puzzlename=ir_args.puzzlename)
    return vdp_puzzle


# List of modules in the ir package for ir loading (reading), ir normalisation and vdp puzzle creation.
# These can be combined into various configuration modes to create the ir.parser.argparser options.
# ir loading
_irload_basic_json = 'irload_basic'
# normalisation
_normalisation_guardedvocabulary_vdppaper = 'normalisation_guardedvocabulary_custom'
# vdp puzzle creation
_mkvdppuzzle_guardedvocabulary = 'mkvdppuzzle_guardedvocabulary'


# Helper function to delineate combinations for various config options
def _ir_handler_triple(ir_args):
    config = ir_args.ir_config
    if config == 'UnaryGuardedConjunctive':
        return _irload_basic_json, _normalisation_guardedvocabulary_vdppaper, _mkvdppuzzle_guardedvocabulary
    else:
        raise ValueError('Configuration {} unsupported.'.format(config))
