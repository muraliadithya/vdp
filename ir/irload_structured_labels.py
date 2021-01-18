"""
Basic ir load functionality.  
Refer to the package description to learn more about the role of this module.  

Expected folder structure for puzzles:  
Training model IRs are expected to be in puzzle_folder_toplevel/train/train*_.json  
Candidate model IRs are expected to be in puzzle_folder_toplevel/test/test_*.json  

This module extends the behaviour of the simple ir loader in ir.irload_basic by using a file 
that details additional structure on the domain of object labels beyond them being a set of 
symbols. For example, labels have default associations with each other or class/sub-class 
relationships that are not necessarily captured by the IR.  
"""

import json
import importlib_resources
import warnings

# This module is being extended in the current file.
import ir.irload_basic as basic_irloader
import ir.irload_filtered_vocabulary as filtered_irloader


def load_ir(ir_args):
    """
    Input: path to puzzle folder structured as given in the module description.  
    Output: Pair of lists of dictionaries representing 'raw' models, followed by None
    Refer to the package description to understand more about the way the inputs and outputs and structured.  
    """
    raw_training_models, raw_candidate_models = filtered_irloader.load_ir(ir_args) #basic_irloader.load_ir(ir_args)
    # Temporarily disabling explicit label domain file input option in favour of default file
    # filter_file_path = ir_args.label_domain_filepath
    labeldomain_file = importlib_resources.open_text('knowledge', 'labeldomain.json')
    with labeldomain_file:
        labeldomain_dict = json.loads(labeldomain_file.read())
        annotated_training_models = []
        for model in raw_training_models:
            annotated_training_models = annotated_training_models + [_annotate_raw_model(model, labeldomain_dict)]
        annotated_candidate_models = []
        for model in raw_candidate_models:
            annotated_candidate_models = annotated_candidate_models + [_annotate_raw_model(model, labeldomain_dict)]
        return annotated_training_models, annotated_candidate_models


# Helper function to add information to the basic IR in order to ensure that resulting IR is correct 
# with respect to given additionally provided label domain structure.
def _annotate_raw_model(model, labeldomain_dict):
    # Check if the set of all labels in the IR is in the 'labels' field, else raise warning
    model_labels = model['elements']['label']
    label_domain = labeldomain_dict['labels']
    if not set(model_labels).issubset(set(label_domain)):
        warnings.warn('The set of labels extracted is not a subset of the given domain of labels.')
    # Add the new labels to the set of all labels
    model['elements']['label'] = label_domain
    # Use the 'sublabel' field to annotate objects with their super-labels
    # TODO (very high): perform closure with respect to labelling hierarchy
    sublabel_annotation = labeldomain_dict['sublabel']
    label_interpretation = model['interpretation']['has_label']
    for [obj, label] in label_interpretation:
        super_labels = sublabel_annotation.get(label, None)
        if super_labels is not None and super_labels != []:
            model['interpretation']['has_label'] = model['interpretation']['has_label'] + [[obj, suplbl] 
                                                                                           for suplbl in super_labels]
    return model
