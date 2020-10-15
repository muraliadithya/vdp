from z3 import *
from vdp.vocabulary import *
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
    phi := Forall x_1,x_2...x_n. psi_n
    psi_n := psi AND RelationSymbol(x_i_1,x_i_2,...x_i_m), 1 <= i_j <= n for 1 <= j <= m
    """

    def __init__(self, context):
        self.ctx = context

    # Using boolean variables for now.
    def initialise(self, num_quantified_vars, quantified_sort, forelations):
        """
        Initialises the representation by defining SMT variables of appropriate types.
        These are maintained in an internal dictionary.

        :param num_quantified_vars: positive integer
        :param quantified_sort: FOSort object corresponding to the sort to be quantified
        :param forelations: list of FOFunction objects that correspond to relations
        :return: None
        """
        ctx = self.ctx
        return None

    def satisfaction_constraint(self, fomodel):
        """
        'Evaluates' the formula representation with respect to the given model and returns a constraint that indicates
        that the model satisfies the represented formula.
        :param model: FOModel object
        :return: Z3Py formula
        """
        return None

    # Function to pretty print a formula given as a representation.
    def pretty_print(self, smt_model):
        """
        Pretty printer for the represented formula given an assignment to the variables. Fails if no such assignment is
        provided.
        :return: string
        """
        return None

