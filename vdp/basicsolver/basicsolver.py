from z3 import *
from vdp.vocabulary import FOSort
import vdp.exceptions as vdpexceptions
from vdp.basicsolver.formula import Formula


class BasicSolver:
    """
    This is a restricted solver that looks for an FO formula in prenex form quantifying over a single sort. Usually
    this is a special sort called 'Object'. The matrix is a conjunction of relations and the number of quantifiers is
    predetermined. The number of conjunctions is arbitrary and cannot be specified. There are no constants
    in the formula.
    """

    def __init__(self, num_vars=1):
        if num_vars is None or num_vars <= 0:
            raise vdpexceptions.NonsenseSolverConfigurationError("Number of quantified variables must be a positive "
                                                                 "integer but was {} instead.".format(str(num_vars)))
        self.num_quantified_vars = num_vars
        self.options = {}

    # Setter methods for solver attributes
    def _set_num_vars(self, num_vars):
        self.num_quantified_vars = num_vars

    def set_options(self, constraint_type, constraint_value):
        """
        This is a generic function that adds to a dictionary of options. The key is a string representing the type
        of constraint and the value is any value.
        The option type and values are interpreted by the particular solver class implementation.
        """
        self.options[constraint_type] = constraint_value

    def solve(self, vdppuzzle):
        """
        This represents the core functionality of the solver class. It takes a VDPPuzzle object and finds a
        discriminator in the hypothesis class represented by the solver.
        """
        # Throws exception if puzzle cannot be normalised. Returns the normalised puzzle otherwise.
        # Disabling normalisation in favour of shifting the task to the ir package
        # vdppuzzle = _normalise_puzzle(vdppuzzle)
        vocabulary = vdppuzzle.get_vocabulary()
        fosorts, fofunctions = vocabulary.fosorts, vocabulary.fofunctions
        # Determine the sort to quantify over.
        quantified_sort = self.options.get('quantified_sort', None)
        # The quantified sort has to be one among fosorts
        if quantified_sort is None or quantified_sort not in fosorts:
            quantified_sort = _determine_quantified_sort(fosorts)
        # Filter all the relations with arguments only from the quantified sort
        forelations = _filter_relevant_relations(fofunctions, quantified_sort)
        # Initialise the formula representation class.
        ctx = Context()
        sol = Solver(ctx=ctx)
        discriminator = Formula(ctx)
        repr_constraints = discriminator.initialise(self.num_quantified_vars, quantified_sort, forelations, {})
        sol.add(repr_constraints)
        # Add the SMT constraints for each model.
        # All training models must satisfy the discriminator.
        training_models = vdppuzzle.get_training_models()
        for training_model in training_models:
            constraint = discriminator.satisfaction_constraint(training_model)
            sol.add(constraint)
        candidate_models = vdppuzzle.get_candidate_models()
        num_candidates = len(candidate_models)
        candidate_vars = Bools(names=['c{}'.format(str(i)) for i in range(num_candidates)], ctx=ctx)
        # One and only one candidate can be chosen.
        sol.add(Or([candidate_var for candidate_var in candidate_vars]))
        sol.add(And([Not(And(candidate_vars[i], candidate_vars[j]))
                     for i in range(num_candidates) for j in range(num_candidates) if i != j]))
        # A candidate is chosen if and only if it satisfies the discriminator.
        for i in range(num_candidates):
            constraint = discriminator.satisfaction_constraint(candidate_models[i])
            sol.add(candidate_vars[i] == constraint)
        # Ask for discrimination.
        soluble = sol.check()
        if soluble == z3.unsat:
            print('No discriminator found for puzzle {}.'.format(vdppuzzle.puzzle_name))
            exit(0)
            # raise vdpexceptions.MalformedPuzzleException("The given puzzle could not be solved by this solver.")
        smt_model = sol.model()
        discriminant = discriminator.pretty(smt_model)
        candidate = next((candidate_var for candidate_var in candidate_vars if smt_model.eval(candidate_var)), None)
        print('Candidate: {}\nConcept: {}\n'.format(candidate.sexpr(), discriminant))


# Some functions that are used in the body of the VDPBasicConjunctiveSolver class.
# Function to sanitise the given puzzle.
def _normalise_puzzle(vdppuzzle):
    """
    This is a generic function that takes a vdppuzzle and 'normalises' it.
    Current choice: no normalisation. Take the vocabulary across models and check that they're the same. Returns: bool
    """
    # NOTE: Other choices: (i) union of vocabulary + extending missing interpretations (ii) intersection of
    # vocabulary + restricting interpretations. These choices would return a new normalised puzzle.

    training_models = vdppuzzle.get_training_models()
    candidate_models = vdppuzzle.get_candidate_models()
    if not training_models:
        # training_models is an empty set/list
        raise vdpexceptions.MalformedPuzzleException("The set of training models is empty.")
    if not candidate_models:
        # candidate_models is an empty set/list
        raise vdpexceptions.MalformedPuzzleException("The set of candidate models is empty.")

    vocabulary = training_models[0].get_vocabulary()
    for model in training_models + candidate_models:
        if vocabulary != model.get_vocabulary():
            raise vdpexceptions.MalformedPuzzleException("Vocabulary must be the same across all training and "
                                                         "candidate models.")
    return vdppuzzle


# Function to determine the quantified sort in the discriminator formula.
def _determine_quantified_sort(fosorts):
    # Check if there is a special sort named 'Object'.
    quantified_sort = next((fosort for fosort in fosorts if fosort.get_name() == 'Object'), None)
    if quantified_sort is None:
        # Check if there is only one sort.
        if len(fosorts) == 1:
            # Quantified sort must be the only sort given.
            quantified_sort, *_ = fosorts
        else:
            raise vdpexceptions.NonsenseSolverConfigurationError("Cannot determine a sort to quantify over.")
    return quantified_sort


# Function to construct the set of relations that will make up the matrix of the discriminator.
def _filter_relevant_relations(fofunctions, quantified_sort):
    forelations = set()
    for fofunction in fofunctions:
        signature = fofunction.get_function_symbol_signature()
        input_signature = signature[:-1]
        output_signature = signature[-1]
        # Inputs must all be of sort quantified_sort
        input_signature_check = ((quantified_sort,) * len(input_signature) == input_signature)
        # Output must be Bool
        output_signature_check = (output_signature == FOSort('Bool'))
        if input_signature_check and output_signature_check:
            forelations = forelations | {fofunction}
    return forelations

