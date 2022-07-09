import vdp.exceptions as vdpexceptions
from vdp.symbol import Symbol
from vdp.vocabulary import FOSort


class FOElement(Symbol):
    """
    This class defines an 'element' of a First-Order Model. The elements modeled by this class are assumed to belong
    to an uninterpreted sort. Each such element has a name and an fosort that it belongs to. The name is a string and
    the fosort is an FOSort object.
    """
    # TODO(very low): consider interpreted elements as well

    def __init__(self, name, fosort):
        if not isinstance(fosort, FOSort):
            raise TypeError("The argument {} is not an FOSort object.".format(str(fosort)))
        else:
            super().__init__(name, fosort.get_name())
        

class FOModel:
    """
    This class represents a single Multi-Sorted First-Order Model. It contains the vocabulary that the model interprets, 
    the elements of the model that belong to various sorts, and the interpretation of constants/functions/predicates. 
    NOTE: There are no checks against partial interpretations, and it is up to the client code 
    to configure the model correctly.
    """

    def __init__(self, vocabulary, elements, interpretation):
        # Vocabulary is a Vocabulary object
        self.vocabulary = vocabulary
        # Elements is a dictionary fosort -> set_of_elements, where fosort is an FOSort object in self.vocabulary and
        # set_of_elements is a set of Symbol objects whose
        # name denotes the name of the element and symbol_type is name of the fosort.
        self.elements = elements
        # Interpretation is a dictionary of dictionaries: relation/function -> (argument_tuple ->
        # valuation). For constants the structure is constant -> value The relations/functions/constants are objects
        # in the vocabulary
        self.interpretation = interpretation
        # Generic id/name attribute
        self.model_name = ""

    # Setter methods for model attributes
    def _set_vocabulary(self, vocabulary):
        self.vocabulary = vocabulary

    def _set_elements(self, elements):
        self.elements = elements

    def _set_interpretation(self, interpretation):
        self.interpretation = interpretation

    # Getter methods for model attributes
    def get_vocabulary(self):
        return self.vocabulary

    def _get_elements(self):
        return self.elements

    def _get_interpretation(self):
        return self.interpretation

    # Returns a set of elements of the given sort if it exists in the model. Otherwise returns None.
    def get_universe(self, fosort):
        if not isinstance(fosort, FOSort) or fosort not in self.vocabulary.fosorts:
            return None
        else:
            return self.elements[fosort]

    # Lookup a single entry in the interpretation.
    # TODO (medium-low): consider improving design by not having two interpretation functions
    def _lookup_interpretation(self, function, arguments, interpretation_extension=None):
        original_valuation = self.interpretation.get(function, None)
        extended_valuation = interpretation_extension.get(function, None) if interpretation_extension is not None else None
        if arguments is None:
            # Constant/Variable
            # Valuation 'extensions' override the originally provided valuation.
            valuation = original_valuation if extended_valuation is None else extended_valuation
            if valuation is None:
                raise vdpexceptions.PartialInterpretationError(
                    "The term {} you want is not interpreted by the model.".format(function.get_name()))
            return valuation
        else:
            # Valuation 'extensions' override the originally provided valuation if there is a clash. Otherwise a union.
            if original_valuation is None and extended_valuation is None:
                raise vdpexceptions.PartialInterpretationError(
                    "The function {} you want is not interpreted by the model.".format(function.get_name()))
            valuation = {**({} if original_valuation is None else original_valuation),
                         **({} if extended_valuation is None else extended_valuation)}
            value = valuation.get(arguments, None)
            if value is None:
                raise vdpexceptions.PartialInterpretationError(
                    "Function {} does not interpret the given arguments {}.".format(
                                                                            function.get_name(), arguments.get_name()))
            return value

    # Returns the interpretation of a given term in the model.
    # A term is expected to be a list of lists, but this can be abstracted away into a class for terms later.
    # An interpretation 'extension' is an additional dictionary that can be given to interpret additional variables
    #  such as those bound by quantifiers.
    def interpret(self, term, interpretation_extension=None):
        if len(term) == 1:
            # Constant/variable symbol
            return self._lookup_interpretation(term[0], None, interpretation_extension)
        else:
            eval_term_rec = [self.interpret(subterm, interpretation_extension) for subterm in term[1:]]
            return self._lookup_interpretation(term[0], tuple(eval_term_rec), interpretation_extension)
