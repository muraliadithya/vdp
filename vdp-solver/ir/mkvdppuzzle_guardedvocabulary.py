"""
Module for creating a VDPPuzzle object over a guarded vocabulary (refer vdp.vocabulary.GuardedVocabulary).  

Refer to the package description to learn more about the role of this module.  
"""
import itertools
import copy

from vdp.vocabulary import FOSort, FOFunction, GuardedVocabulary
from vdp.fomodel import FOElement, FOModel
from vdp.vdppuzzle import VDPPuzzle


def mk_vdppuzzle(training_model_dicts, candidate_model_dicts, guarded_vocabulary, ir_args):
    """
    Creates a VDPPuzzle object in the obvious way from given 'clean' normalised training and candidate models over a 
    common vocabulary given by the guarded_vocabulary parameter.  
    The parameter guarded_vocablary is expected to be a triple consisting of all the sorts in the vocabulary, the 
    predicates in the vocabulary and their signatures, and those predicates among all predicates that are allowed to 
    appear as guards.  
    """
    # Maintain a symbol table to keep track of items declared already
    symbol_table = {}
    # Construct the vocabulary object
    guarded_vocabulary_object = _mk_guarded_vocabulary_object(symbol_table, guarded_vocabulary)
    # Cache symbol table for later usage since vocabulary is common
    basic_symbol_table_cache = copy.deepcopy(symbol_table)
    # Make FOModel objects with total interpretations
    training_models = []
    for training_model_dict in training_model_dicts:
        training_model = _mk_fomodel_object(symbol_table, guarded_vocabulary_object, training_model_dict)
        training_models = training_models + [training_model]
        symbol_table = copy.deepcopy(basic_symbol_table_cache)
    candidate_models = []
    for candidate_model_dict in candidate_model_dicts:
        candidate_model = _mk_fomodel_object(symbol_table, guarded_vocabulary_object, candidate_model_dict)
        candidate_models = candidate_models + [candidate_model]
        symbol_table = copy.deepcopy(basic_symbol_table_cache)
    # Make the vdp puzzle object
    vdp_puzzle = VDPPuzzle(guarded_vocabulary_object, training_models, candidate_models)
    if ir_args.puzzlename is None:
        puzzlename = ir_args.puzzle_folder_path
    else:
        puzzlename = ir_args.puzzlename
    vdp_puzzle.puzzle_name = puzzlename
    return vdp_puzzle


def _new_entry(symboldict, key, value):
    val = symboldict.get(key, None)
    if val is not None:
        raise ValueError('Conflicting name {} found. Each symbol must have a distinct name regardless of its type.'.format(key))
    symboldict[key] = value


def _mk_guarded_vocabulary_object(symbol_table, guarded_vocabulary):
    # Encode the vocabulary
    fosorts, forelations, guard_forelations = guarded_vocabulary
    # Create the set of sort objects
    fo_sorts = set()
    for fosort in fosorts:
        fo_sort = FOSort(fosort)
        _new_entry(symbol_table, fosort, fo_sort)
        fo_sorts = fo_sorts | {fo_sort}
    # Boolean sort for defining predicates
    vdpbool = FOSort('Bool')
    # Create the set of function symbol objects
    fo_relations = set()
    for forelation, fosignature in forelations.items():
        fo_signature = tuple([*[symbol_table[fosort] for fosort in fosignature], vdpbool])
        fo_relation = FOFunction(forelation, fo_signature)
        _new_entry(symbol_table, forelation, fo_relation)
        fo_relations = fo_relations | {fo_relation}
    # Create the set of guard relation objects
    guard_fo_relations = {symbol_table[guard_forelation] for guard_forelation in guard_forelations}
    # Create the GuardedVocabulary object
    guarded_vocabulary_object = GuardedVocabulary(fo_sorts, fo_relations, guard_fo_relations)
    return guarded_vocabulary_object


def _mk_fomodel_object(symbol_table, vocabulary, model_dict):
    # Create the elements
    elements = model_dict['elements']
    fo_element_dict = {}
    for fosort, foelements in elements.items():
        fo_sort = symbol_table[fosort]
        fo_elements = []
        for foelement in foelements:
            fo_element = FOElement(foelement, fo_sort)
            _new_entry(symbol_table, foelement, fo_element)
            fo_elements = fo_elements + [fo_element]
        fo_element_dict[fo_sort] = fo_elements
    # Create the partial interpretation as given in the model_dict
    interpretation = model_dict['interpretation']
    fo_interpretation = {}
    # Populate the basic structure of an empty interpretation
    for forelation in vocabulary.fofunctions:
        fo_interpretation[forelation] = {}
    # Populate interpretation entries available in the model_dict
    for forelation, rel_interpretation in interpretation.items():
        fo_relation = symbol_table[forelation]
        args = [tuple([symbol_table[component] for component in entry]) for entry in rel_interpretation]
        fo_rel_interpretation = {arg: True for arg in args}
        fo_interpretation[fo_relation] = fo_rel_interpretation
    fo_model = FOModel(vocabulary, fo_element_dict, fo_interpretation)
    fo_model.model_name = model_dict.get('model_name', '')
    # Complete the interpretation
    # NOTE: Can only handle predicates
    complete_fo_model = _autocomplete_interpretation(fo_model)
    return complete_fo_model


def _autocomplete_interpretation(fo_model):
    new_interpretation = {}

    vocabulary = fo_model.get_vocabulary()
    elements = fo_model._get_elements()
    interpretation = fo_model._get_interpretation()

    forelations = vocabulary.fofunctions
    for forelation in forelations:
        arg_signature = forelation.get_function_symbol_signature()[:-1]
        arg_space = [elements[fosort_component] for fosort_component in arg_signature]
        args = itertools.product(*arg_space)
        rel_interpretation = interpretation[forelation]
        new_rel_interpretation = {arg: False if arg not in rel_interpretation.keys() else rel_interpretation[arg]
                                  for arg in args}
        new_interpretation[forelation] = new_rel_interpretation
    fo_model._set_interpretation(new_interpretation)
    return fo_model
