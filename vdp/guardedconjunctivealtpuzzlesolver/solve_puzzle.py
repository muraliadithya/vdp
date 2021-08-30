"""
Primary module of the GuardedConjunctiveAltpuzzleSolver package.  
The implementation is almost entirely a repetition of vdp.guardedconjunctivesolver.solve_puzzle except for the 
addition of a few extra options.  

Every solve_puzzle module must define a solve_puzzle function that searches for the solution to a given VDP puzzle in 
the class defined by the <package>.formula module.  
Refer the package description to learn more about the role of this module.  
"""

from vdp.guardedconjunctivealtpuzzlesolver.guardedconjunctivealtpuzzlesolver import GuardedConjunctiveAltpuzzleSolver


def solve_puzzle(vdp_puzzle, solver_args):
    # Extract args from solver_args parameter and configure solver appropriately
    num_vars = solver_args.num_vars
    solver = GuardedConjunctiveAltpuzzleSolver(num_vars=num_vars)
    solver.options = dict()
    # Type of puzzle
    solver.options['puzzle_type'] = solver_args.puzzle_type
    # Number of conjuncts in the matrix
    num_conjuncts_bound = solver_args.num_conjuncts
    if num_conjuncts_bound is not None:
        solver.options['num_conjuncts_bound'] = num_conjuncts_bound
    # Quantifier shape
    if solver_args.existential_only:
        solver.options['quantifier_shape'] = 'e' * num_vars
    elif solver_args.universal_only:
        solver.options['quantifier_shape'] = 'a' * num_vars
    elif solver_args.quantifier_shape is not None:
        solver.options['quantifier_shape'] = solver_args.quantifier_shape
    # Vcauity
    no_vacuity = solver_args.no_vacuity
    if no_vacuity:
        solver.options['no_vacuity'] = True
    # Number of discriminators
    solver.options['num_discriminators'] = solver_args.num_discriminators

    # Solve puzzle
    solver.solve(vdp_puzzle)
