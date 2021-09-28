"""
Normalisation facility for producing puzzles over a guarded vocabulary with unary guards.  

Refer to the package description to learn more about the role of this module.  
"""


def normalise(training_dicts_raw, candidate_dicts_raw, ir_args):
    """
    Normalisation is specifically tailored to the logic used in the first version of the paper 
    https://arxiv.org/abs/1907.05878 and involves the following steps:  
    (i) Discard any other sort except one called 'object'.  
    (ii) For every element e of sort 'label' make a unary predicate e().  
    (iii) For every member (o, e) of the relation 'has_label' assert e(o), i.e., ensure that o belongs to e() created 
    in step (ii).  
    (iv) Retain all other relations between elements of sort 'object', and discard all other entries.  
    (v) Discard all data corresponding to functions or constants. The resulting vocabulary has predicates only.  
    (vi) Merge the vocabularies at this point for every model in the training and candidate models: i.e., ensure that 
    every relation is defined and be evaluated on every model.  
    (vii) Perform a 'closure' on the predicates of the new merged vocabulary for each model: i.e., for every possible 
    entry not present in a relation, assert that it does not belong to the relation (closed-world assumption).

    Refer to the package description to understand more about the inputs and outputs are structured.    
    """
    # Cut down extraneous entries and make labels into unary functions
    transformed_training_dicts = [_transform_dict(training_dict) for training_dict in training_dicts_raw]
    transformed_candidate_dicts = [_transform_dict(candidate_dict) for candidate_dict in candidate_dicts_raw]
    # Merge vocabularies
    sorts = set()
    predicates = {}
    guard_predicates = {}
    for model_dict in transformed_training_dicts + transformed_candidate_dicts:
        sorts = sorts | model_dict['sorts']
        predicates = {**predicates, **model_dict['predicates']}
        guard_predicates = {**guard_predicates, **model_dict['guard_predicates']}
        del model_dict['guard_predicates']
    # Update model vocabularies
    final_training_dicts = [{**training_dict, 'predicates': predicates} for training_dict in
                            transformed_training_dicts]
    final_candidate_dicts = [{**candidate_dict, 'predicates': predicates} for candidate_dict in
                             transformed_candidate_dicts]
    # Compute a full guarded vocabulary triple
    guarded_vocabulary_triple = (sorts, predicates, guard_predicates)
    return final_training_dicts, final_candidate_dicts, guarded_vocabulary_triple


def _transform_dict(model_dict):
    sorts = set(model_dict.get('sorts', None))
    elements = model_dict.get('elements', None)
    predicates = model_dict.get('predicates', None)
    interpretation = model_dict.get('interpretation', None)

    new_dict = {}
    # Sorts: remove anything that's not an object sort
    new_sorts = {old_sort for old_sort in sorts if old_sort.lower() == 'object'}
    if len(new_sorts) != 1:
        raise ValueError('Must have a unique sort called object or Object')
    new_dict['sorts'] = new_sorts
    # Elements: remove elements for all removed sorts. Extract labels in particular.
    guard_predicate_names = set(elements.pop('label', None))
    new_elements = {key: elements[key] for key in elements.keys() if key in new_sorts}
    new_dict['elements'] = new_elements
    # Guard predicates: new attribute consisting of elements from the earlier sort of labels
    guard_predicates = {guard_predicate_name: tuple([list(new_sorts)[0]])
                        for guard_predicate_name in guard_predicate_names}
    new_dict['guard_predicates'] = guard_predicates
    # Remove 'has_label' and other predicates whose sorts are no longer included.
    predicates = {predicate_name: signature for predicate_name, signature in predicates.items()
                  if all([fosort in new_sorts for fosort in signature])}
    # Add guard predicates to set of all predicates.
    new_predicates = {**predicates, **guard_predicates}
    new_dict['predicates'] = new_predicates
    # Change interpretation to remove 'has_label' and other predicates that are not in new_predicates
    label_interpretation = interpretation.pop('has_label', None)
    interpretation = {predicate_name: interp for predicate_name, interp in interpretation.items()
                      if predicate_name in new_predicates.keys()}
    label_interpretation = [tuple(entry) for entry in label_interpretation]
    # Add interpretations for newly added unary label predicates based on old label interpretations
    new_label_interpretations = {}
    for guard_predicate in guard_predicate_names:
        new_label_interpretations[guard_predicate] = [[entry[0]] for entry in label_interpretation if
                                                      entry[1] == guard_predicate]
    new_interpretation = {**interpretation, **new_label_interpretations}
    new_dict['interpretation'] = new_interpretation

    # Overwrite the relevant entries of model_dict with new_dict
    model_dict = {**model_dict, **new_dict}
    return model_dict
