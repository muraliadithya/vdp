"""
Argument parser for configuring the GuardedConjunctiveSolver solver.  

Every parser module in a solver package must define an attribute 'argparser' containing the argument parser 
for the containing solver package.  
Refer the package description to learn more about the role of this module.  
"""

import argparse

import utils.argparse_extend as argparse_extend

argparser = argparse.ArgumentParser(prog='guardedconjunctivesolver/solve_puzzle', 
                                    description='Help for solver that searches guarded conjunctive prenex formulas.')

# Arguments for formula shape
argparser.add_argument('num_vars', type=int, metavar='N', help='Number of quantifiers')
argparser.add_argument('-C', '--num-conjuncts', type=int, dest='num_conjuncts', 
                       default=None, 
                       help='Maximum number of conjuncts in the matrix')

# Arguments for specifying parts of the formula
# Quantifiers
quantifier_group = argparser.add_mutually_exclusive_group()
quantifier_group.add_argument('-E', '--existential-only', action='store_false', dest='quantifier_shape', 
                              default=None, 
                              help='Force all quantifiers to be existential.')
quantifier_group.add_argument('-A', '--universal-only', action='store_true', dest='quantifier_shape', 
                              default=None, 
                              help='Force all quantifiers to be universal.')
quantifier_group.add_argument('--quantifier-shape', type=lambda shp: all(s in ['a', 'e', '?'] for s in shp), 
                              dest='quantifier_shape', 
                              default=None, 
                              help='Specify the quantifiers from outermost to innermost (left to right) as a string'
                                   ' using `a` for universal, `e` for existential, and `?` to indicate either. '
                                   'For strings that are too long, the first num_vars (N) '
                                   'letters are used. Example: --quantifier-shape ae?ae')

# Arguments for choosing specific semantics of the discriminator
argparser.add_argument('--no-vacuity', action='store_true', dest='no_vacuity', 
                       default=True, 
                       help=' [Experts only] Do not choose formulae that '
                            'satisfy the dsicriminator constraints vacuously')

# Arguments for number of discriminator
argparser.add_argument('-N', '--num-discriminators', type=int, dest='num_discriminators', default=1, 
                       help='Find multiple discriminators')


# Put positionals at the beginning of usage text for clarity
argparse_extend.positionals_beginning_usage_text(argparser)
