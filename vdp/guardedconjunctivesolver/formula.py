import itertools
from z3 import *

import vdp.exceptions as vdpexceptions


class Formula:
    """
    This class defines a 'formula representation' in SMT for the associated solver class. The intended meaning of
    said representation is a formula belonging to the hypothesis class defined by the associated solver. Each instance
    of this class represents a single formula.

    It implements the following features:
    (1) Given a solver configuration, initialise SMT variables that correspond to a formula.
    (2) Given an FO model, construct an SMT constraint using the variables in (1) that represents the satisfaction of
        the given model on the represented formula.
    (3) A pretty printer that prints the represented formula given valuations for the SMT variables.

    These three components fix the semantics of the formula representation in a clear and usable way. It is expected
    that the associated solver class be made agnostic to the particular choice of representation defined by this class.

    This particular class implements the following fragment:
    FO formula in prenex form quantifying over a single sort with guarded quantifiers. The matrix is a conjunction of
    relations and the number of quantifiers is predetermined. The number of conjunctions is arbitrary and cannot be
    specified. There are no constants in the formula. The guards are one relational atom.
    phi := Q x_0 R0 ,Q x_1 R1,...Q x_n Rn.  psi_n
    psi_n := psi AND RelationSymbol(x_i_1,x_i_2,...x_i_m), 0 <= i_j <= n for 1 <= j <= m
    where Q is either 'All' or 'Exists', Ri is a relational atom over x0, x2, ... xi.
    """

    def __init__(self):
        self.num_vars = None
        self.quantified_sort = None
        self.forelations = None
        self.guard_forelations = None
        self.qvars = []
        self.relvardict = {}
        self.guard_level_relvardict = {}
        self.options = {}

    # Using boolean variables for now.
    def initialise(self, num_quantified_vars, quantified_sort, forelations, guard_forelations, options):
        """
        Initialises the representation by defining SMT variables of appropriate types.
        These are maintained in an internal dictionary.

        :param guard_forelations: list of FOFunction objects corresponding to guards
        :param quantified_sort: FOSort object
        :param num_quantified_vars: positive integer
        :param forelations: list of FOFunction objects that correspond to relations
        :param options: dictionary of string-indexed optional constraints that can be placed on the class of formulae
        :return: list of constraints on the SMT variables that ensure a well-defined representation
        """
        self.num_vars = num_quantified_vars
        self.quantified_sort = quantified_sort
        if forelations is None:
            forelations = []
        self.forelations = list(forelations)
        if guard_forelations is None:
            guard_forelations = []
        self.guard_forelations = list(guard_forelations)
        self.options = options
        q = _quantifier_variable_prefix()
        # Intention: True corresponds to universal quantifier, False corresponds to existential
        quantified_variables = Bools(names=' '.join(['{}{}'.format(q, str(i)) for i in range(self.num_vars)]))
        # Variables corresponding to choice of quantifier.
        self.qvars = quantified_variables
        # Variables to indicate which relational terms are included in the matrix
        # Intention: if the variable corresponding to a relational term is True, then it will appear in the matrix
        for i in range(len(self.forelations)):
            # TODO (medium-high): Consider looping over relations sorted by arity so arguments can be reused.
            forelation = self.forelations[i]
            arity = len(forelation.get_function_symbol_signature()) - 1
            # TODO (medium-high): Consider replacing itertools.product with numpy products for speedup.
            args = itertools.product(range(self.num_vars), repeat=arity)
            for arg in args:
                relational_atom_name = _relational_atom_name(forelation, arg)
                self.relvardict[relational_atom_name] = Bool(name=relational_atom_name)
        # Variables for guards
        # Intention: if a variable corresponding to a term is True, then that is the term that will be the guard
        # Only one relation can be a guard. Accumulate constraints enforcing that.
        representation_constraints = []
        for i in range(self.num_vars):
            # Variables for the guard of the i^th outermost level quantifier.
            curr_qvar = self.qvars[i]
            level_guard_dict = {}
            for j in range(len(self.guard_forelations)):
                guard_forelation = self.guard_forelations[j]
                arity = len(guard_forelation.get_function_symbol_signature()) - 1
                # TODO (medium-high): Consider replacing itertools.product with numpy products for speedup.
                args = itertools.product(range(i + 1), repeat=arity)
                for arg in args:
                    # Guard has to atleast contain the variable being quantified
                    # Skip if arg does not contain i
                    if i not in arg:
                        continue
                    guard_relational_atom_name = _guard_relational_atom_name(curr_qvar, guard_forelation, arg)
                    level_guard_dict[guard_relational_atom_name] = Bool(guard_relational_atom_name)
            # The structure for maintaining guard relation variables at each level is a dict indexed by the
            # corresponding quantified variable.
            self.guard_level_relvardict[curr_qvar] = level_guard_dict
            # Add representation constraints for this level.
            # One and only one of the guard variables must be true.
            one_guard_constraint = Or([guard_var for guard_var in level_guard_dict.values()])
            # TODO (medium-low): include an option for no guard to be present for some quantifiers.
            unique_guard_constraints = [Not(And(level_guard_dict[key1], level_guard_dict[key2]))
                                        for key1 in level_guard_dict.keys()
                                        for key2 in level_guard_dict.keys()
                                        if key1 != key2]
            level_representation_constraint = And([one_guard_constraint] + unique_guard_constraints)
            representation_constraints = representation_constraints + [level_representation_constraint]
        # End of loop over quantifier levels.
        # End of variable declarations.
        # Support for option of constraining number of conjunctions
        num_conjuncts_bound = self.options.get('num_conjuncts_bound', None)
        if num_conjuncts_bound is not None:
            if num_conjuncts_bound < 0:
                raise vdpexceptions.NonsenseSolverConfigurationError('The number of conjunctions must be \u2265 0.')
            # If there must be at most 'k' conjunctions, then atleast 'total-k' conjuncts must not appear.
            relvars = self.relvardict.values()
            num_total_relvars = len(relvars)
            # TODO (medium-high): Consider replacing with numpy products for speedup.
            possible_negated_relvars = itertools.combinations(relvars, r=(num_total_relvars - num_conjuncts_bound))
            conjunction_bound_constraints = set()
            for negated_relvars in possible_negated_relvars:
                conjunction_bound_constraints.add(And([Not(negated_relvar) for negated_relvar in negated_relvars]))
            conjunction_bound_constraint = Or(list(conjunction_bound_constraints))
            representation_constraints = representation_constraints + [Or(conjunction_bound_constraint)]
        # Support for option of fixing quantifier shape
        quantifier_shape = self.options.get('quantifier_shape', None)
        if quantifier_shape is not None:
            len_qshape = len(quantifier_shape)
            for i in range(len_qshape):
                if quantifier_shape[i] == 'a':
                    representation_constraints = representation_constraints + [self.qvars[i]]
                elif quantifier_shape[i] == 'e':
                    representation_constraints = representation_constraints + [Not(self.qvars[i])]
        # Return representation constraints.
        return representation_constraints

    def _satisfaction_constraint_aux(self, fomodel, quantifier_depth, interpretation_extension):
        if quantifier_depth == 0:
            matrix_constraints = []
            for key, value in self.relvardict.items():
                relational_atom = _construct_relational_atom(key, self.forelations, self.qvars)
                atom_value = fomodel.interpret(relational_atom, interpretation_extension)
                matrix_constraints = matrix_constraints + [Implies(value, atom_value)]
            return And(matrix_constraints)
        else:
            qvar = self.qvars[-quantifier_depth]
            quantified_universe = fomodel.get_universe(self.quantified_sort)
            if quantified_universe is None:
                raise vdpexceptions.NonsenseSolverConfigurationError("The given model does not interpret"
                                                                     " {} sort".format(str(self.quantified_sort)))
            sub_constraints = []
            guard_satisfaction_constraints = []
            for elem in quantified_universe:
                sub_interp_extn = {**interpretation_extension, qvar: elem}

                level_guard_dict = self.guard_level_relvardict[qvar]
                guard_constraints = []
                for key, value in level_guard_dict.items():
                    guard_relational_atom = _construct_guard_relational_atom(key, self.guard_forelations, self.qvars)
                    atom_value = fomodel.interpret(guard_relational_atom, sub_interp_extn)
                    guard_constraints = guard_constraints + [Implies(value, atom_value)]
                guard_expression = And(guard_constraints)
                guard_satisfaction_constraints = guard_satisfaction_constraints + [guard_expression]

                sub_quantifier_depth = quantifier_depth - 1
                sub_constraint = self._satisfaction_constraint_aux(fomodel, sub_quantifier_depth, sub_interp_extn)
                sub_constraints = sub_constraints + [Cneg(qvar, Implies(guard_expression, Cneg(qvar, sub_constraint)))]
            constraint = Cneg(qvar, And([Cneg(qvar, sub_constraint) for sub_constraint in sub_constraints]))
            no_vacuity = self.options.get('no_vacuity', None)
            if no_vacuity:
                # If the quantifier is universal (qvar = True), then atleast one element in the universe
                # must satisfy the guard. Otherwise the quantifier will be true vacuously.
                vacuity_constraint = Or(guard_satisfaction_constraints)
                constraint = And(constraint, Implies(qvar, vacuity_constraint))
            return constraint

    def satisfaction_constraint(self, fomodel):
        """
        'Evaluates' the formula representation with respect to the given model and returns a constraint that indicates
        that the model satisfies the represented formula.
        :param fomodel: FOModel object
        :return: Z3Py formula
        """
        return self._satisfaction_constraint_aux(fomodel, self.num_vars, {})

    def valuation_as_formula(self, smt_model):
        """
        Returns the represented formula as an SMT formula over the representation variables. This can be used to 
        negate the given solution and query for a different one.
        :param smt_model: Z3Py ModelRef object
        :return: Z3Py formula
        """
        all_boolvars = self.qvars
        # Only include those relations that are true. This allows for a tighter representation of the solution
        all_boolvars = all_boolvars + [relvar for relvar in self.relvardict.values() 
                                       if smt_model.eval(relvar, model_completion=True)]
        all_boolvars = all_boolvars + [var for level_guard_dict in self.guard_level_relvardict.values() 
                                       for var in level_guard_dict.values()]
        return And([b == smt_model.eval(b, model_completion=True) for b in all_boolvars])

    def pretty(self, smt_model):
        """
        Prettyprinter for the represented formula given an assignment to the variables. Fails if no such assignment is
        provided.
        :param smt_model: Z3Py ModelRef object
        :return: string
        """
        quantifier_string = ''
        for qvar in self.qvars:
            quantifier = 'Forall' if smt_model.eval(qvar) else 'Exists'
            level_guard_dict = self.guard_level_relvardict[qvar]
            guard_var_name = next((key for key, value in level_guard_dict.items() if smt_model.eval(value)))
            guard_term = _compond_name_separator_.join(guard_var_name.split(_compond_name_separator_)[2:])
            quantifier_string = quantifier_string + '{} {}: {}. '.format(quantifier, qvar.sexpr(), guard_term)
        matrix_atoms = [key for key, value in self.relvardict.items() if smt_model.eval(value, model_completion=True)]
        matrix_string = 'And({})'.format(' '.join(matrix_atoms)) if matrix_atoms != [] else 'True'
        formula_string = '{}{}'.format(quantifier_string, matrix_string)
        # Post-processing
        no_vacuity = self.options.get('no_vacuity', None)
        if matrix_atoms == [] and no_vacuity:
            # If the conjunction is empty then a universal quantifier is the same as an existential quantifier
            # This only holds when the universal quantifier is non-vacuous
            formula_string.replace('Forall', 'Exists')
        return formula_string


