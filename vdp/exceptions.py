# As a general rule, classes ending in 'Error' are those that represent cases of ill-formed or
# ill-conditioned input. Classes ending in 'Exception' represent cases that are outside of the scope of the
# particular logic but can ideally be handled by a better or more specific (subclass) implementation.


class MalformedVocabularyError(Exception):
    """
    This exception is raised when a Vocabulary object or an object of any other vocabulary classes that derive from
    Vocabulary does not make sense as a real First-Order vocabulary of that type.
    """
    pass


class PartialInterpretationError(Exception):
    """
    This exception is raised when a model is queried for an interpretation that is absent. One way of ensuring this
    does not happen is to 'close' model interpretations with default values for each function (false for predicates).
    """
    pass


class MalformedPuzzleException(Exception):
    """
    This exception is raised when a VDPPuzzle object does not fit the assumptions made by a solver.
    Example: empty set of training/candidate images.
    """
    pass


class NonsenseSolverConfigurationError(Exception):
    """
    This exception is raised when a solver's configuration does not make sense with respect to its assumptions.
    Example: negative number of quantified variables.
    """
    pass
