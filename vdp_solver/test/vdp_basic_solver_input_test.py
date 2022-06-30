import unittest

# Test to call the basic solver with an example puzzle defined in test/vdppuzzle_example
# Used to check the solver for simple bugs

from vdp.vocabulary import Vocabulary
from vdp.vdppuzzle import VDPPuzzle
from vdp.basicsolver.basicsolver import *
from test.vdppuzzle_example import vdppuzzle_example


class VDPBasicSolverInputTest(unittest.TestCase):
    def setUp(self):
        self.longMessage = True
        # Create new VDPPuzzle object with a non-guarded vocabulary
        guarded_vocabulary = vdppuzzle_example.get_vocabulary()
        all_fofunctions = guarded_vocabulary.fofunctions
        new_vocabulary = Vocabulary(guarded_vocabulary.fosorts, all_fofunctions)

        training_models = vdppuzzle_example.get_training_models()
        new_training_models = []
        for training_model in training_models:
            new_training_model = copy.deepcopy(training_model)
            new_training_model._set_vocabulary(new_vocabulary)
            new_training_models = new_training_models + [new_training_model]

        candidate_models = vdppuzzle_example.get_candidate_models()
        new_candidate_models = []
        for candidate_model in candidate_models:
            new_candidate_model = copy.deepcopy(candidate_model)
            new_candidate_model._set_vocabulary(new_vocabulary)
            new_candidate_models = new_candidate_models + [new_candidate_model]

        self.vdp_puzzle = VDPPuzzle(new_vocabulary, new_training_models, new_candidate_models)

    # Tests for solver outputs with various constraints and configurations

    def test_no_frills_solution(self):
        solver = BasicSolver(num_vars=2)
        solver.solve(vdppuzzle=self.vdp_puzzle)
        self.assertTrue(True)


if __name__ == '__main__':
    unittest.main()
