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
    # NOTE: This is a violation of the way in which a GuardedVocabularyObject is meant to be structured. 
    # guard_fofunctions must be a subset of all fofunctions. The hack works because the solver class treats the 
    # two variables separately. This is a very brittle hack and must be changed immediately.
    # TODO (very high): fix hack by changing GuardedVocabulary object to have a 'non-guard' functions field. This 
    #  can then be used to separate predicates into those appearing in the matrix and appearing in the guards, with 
    #  scope for overlap between the two.
    vocabulary_object.fofunctions = vocabulary_object.fofunctions - vocabulary_object.guard_fofunctions
    # Updating the object should update the vocabulary in the puzzle as well as in all the models. 
    # Simply return the puzzle object.
    return vdp_puzzle
