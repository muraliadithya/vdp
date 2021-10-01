"""
Primary module of the GuardedConjunctiveSolver package.  
Interprets the arguments given to the parser in guardedconjunctivesolver.parser to initialise the solver class in 
guardedconjunctivesolver.guardedconjunctivesolver.GuardedConjunctiveSolver with the appropriate options.  

Every solve_puzzle module must define a solve_puzzle function that searches for the solution to a given VDP puzzle in 
the class defined by the <package>.formula module.  
Refer the package description to learn more about the role of this module.  
"""

from vdp.guardedconjunctivesolver.guardedconjunctivesolver import GuardedConjunctiveSolver


def solve_puzzle(vdp_puzzle, solver_args):
    SolverClass = GuardedConjunctiveSolver
    _solve_puzzle_aux(vdp_puzzle, SolverClass, solver_args)


def _solve_puzzle_aux(vdp_puzzle, SolverClass, solver_args):
    # Declare solver variable
    solver = None
    # Extract args from solver_args parameter and configure solver appropriately
    size = [int(x) for x in solver_args.size[0].strip().split()]
    num_vars_bound = size[0]
    # Maximum number of conjuncts in the matrix
    if len(size) == 1:
        num_conjuncts_bound = None
    else:
        num_conjuncts_bound = size[1]
    # Autotuning
    if solver_args.autotune:
        # Start with one variable
        curr_num_vars = 1
    else:
        # No autotuning. Stick with given number of quantifiers.
        curr_num_vars = num_vars_bound

    # PHASE 1: find the minimum quantifier size within restrictions
    solutions = []
    while curr_num_vars <= num_vars_bound and not solutions:
        solver = SolverClass(num_vars=curr_num_vars)
        # Enforce conjuncts bound at curr_num_vars == num_vars
        if curr_num_vars == num_vars_bound and num_conjuncts_bound is not None:
            solver.options['num_conjuncts_bound'] = num_conjuncts_bound
        # Quantifier pattern
        if solver_args.existential_only:
            solver.options['quantifier_pattern'] = 'e' * curr_num_vars
        elif solver_args.universal_only:
            solver.options['quantifier_pattern'] = 'a' * curr_num_vars
        elif solver_args.quantifier_pattern is not None:
            # Pick the innermost curr_num_vars number of quantifier pattern specifiers
            solver.options['quantifier_pattern'] = solver_args.quantifier_pattern[-curr_num_vars:]
        # Vacuity
        no_vacuity = solver_args.no_vacuity
        if no_vacuity:
            solver.options['no_vacuity'] = True
        # Number of solutions only required for specification in PHASE 3

        # Solve puzzle
        solutions = solver.solve(vdp_puzzle)
        # Increment loop counter
        curr_num_vars = curr_num_vars + 1
    # PHASE 1 OVER: number of quantifiers found
    # Adjust curr_num_vars to the correct value (the last iteration would have incremented the correct value by 1)
    curr_num_vars = curr_num_vars - 1

    # Exit if PHASE 1 did not find a solution
    if not solutions:
        print('No discriminator found for puzzle {}.'.format(vdp_puzzle.puzzle_name))
        exit(0)

    # PHASE 2: Find the least complex nesting of quantifiers: outer and universal quantification is more complex.
    # Guaranteed to terminate since PHASE 1 found a solution.
    # Perform PHASE 2 only if the pattern has not already been enforced.
    if solver.options.get('quantifier_pattern', None) is None:
        solutions = []
        quantifier_pattern_number = 0
        while not solutions:
            quantifier_pattern = bin(quantifier_pattern_number)[2:]
            solver.options['quantifier_pattern'] = 'e' * (curr_num_vars - len(quantifier_pattern)) + \
                                                   ''.join(['e' if pat == '0' else 'a' for pat in quantifier_pattern])
            solutions = solver.solve(vdp_puzzle)
            quantifier_pattern_number = quantifier_pattern_number + 1
        # Adjust quantifier_pattern_number to the correct value
        quantifier_pattern_number = quantifier_pattern_number - 1
    # PHASE 2 OVER: least complex quantifier pattern found

    # PHASE 3: Minimise the number of conjuncts
    # Guaranteed to terminate since PHASE 1 found a solution.
    num_conjuncts = 0
    solutions = []
    while not solutions:
        solver.options['num_conjuncts_bound'] = num_conjuncts
        # Number of discriminators
        if solver_args.uniqueness_check:
            # Need to check if the chosen candidate is unique in the top 100 discriminators
            solver.options['num_discriminators'] = 100
        else:
            solver.options['num_discriminators'] = solver_args.num_discriminators
        solutions = solver.solve(vdp_puzzle)
        num_conjuncts = num_conjuncts + 1
    # Adjust num_conjuncts to the correct value
    num_conjuncts = num_conjuncts - 1

    # Final and minimised solutions found within given formula size bounds
    # Handle uniqueness check if solver_args.uniqueness_check
    is_unique = None
    if solver_args.uniqueness_check:
        is_unique = len(set(candidate_id for candidate_id, _, _ in solutions)) == 1
        solutions = [solutions[0]]
    for solution in solutions:
        candidate_id, discriminant, model_name = solution
        print('Candidate: {}\nConcept: {}\nCandidate Name: {}\n'.format(candidate_id, discriminant, model_name))
    if solver_args.uniqueness_check:
        print(f'Uniqueness check for candidate in top 100 solutions: {str(is_unique)}')
