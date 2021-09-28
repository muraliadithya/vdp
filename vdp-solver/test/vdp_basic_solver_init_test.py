import unittest

# Test to initialise a solver with dummy values.
# Used to check that the solver is accessible through the package structure.

from vdp.basicsolver.basicsolver import *
from vdp.exceptions import NonsenseSolverConfigurationError


class VDPBasicSolverInitTest(unittest.TestCase):
    def setUp(self):
        self.longMessage = True

    # Tests for solver initialisation with various configurations

    def test_dummy_init(self):
        try:
            solver = BasicSolver()
        except Exception:
            self.assertTrue(False)

    def test_dummy_wrong_init(self):
        with self.assertRaises(NonsenseSolverConfigurationError):
            solver = BasicSolver(None)


if __name__ == '__main__':
    unittest.main()
