"""
Primary module of the GuardedConjunctiveAltpuzzleSolver package.  
The implementation is almost entirely a repetition of vdp.guardedconjunctivesolver.solve_puzzle except for the 
addition of a few extra options.  

Every solve_puzzle module must define a solve_puzzle function that searches for the solution to a given VDP puzzle in 
the class defined by the <package>.formula module.  
Refer the package description to learn more about the role of this module.  
"""

from vdp.guardedconjunctivealtpuzzlesolver.guardedconjunctivealtpuzzlesolver import GuardedConjunctiveAltpuzzleSolver
from vdp.guardedconjunctivesolver.solve_puzzle import _solve_puzzle_aux


def solve_puzzle(vdp_puzzle, solver_args):
    SolverClass = GuardedConjunctiveAltpuzzleSolver
    _solve_puzzle_aux(vdp_puzzle, SolverClass, solver_args)
