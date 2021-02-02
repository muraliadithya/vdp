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
    loader_output = load_ir(ir_args)
    normaliser_output = normalise(*loader_output, ir_args)
    vdp_puzzle = mk_vdppuzzle(*normaliser_output, ir_args)
    return vdp_puzzle


# List of modules in the ir package for ir loading (reading), ir normalisation and vdp puzzle creation.
# These can be combined into various configuration modes to create the ir.parser.argparser options.
# ir loading
_irload_json_simple = 'irload_basic'
_irload_json_with_vocabulary_filter = 'irload_filtered_vocabulary'
_irload_json_with_structured_labels = 'irload_structured_labels'
# normalisation
_normalisation_guardedvocabulary_vdppaper = 'normalisation_guardedvocabulary_custom'
# vdp puzzle creation
_mkvdppuzzle_guardedvocabulary = 'mkvdppuzzle_guardedvocabulary'
_mkvdppuzzle_guardedvocabulary_separated_guards = 'mkvdppuzzle_guardedvocabulary_separated_guards'


# Helper function to delineate combinations for various config options
def _ir_handler_triple(ir_args):
    config = ir_args.ir_config
    if config == 'Simple':
        return _irload_json_simple, _normalisation_guardedvocabulary_vdppaper, _mkvdppuzzle_guardedvocabulary_separated_guards
    elif config == 'ObjRelFilter':
        return _irload_json_with_vocabulary_filter, _normalisation_guardedvocabulary_vdppaper, _mkvdppuzzle_guardedvocabulary_separated_guards
    elif config == 'StructuredLabelDomain':
        return _irload_json_with_structured_labels, _normalisation_guardedvocabulary_vdppaper, _mkvdppuzzle_guardedvocabulary_separated_guards
    elif config == 'Clevr':
        return _irload_json_simple, _normalisation_guardedvocabulary_vdppaper, _mkvdppuzzle_guardedvocabulary
    else:
        raise ValueError('Configuration {} unsupported.'.format(config))
