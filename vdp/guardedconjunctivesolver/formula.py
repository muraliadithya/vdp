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

    def __init__(self, context):
        self.ctx = context
        self.num_vars = None
        self.quantified_sort = None
        self.forelations = None
        self.guard_forelations = None
        self.qvars = []
        self.relvardict = {}
        self.guard_nested_relvardict = {}
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
        quantified_variables = Bools(names=' '.join(['{}{}'.format(q, str(i)) for i in range(self.num_vars)]),
                                     ctx=self.ctx)
        # Variables corresponding to choice of quantifier.
        self.qvars = quantified_variables
        # Variables to indicate which relational terms are included in the matrix
        for i in range(len(self.forelations)):
            # TODO (medium-high): Consider looping over relations sorted by arity so arguments can be replaced.
            forelation = self.forelations[i]
            arity = len(forelation.get_function_symbol_signature()) - 1
            # TODO (medium-high): Consider replacing itertools.product with numpy products for speedup.
            args = itertools.product(range(self.num_vars), repeat=arity)
            for arg in args:
                relational_atom_name = _relational_atom_name(forelation, arg)
                self.relvardict[relational_atom_name] = Bool(name=relational_atom_name, ctx=self.ctx)
        # Variables for guards
        # Only one relation can be a guard. Accumulate constraints for the same.
        representation_constraints = []
        for i in range(self.num_vars):
            # Variables for the guard of the i^th outermost quantifier.
            quantifier_level_dict = {}
            for j in range(len(self.guard_forelations)):
                guard_forelation = self.guard_forelations[j]
                arity = len(guard_forelation.get_function_symbol_signature()) - 1
                # TODO (medium-high): Consider replacing itertools.product with numpy products for speedup.
                args = itertools.product(range(i + 1), repeat=arity)
                for arg in args:
                    guard_relational_atom_name = _guard_relational_atom_name(i, guard_forelation, arg)
                    quantifier_level_dict[guard_relational_atom_name] = Bool(guard_relational_atom_name, self.ctx)
            # The structure for maintaining guard atom variables at each level is a dict indexed by the level.
            self.guard_nested_relvardict[self.qvars[i]] = quantifier_level_dict
            # Add representation constraints for this level.
            # One and only one of the guard variables must be true.
            one_guard_constraint = Or([guard_var for guard_var in quantifier_level_dict.values()])
            # TODO (medium-low): include an option for no guard to be present for some quantifiers.
            unique_guard_constraints = [Not(And(quantifier_level_dict[key1], quantifier_level_dict[key2]))
                                        for key1 in quantifier_level_dict.keys()
                                        for key2 in quantifier_level_dict.keys()
                                        if key1 != key2]
            representation_constraint = And([one_guard_constraint] + unique_guard_constraints)
            representation_constraints = representation_constraints + [representation_constraint]
        # End of loop over quantifier levels. Return representation constraints.
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
            for elem in quantified_universe:
                sub_interp_extn = {**interpretation_extension, qvar: elem}

                guard_var_dict = self.guard_nested_relvardict[qvar]
                guard_constraints = []
                for key, value in guard_var_dict.items():
                    guard_relational_atom = _construct_guard_relational_atom(key, self.guard_forelations, self.qvars)
                    atom_value = fomodel.interpret(guard_relational_atom, sub_interp_extn)
                    guard_constraints = guard_constraints + [Implies(value, atom_value)]
                guard_expression = And(guard_constraints)

                sub_quantifier_depth = quantifier_depth - 1
                sub_constraint = self._satisfaction_constraint_aux(fomodel, sub_quantifier_depth, sub_interp_extn)
                sub_constraints = sub_constraints + [Cneg(qvar, Implies(guard_expression, Cneg(qvar, sub_constraint)))]
            constraint = Cneg(qvar, And([Cneg(qvar, sub_constraint) for sub_constraint in sub_constraints]))
            return constraint

    def satisfaction_constraint(self, fomodel):
        """
        'Evaluates' the formula representation with respect to the given model and returns a constraint that indicates
        that the model satisfies the represented formula.
        :param fomodel: FOModel object
        :return: Z3Py formula
        """
        return self._satisfaction_constraint_aux(fomodel, self.num_vars, {})

    def pretty(self, smt_model):
        """
        Prettyprint for the represented formula given an assignment to the variables. Fails if no such assignment is
        provided.
        :param smt_model: Z3Py ModelRef object
        :return: string
        """
        quantifier_string = ''
        for qvar in self.qvars:
            quantifier = 'Forall' if smt_model.eval(qvar) else 'Exists'
            level_guard_dict = self.guard_nested_relvardict[qvar]
            guard_var_name = next((key for key, value in level_guard_dict.items() if smt_model.eval(value)))
            guard_term = '_'.join(guard_var_name.split('_')[2:])
            quantifier_string = quantifier_string + '{} {}: {}. '.format(quantifier, qvar.sexpr(), guard_term)
        matrix_atoms = [key if smt_model.eval(value) else '' for key, value in self.relvardict.items()]
        matrix_string = ' '.join(matrix_atoms)
        formula_string = '{}And({})'.format(quantifier_string, matrix_string)
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
    return Implies(expr, boolvar)


# Variables that denote quantifiers will have this prefix.
def _quantifier_variable_prefix():
    return 'q'


# Variables that denote relational atoms will have this name.
def _relational_atom_name(forelation, args):
    return forelation.get_name() + '_' + '_'.join([str(i) for i in args])


# Inverse of _relational_atom_name: given a name it will use the encoding defined by _relational_atom_name to construct
# the corresponding relational atom.
def _construct_relational_atom(name, forelations, qvars):
    forelation_name, *subterm_ids = name.split('_')
    forelation = next((forelation for forelation in forelations if forelation.get_name() == forelation_name), None)
    subterms = [[qvars[int(subterm_id)]] for subterm_id in subterm_ids]
    term = [forelation, *subterms]
    return term


# Variables that denote relational atoms in the guard will have this name.
def _guard_relational_atom_name(level, forelation, args):
    guard_variable_prefix = 'guard_{}_'.format(str(level))
    return guard_variable_prefix + forelation.get_name() + '_' + '_'.join([str(i) for i in args])


# Inverse of _guard_relational_atom_name as above for relational atoms.
def _construct_guard_relational_atom(name, guard_forelations, qvars):
    guard_variable_prefix, level, forelation_name, *subterm_ids = name.split('_')
    forelation = next((forelation for forelation in guard_forelations if forelation.get_name() == forelation_name),
                      None)
    subterms = [[qvars[int(subterm_id)]] for subterm_id in subterm_ids]
    term = [forelation, *subterms]
    return term
