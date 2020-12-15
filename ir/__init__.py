"""
Package for handling the Intermediate Representation (IR) format that represents a First-Order model extracted
from various visual systems. It also contains allied utilities for constructing a VDPPuzzle object given an
appropriate puzzle directory with models in the IR. VDP solvers take VDPPuzzle objects in order to produce
discriminators.

There are the following kinds of modules that form the core functionalities of this package:  
(i) irload_*.py: defines a way of 'loading' the puzzle given as an ir at some location (file or folder) into a pair of
lists of some type (usually a dictionary): one for the training models and one for the candidate models.  
(ii) normalisation_*.py: defines a 'normalisation' mechanism given the 'raw' input loaded from an ir, usually the output of
a 'irload_*' module as in (i) above.  The normalisation effectively sanitises the input and returns a format that can, 
in some obvious way, be translated to a vdp/vdppuzzle/VDPPuzzle instance.  
(iii) mkvdppuzzle_*.py: defines the procedure to make a VDPuzzle instance from a list of training and candidate models 
provided in some form, usually the output of a 'normalise_*' module as in (ii) above.

Finally, the parser module defines various options that toplevel scripts can use and the ir module defines the 
selection of loading, normalisation and making VDPPuzzle options corresponding to each of these options.

Informal requirements on modules in this package:  
- Each irload_*.py module must define a 'load_ir' function.  
- Each normalisation_*.py module must define a 'normalise' function.  
- Each mkvdppuzzle_*.py module must define a 'mk_vdppuzzle' function.  
There are no particular restrictions on the form of the inputs and outputs for any of these functions, but it is 
expected that the 'mk_vdppuzzle' functions will take a named string argument called 'puzzlename' denoting the name of the 
puzzle usually written as the last argument.  
"""
