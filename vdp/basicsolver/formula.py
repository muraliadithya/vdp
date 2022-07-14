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
    FO formula in prenex form quantifying over a single sort. The matrix is a conjunction of
    relations and the number of quantifiers is predetermined. The number of conjunctions is arbitrary and cannot be
    specified. There are no constants in the formula.
    phi :=  Q x_0,Q x_1...Q x_n. psi_n
    psi_n := psi AND RelationSymbol(x_i_1,x_i_2,...x_i_m), 0 <= i_j <= n for 1 <= j <= m
    where Q is either 'All' or 'Exists'.
    """

    def __init__(self, context):
        self.ctx = context
        self.num_vars = None
        self.quantified_sort = None
        self.forelations = None
        self.qvars = []
        self.relvardict = {}
        self.options = {}

    # Using boolean variables for now.
    def initialise(self, num_quantified_vars, quantified_sort, forelations, options):
        """
        Initialises the representation by defining SMT variables of appropriate types.
        These are maintained in an internal dictionary.

        :param quantified_sort: FOSort object
        :param num_quantified_vars: positive integer
        :param forelations: list of FOFunction objects that correspond to relations
        :param options: dictionary of string-indexed optional constraints that can be placed on the class of formulae
        :return: list of constraints on the SMT variables that ensure a well-defined representation
        """
        self.num_vars = num_quantified_vars
        self.quantified_sort = quantified_sort
        self.forelations = list(forelations)
        self.options = options
        q = _quantifier_variable_prefix()
        quantified_variables = Bools(names=' '.join(['{}{}'.format(q, str(i)) for i in range(self.num_vars)]),
                                     ctx=self.ctx)
        self.qvars = quantified_variables
        for i in range(len(self.forelations)):
            # TODO (medium-high): Consider looping over relations sorted by arity so arguments can be replaced.
            forelation = self.forelations[i]
            arity = len(forelation.get_function_symbol_signature()) - 1
            # TODO (medium-high): Consider replacing itertools.product with numpy products for speedup.
            args = itertools.product(range(self.num_vars), repeat=arity)
            for arg in args:
                relational_atom_name = _relational_atom_name(forelation, arg)
                self.relvardict[relational_atom_name] = Bool(name=relational_atom_name, ctx=self.ctx)
        # No constraints on variables. Return [].
        return []

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
                sub_quantifier_depth = quantifier_depth - 1
                sub_constraint = self._satisfaction_constraint_aux(fomodel, sub_quantifier_depth, sub_interp_extn)
                sub_constraints = sub_constraints + [sub_constraint]
            constraint = Implies(And([Implies(sub_constraint, qvar) for sub_constraint in sub_constraints]), qvar)
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
            quantifier_string = quantifier_string + '{} {}. '.format(quantifier, qvar.sexpr())
        matrix_atoms = [key for key, value in self.relvardict.items() if smt_model.eval(value)]
        matrix_string = 'And({})'.format(' '.join(matrix_atoms)) if matrix_atoms != [] else 'True'
        formula_string = '{}{}'.format(quantifier_string, matrix_string)
        return formula_string


# Utility functions defining the specifics of the formula's representation encoding. The Formula class is agnostic to
# the decisions made here, as long as these decisions are consistent.

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
