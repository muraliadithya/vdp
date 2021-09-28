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
# Helper function for detecting valid quantifier_shape arguments
def quantifier_pattern(pat):
    if not all(s in ['a', 'e', '?'] for s in pat):
        raise argparse.ArgumentTypeError('quantifier_pattern must be a string containing only '
                                         'a (forall), e (exists), or ? (any)')
    return pat


quantifier_group = argparser.add_mutually_exclusive_group()
quantifier_group.add_argument('-E', '--existential-only', action='store_true', dest='existential_only',
                              help='Force all quantifiers to be existential.')
quantifier_group.add_argument('-A', '--universal-only', action='store_true', dest='universal_only',
                              help='Force all quantifiers to be universal.')
quantifier_group.add_argument('--quantifier-pattern', type=quantifier_pattern, dest='quantifier_pattern', metavar='pat',
                              default=None,
                              help='Enforce quantification pattern from outermost to innermost (left to right) as a '
                                   'string using `a` for universal, `e` for existential, and `?` to indicate either. '
                                   'For strings that are too long, the first q letters are used. '
                                   'Example: --quantifier-shape ae?ae.')

# Arguments for search attributes
search_attributes = argparser.add_mutually_exclusive_group()
search_attributes.add_argument('-N', '--num-discriminators', type=int, dest='num_discriminators', metavar='n',
                               default=1,
                               help='Find multiple discriminators')
search_attributes.add_argument('--autotune', action='store_true', dest='autotune',
                               help='Search for the simplest discriminator with at most q quantifiers '
                                    ', c conjuncts (if given), and pattern pat (if given).')

# Arguments for choosing specific semantics of the discriminator
argparser.add_argument('--no-vacuity', action='store_true', dest='no_vacuity',
                       default=True,
                       help=' [Experts only] Do not choose formulae that '
                            'satisfy the dsicriminator constraints vacuously')


# Put positionals at the beginning of usage text for clarity
argparse_extend.positionals_beginning_usage_text(argparser)
