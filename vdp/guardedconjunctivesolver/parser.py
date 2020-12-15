"""
Argument parser for configuring the GuardedConjunctiveSolver solver.  

Every parser module in a solver package must define an attribute 'argparser' containing the argument parser 
for the containing solver package.  
Refer the package description to learn more about the role of this module.  
"""

import argparse

argparser = argparse.ArgumentParser(prog='guardedconjunctivesolver/solve_puzzle', 
                                    description='Help for solver that searches guarded conjunctive prenex formulas.')

# Arguments for formula shape
argparser.add_argument('num_vars', type=int, metavar='N', help='Number of quantifiers')
argparser.add_argument('-C', '--num-conjuncts', type=int, dest='num_conjuncts', 
                       help='Maximum number of conjuncts in the matrix')

# Arguments for specifying parts of the formula
# Quantifiers
quantifier_group = argparser.add_mutually_exclusive_group()
quantifier_group.add_argument('--e', '--E', '--existential-only', action='store_true', dest='existential_only', 
                              help='Force all quantifiers to be existential.')
quantifier_group.add_argument('--a', '--A', '--universal-only', action='store_true', dest='universal_only', 
                              help='Force all quantifiers to be universal.')
quantifier_group.add_argument('--quantfier-shape', type=lambda shp: all(s in ['a', 'e', 'A', 'E'] for s in shp), 
                              dest='quantifier_shape', 
                              help='Specify the quantifiers in order using a or A for universal, e or E for '
                                   'existential. Number of letters must be at most the '
                                   'number of quantifiers (N). Example: --quantifier-shape aeae')

# Arguments for choosing specific semantics of the discriminator
# argparser.add_argument('--no-vacuity', action='store_true', dest='no_vacuity', 
#                        help=' [Experts only] Do not choose formulae that '
#                             'satisfy the dsicriminator constraints vacuously')
