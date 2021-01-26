"""
Basic ir load functionality.  
CAUTION: IMPORTANT: Do not modify this module as it has several extensions built upon it.
List of known extensions:
- ir.irload_filtered_vocabulary
- ir.irload_structured_labels

Refer to the package description to learn more about the role of this module.  

Expected folder structure for puzzles:  
Training model IRs are expected to be in puzzle_folder_toplevel/train/train*_.json  
Candidate model IRs are expected to be in puzzle_folder_toplevel/test/test_*.json  
"""

import json
import os


def load_ir(ir_args):
    """
    Input: path to puzzle folder structured as given in the module description, followed by an extra argument 
    containing the arguments from the parser.  
    Output: Pair of lists of dictionaries representing 'raw' models, followed by None
    Refer to the package description to understand more about the way the inputs and outputs and structured.  
    """
    puzzle_folder_path = ir_args.puzzle_folder_path
    if puzzle_folder_path.endswith('/'):
        puzzle_folder_path = puzzle_folder_path[:-1]
    training_filepaths, candidate_filepaths = _get_puzzle_filepaths(puzzle_folder_path)
    raw_training_models, raw_candidate_models = _get_raw_models(training_filepaths, candidate_filepaths)
    return raw_training_models, raw_candidate_models


# Helper functions
def _get_puzzle_filepaths(puzzle_folder):
    train_list = None
    candidate_list = None
    for (path, dirnames, filenames) in os.walk(puzzle_folder):
        if path == puzzle_folder + '/train':
            # training models ir files
            train_list = [path + '/' + name for name in filenames if name.endswith('.json')]
        elif path == puzzle_folder + '/test':
            # candidate models ir files
            candidate_list = [path + '/' + name for name in filenames if name.endswith('.json')]
        else:
            continue
    return train_list, candidate_list


def _get_raw_models(training_models_filepaths, candidate_models_filepaths):
    raw_training_models = []
    for training_file in training_models_filepaths:
        with open(training_file) as trf:
            training_model_dict = json.load(trf)
            # Assign the full filename as the name of the model
            # TODO (very low): consider better naming conventions
            training_model_dict['model_name'] = training_file
            raw_training_models = raw_training_models + [training_model_dict]
    raw_candidate_models = []
    for candidate_file in candidate_models_filepaths:
        with open(candidate_file) as canf:
            candidate_model_dict = json.load(canf)
            # Assign the full filename as the name of the model
            # TODO (very low): consider better naming conventions
            candidate_model_dict['model_name'] = candidate_file
            raw_candidate_models = raw_candidate_models + [candidate_model_dict]
    return raw_training_models, raw_candidate_models


# Helper function to fix the way predicate signatures are represented in the IR
# def _correct_raw_model(model):
#     predicate_dict = model.get('predicates', None)
#     for predicate in predicate_dict:
#         signature_str = predicate_dict[predicate]
#         # Replace all delimiters with a uniform one and then split
#         uniform_delimiter = '!!'
#         for delimiter in {'(', ')', ' ', ','}:
#             signature_str = signature_str.replace(delimiter, uniform_delimiter)
#         signature = ' '.join(signature_str.split(uniform_delimiter)).split()
#         predicate_dict[predicate] = signature
#     return model
