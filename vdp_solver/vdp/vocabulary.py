from vdp.symbol import Symbol
import vdp.exceptions as vdpexceptions


class FOSort(Symbol):
    """
    This class defines a 'sort' in the sense of multi-sorted FO. Each sort is simply a distinct name.
    """

    def __init__(self, name):
        super().__init__(name, 'FOSort')


# TODO (medium-low): Create classes that inherit from FOSort to create specialised sorts with interpreted functions.
#  One example is booleans.


class FOFunction(Symbol):
    """
    This class defines a function. Each function has a name and a signature.
    The signature is a tuple of FOSort objects representing the type of the arguments.
    Singleton tuples denote constants and tuples with the final component as 'Bool' denote predicates.
    """

    def __init__(self, name, signature):
        self.signature = signature
        super().__init__(name, 'FOFunction')

    # Getter methods for attributes
    def get_function_symbol_signature(self):
        return self.signature


# NOTE: classes representing the actual label-type or object-type elements
#  of an FO model are present in fomodel.py


class Vocabulary:
    """
    This class defines a simple vocabulary that contains a set of sorts and a set of functions. The sorts are FOSort
    objects and the functions are FOFunction objects.
    """

    def __init__(self, fosorts, fofunctions):
        self.fosorts = fosorts
        self.fofunctions = fofunctions

    # No getter or setter methods. Vocabulary objects are just meant to be immutable tuples of sets of symbols.


class GuardedVocabulary(Vocabulary):
    """
    This class defines the vocabulary for a 'guarded' FO fragment, i.e., one where all quantifiers have so-called
    'guard' formulae. The guard 'G' of a guarded universal quantifier Forall x. G: phi is interpreted as
    Forall x. (G => phi) in the non-guarded sense. Similarly, a guarded existential quantifier Exists x. G: phi is to
    be interpreted as Exists x. (G && phi).
    The fofunctions that constitute the guard have to be a subset of all fofunctions.
    """

    # In addition to a regular vocabulary a guarded vocabulary also has functions that induce a definition of
    # guard terms/relational atoms in a guarded FO formula.
    def __init__(self, fosorts, fofunctions, guard_fofunctions):
        if not guard_fofunctions.issubset(fofunctions):
            raise vdpexceptions.MalformedVocabularyError("Guard functions must be in the set of all functions. Try "
                                                         "setting fofunctions = SetUnion(fofunctions,"
                                                         "guard_fofunctions).")
        self.guard_fofunctions = guard_fofunctions
        super().__init__(fosorts, fofunctions)
