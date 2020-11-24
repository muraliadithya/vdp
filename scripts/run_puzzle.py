import sys
import os

from ir.ir import load_ir, normalise_dicts
from ir.mk_vdppuzzle import mk_vdppuzzle
from vdp.guardedconjunctivesolver.guardedconjunctivesolver import GuardedConjunctiveSolver


def get_puzzle_files(puzzle_folder):
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


def load_vdppuzzle(training_models_files, candidate_models_files, name):
    raw_training_models = []
    for training_file in training_models_files:
        training_model_dict = load_ir(training_file)
        # Assign the full filename as the name of the model
        # TODO (very low): consider better naming conventions
        training_model_dict['model_name'] = training_file
        raw_training_models = raw_training_models + [training_model_dict]
    raw_candidate_models = []
    for candidate_file in candidate_models_files:
        candidate_model_dict = load_ir(candidate_file)
        # Assign the full filename as the name of the model
        # TODO (very low): consider better naming conventions
        candidate_model_dict['model_name'] = candidate_file
        raw_candidate_models = raw_candidate_models + [candidate_model_dict]

    guarded_vocabulary, training_models, candidate_models = normalise_dicts(raw_training_models, raw_candidate_models)
    vdp_puzzle_object = mk_vdppuzzle(guarded_vocabulary, training_models, candidate_models, name)
    return vdp_puzzle_object


if __name__ == '__main__':
    puzzle_folder_path = sys.argv[1]
    if puzzle_folder_path.endswith('/'):
        puzzle_folder_path = puzzle_folder_path[:-1]
    training_files, candidate_files = get_puzzle_files(puzzle_folder_path)
    vdp_puzzle = load_vdppuzzle(training_files, candidate_files, name=puzzle_folder_path)
    solver = GuardedConjunctiveSolver(num_vars=2)
    solver.solve(vdp_puzzle)








