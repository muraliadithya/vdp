class Symbol:
    """
    This class defines the concept of a generic 'symbol'. Symbols have a 'name' which is a string and a 'symbol_type'
    which denotes what part of the logic vocabulary they constitute, say object, relation, or label. Symbols
    are meant to be immutable.
    """

    def __init__(self, name, symbol_type=None):
        self.name = name
        self.symbol_type = symbol_type

    def symbol_is_instance(self, instance):
        """
        Function to check whether the current Symbol object is an instance of another Symbol kind
        higher in the hierarchy.
        It takes either a string or another Symbol object to check against the current object. If the argument is of
        neither type, it returns None.
        NOTE: The Symbol object to be compared against must be the object that represents the symbol_type class of
        objects, not another object whose symbol_type is the same as the current object.
        :param instance: string or Symbol
        :return: bool or None
        """
        if isinstance(instance, str):
            return self.symbol_type == instance
        elif isinstance(instance, Symbol):
            return self.symbol_type == instance.get_name()

    # Symbols with the same name must be considered equal.
    # To enforce symbol equality only when BOTH name and signature are equal, change __eq__ and __hash__ appropriately.
    # TODO (low): allow signature to determine equality as well.
    #  This change will generalise the model, but will have effects on the way that interpretations are keyed in
    #  VDPFOModel objects.
    def __eq__(self, other):
        """Overrides the default implementation"""
        if isinstance(other, Symbol):
            return self.name == other.name
        return NotImplemented

    # Custom symbol equality defined above must extend to usage as elements of mutable entities such as sets.
    # NOTE: IMPORTANT! In general implementation only makes sense if the symbol (or classes that inherit from it)
    #   DO NOT have mutable entities in their attributes.
    # TODO (low): opt for a different design to obtain persistent symbol identities that is more general.
    def __hash__(self):
        """Overrides the default implementation"""
        return hash(self.name)

    # Getter methods for attributes
    def get_name(self):
        return self.name

    def get_symbol_type(self):
        return self.symbol_type

    # No setter methods as we want Symbols to be immutable