# Utility functions defining the specifics of the formula's representation encoding. The Formula class is agnostic to
# the decisions made here, as long as these decisions are consistent.

# Custom operator
def Cneg(boolvar, expr):
    """
    Cneg is a 'controlled' or 'conditional' negation operator that takes a boolean variable and a formula and returns
    the formula as is when the boolean variable is true but returns the negation of the formula when the boolean
    variable is false.
    Example of usage: Given a list of sub-formulae [f1, f2..., fn] and a boolean variable b, the expression
    Cneg(And([Cneg(f1), Cneg(f2),....Cneg(fn)])) acts as a conjunction over the subformulae when b is true and as a
    disjunction when b is false.

    :param boolvar: boolean variable
    :param expr: formula
    :return: formula
    """
    return If(boolvar, expr, Not(expr))


# This symbol will be used to create compound names
_compond_name_separator_ = '!'


# Variables that denote quantifiers will have this prefix.
def _quantifier_variable_prefix():
    return 'q'


# Variables that denote relational atoms will have this name.
def _relational_atom_name(forelation, args):
    return forelation.get_name() + _compond_name_separator_ + _compond_name_separator_.join([str(i) for i in args])


# Inverse of _relational_atom_name: given a name it will use the encoding defined by _relational_atom_name to construct
# the corresponding relational atom.
def _construct_relational_atom(name, forelations, qvars):
    forelation_name, *subterm_ids = name.split(_compond_name_separator_)
    forelation = next((forelation for forelation in forelations if forelation.get_name() == forelation_name), None)
    subterms = [[qvars[int(subterm_id)]] for subterm_id in subterm_ids]
    term = [forelation, *subterms]
    return term


# Variables that denote relational atoms in the guard will have this name.
def _guard_relational_atom_name(qvar, forelation, args):
    guard_variable_prefix = 'guard{}{}{}'.format(_compond_name_separator_, qvar.sexpr(), _compond_name_separator_)
    argument_string = _compond_name_separator_.join([str(i) for i in args])
    return guard_variable_prefix + forelation.get_name() + _compond_name_separator_ + argument_string


# Inverse of _guard_relational_atom_name as above for relational atoms.
def _construct_guard_relational_atom(name, guard_forelations, qvars):
    guard_variable_prefix, level, forelation_name, *subterm_ids = name.split(_compond_name_separator_)
    forelation = next((forelation for forelation in guard_forelations if forelation.get_name() == forelation_name),
                      None)
    subterms = [[qvars[int(subterm_id)]] for subterm_id in subterm_ids]
    term = [forelation, *subterms]
    return term
