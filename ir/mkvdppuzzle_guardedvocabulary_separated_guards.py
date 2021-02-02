"""
Module for creating a VDPPuzzle object over a guarded vocabulary (refer vdp.vocabulary.GuardedVocabulary).  

Refer to the package description to learn more about the role of this module.  

This module extends the behaviour of the basic puzzle maker in ir.mkvdppuzzle_guardedvocabulary by 
separating removing the guard functions from the predicates. This allows for the guards to only be used as 
such and not appear in the body of the formula.  
"""

# This module is being extended in the current file.
import ir.mkvdppuzzle_guardedvocabulary as puzzle_maker


def mk_vdppuzzle(training_model_dicts, candidate_model_dicts, guarded_vocabulary, ir_args):
    """
    Modified vdp puzzle maker.  
    """
    vdp_puzzle = puzzle_maker.mk_vdppuzzle(training_model_dicts, candidate_model_dicts, guarded_vocabulary, ir_args)
    # Extract the vocabulary from the puzzle
    vocabulary_object = vdp_puzzle.get_vocabulary()
    # Modify it so the guards are disjoint from other predicates.
    vocabulary_object.fofunctions = vocabulary_object.fofunctions - vocabulary_object.guard_fofunctions
    # Updating the object should update the vocabulary in the puzzle as well as in all the models. 
    # Simply return the puzzle object.
    return vdp_puzzle
