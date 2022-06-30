"""
ir loading functionality.  
Refer to the package description to learn more about the role of this module.  

Expected folder structure for puzzles:  
Training model IRs are expected to be in puzzle_folder_toplevel/train/train*_.json  
Candidate model IRs are expected to be in puzzle_folder_toplevel/test/test_*.json  

This module extends the behaviour of the simple ir loader in ir.irload_basic by using a file 
containing certain object labels and relations in order to 'filter' the IR, i.e, load the projection 
of the original model onto these approved labels and relations.  
"""

import json
import importlib_resources

# This module is being extended in the current file.
import ir.irload_basic as basic_irloader


def load_ir(ir_args):
    """
    Input: path to puzzle folder structured as given in the module description.  
    Output: Pair of lists of dictionaries representing 'raw' models, followed by None
    Refer to the package description to understand more about the way the inputs and outputs and structured.  
    """
    raw_training_models, raw_candidate_models = basic_irloader.load_ir(ir_args)
    # Temporarily disabling explicit filter file input option in favour of default file
    # filter_file_path = ir_args.vocabulary_filter_filepath 
    filter_file = importlib_resources.open_text('knowledge', 'macrovocabulary.json')
    with filter_file:
        filter_dict = json.loads(filter_file.read())
        filtered_training_models = []
        for model in raw_training_models:
            filtered_training_models = filtered_training_models + [_filter_raw_model(model, filter_dict)]
        filtered_candidate_models = []
        for model in raw_candidate_models:
            filtered_candidate_models = filtered_candidate_models + [_filter_raw_model(model, filter_dict)]
        return filtered_training_models, filtered_candidate_models


# Helper function to 'filter' out objects and relationships that do not appear in the filter_dict and create a
# restriction of the given model.
def _filter_raw_model(model, filter_dict):
    filter_predicates = filter_dict['predicates']
    model_predicates = list(model['predicates'].keys())
    # Delete entries in the list of predicates in the signature
    # Delete interpretations corresponding to said predicates
    for model_predicate in model_predicates:
        if model_predicate not in filter_predicates:
            model['predicates'].pop(model_predicate, None)
            model['interpretation'].pop(model_predicate, None)
    good_labels = filter_dict['labels']
    # Remove all labels not in good_labels from the domain of labels
    model['elements']['label'] = [label for label in model['elements']['label'] if label in good_labels]
    # Delete objects any of whose labels are extraneous
    extraneous_objects = {entry[0] for entry in model['interpretation']['has_label'] if entry[1] not in good_labels}
    model['elements']['object'] = [obj for obj in model['elements']['object'] if obj not in extraneous_objects]
    # Delete interpretations with extraneous objects in them
    remaining_predicates = model['predicates']
    for pred in remaining_predicates:
        old_entries = model['interpretation'][pred]
        new_entries = []
        for entry in old_entries:
            if all(elem not in extraneous_objects for elem in entry):
                new_entries = new_entries + [entry]
        model['interpretation'][pred] = new_entries
    return model
