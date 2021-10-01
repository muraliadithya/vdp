"""
Argument parser for configuring the GuardedConjunctiveAltpuzzleSolver solver.  
Essentially extends the parser from the vdp.guardedconjunctivesolver package.  

Every parser module in a solver package must define an attribute 'argparser' containing the argument parser 
for the containing solver package.  
Refer the package description to learn more about the role of this module.  
"""

import argparse

from vdp.guardedconjunctivesolver.parser import argparser as argparser_GuardedConjunctiveSolver

argparser = argparser_GuardedConjunctiveSolver

# Arguments for puzzle type
# Currently unsupported by solve_puzzle module since it needs refactoring.
# argparser.add_argument('puzzle_type', choices=['oddone',
#                                                # 'cleave'
#                                                ],
#                        help='Type of puzzle')
