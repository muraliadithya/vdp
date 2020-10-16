import unittest

# Test to call the basic solver with an example puzzle defined in test/vdppuzzle_example
# Used to check the solver for simple bugs

from vdp.basicsolver.basicsolver import *
from test.vdppuzzle_example import vdppuzzle_example


class VDPBasicSolverInputTest(unittest.TestCase):
    def setUp(self):
        self.longMessage = True

    # Tests for solver outputs with various constraints and configurations

    def test_no_frills_solution(self):
        solver = BasicSolver(num_vars=2)
        solver.solve(vdppuzzle=vdppuzzle_example)
        self.assertTrue(True)


if __name__ == '__main__':
    unittest.main()
