"""
Basic ir load functionality.  
Refer to the package description to learn more about the role of this module.  

Expected folder structure for puzzles:  
Training model IRs are expected to be in puzzle_folder_toplevel/train/train*_.json  
Candidate model IRs are expected to be in puzzle_folder_toplevel/test/test_*.json  
"""

import json
import os


def load_ir(puzzle_folder_path):
    """
    Input: path to puzzle folder structured as given in the module description.  
    Output: Pair of lists of dictionaries representing 'raw' models, followed by None
    Refer to the package description to understand more about the way the inputs and outputs and structured.  
    """
    if puzzle_folder_path.endswith('/'):
        puzzle_folder_path = puzzle_folder_path[:-1]
    training_filepaths, candidate_filepaths = _get_puzzle_filepaths(puzzle_folder_path)
    raw_training_models, raw_candidate_models = _get_raw_models(training_filepaths, candidate_filepaths)
    return raw_training_models, raw_candidate_models


def _get_raw_models(training_models_filepaths, candidate_models_filepaths):
    raw_training_models = []
    for training_file in training_models_filepaths:
        training_model_dict = _read_json(training_file)
        # Assign the full filename as the name of the model
        # TODO (very low): consider better naming conventions
        training_model_dict['model_name'] = training_file
        raw_training_models = raw_training_models + [training_model_dict]
    raw_candidate_models = []
    for candidate_file in candidate_models_filepaths:
        candidate_model_dict = _read_json(candidate_file)
        # Assign the full filename as the name of the model
        # TODO (very low): consider better naming conventions
        candidate_model_dict['model_name'] = candidate_file
        raw_candidate_models = raw_candidate_models + [candidate_model_dict]
    return raw_training_models, raw_candidate_models


def _get_puzzle_filepaths(puzzle_folder):
    train_list = None
    candidate_list = None
    for (path, dirnames, filenames) in os.walk(puzzle_folder):
        if path == puzzle_folder + '/train':
            # training models ir files
            train_list = [path + '/' + name for name in filenames if name.startswith('train_') and name.endswith('.json')]
        elif path == puzzle_folder + '/test':
            # candidate models ir files
            candidate_list = [path + '/' + name for name in filenames if name.startswith('test_') and name.endswith('.json')]
        else:
            continue
    return train_list, candidate_list


def _read_json(filename):
    with open(filename) as f:
        model_dict = json.load(f)
        return model_dict
