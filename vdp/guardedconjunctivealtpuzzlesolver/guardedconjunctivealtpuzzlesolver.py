from z3 import *

import vdp.exceptions
from vdp.guardedconjunctivesolver.guardedconjunctivesolver import GuardedConjunctiveSolver
from vdp.guardedconjunctivesolver.formula import Formula


class GuardedConjunctiveAltpuzzleSolver(GuardedConjunctiveSolver):
    """
    Guarded conjunctive solver for alternate types of puzzles other than VDP. The implementation piggybacks on the 
    implementation of vdp.guardedconjunctivesolver.guardedconjunctivesolver.GuardedConjunctiveSolver, and only changes
    the puzzle specification.
    The discriminator class is directly imported from vdp.guardedconjunctivesolver.formula
    """

    def solve(self, vdppuzzle):
        """
        This represents the core functionality of the solver class. It takes a VDPPuzzle object and finds a
        discriminator in the hypothesis class represented by the solver.
        """

        # Call auxiliary function to extract relations, guards, etc for the guarded fragment
        quantified_sort, forelations, guard_forelations = self._process_vocabulary(vdppuzzle)
        # Initialise the formula representation class.
        sol = Solver()
        discriminator = Formula()
        repr_constraints = discriminator.initialise(self.num_quantified_vars, quantified_sort, forelations, guard_forelations, self.options)
        sol.add(repr_constraints)

        # Add the SMT constraints for each model.
        # All training models must satisfy the discriminator.
        training_models = vdppuzzle.get_training_models()
        training_model_constraints = [discriminator.satisfaction_constraint(model) for model in training_models]
        # candidate_models = vdppuzzle.get_candidate_models()
        # candidate_model_constraints = [discriminator.satisfaction_constraint(model) for model in candidate_models]
        indicator_vars = None
        puzzle_type = self.options.get('puzzle_type', 'oddone') # Needs to be changed to have no default once the solve_puzzle module can set this option
        if puzzle_type == 'oddone':
            # Pick the odd one out from among the training models
            # Find a formula that fits all models except for one
            num_candidates = len(training_models)
            indicator_vars = Bools(names=['c{}'.format(str(i)) for i in range(num_candidates)])
            # One and only one candidate can be chosen.
            sol.add(Or(indicator_vars))
            sol.add(And([Not(And(indicator_vars[i], indicator_vars[j]))
                         for i in range(num_candidates) for j in range(num_candidates)
                         if i < j]))
            # A candidate is chosen if it's different from all the others
            for i in range(num_candidates):
                pos_constraint, neg_constraint = training_model_constraints[i]
                # If the indicator variable is false then the models satisfies the formula, otherwise falsifies it
                sol.add(If(indicator_vars[i], neg_constraint, pos_constraint))
        else:
            vdp.exceptions.NonsenseSolverConfigurationError(f'Unsupported puzzle type {puzzle_type}')

        # Ask for discrimination for as many times as required.
        num_discriminators = self.options.get('num_discriminators', 1)
        previous_solution_constraints = []
        sol_number = 0
        list_of_solutions = []
        while sol_number < num_discriminators:
            # Add constraints about not giving any previous solutions
            # TODO (medium-low): Earlier constraints already present. Only add the last one.
            sol.add(previous_solution_constraints)
            soluble = sol.check()
            if soluble == z3.unsat:
                return list_of_solutions
                # raise vdpexceptions.MalformedPuzzleException("The given puzzle could not be solved by this solver.")
            smt_model = sol.model()
            # Add a constraint negating the given solution for the next round
            # Only boolean variables to negate
            previous_solution_constraints.append(Not(discriminator.valuation_as_formula(smt_model)))
            discriminant = discriminator.pretty(smt_model)
            candidate = next((indicator_var for indicator_var in indicator_vars
                              if smt_model.eval(indicator_var, model_completion=True)), None)
            candidate_number = int(candidate.sexpr()[1])
            list_of_solutions.append((candidate.sexpr(), discriminant, training_models[candidate_number].model_name))
            sol_number = sol_number + 1
        return list_of_solutions
