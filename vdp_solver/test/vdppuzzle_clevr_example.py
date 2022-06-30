# This file defines a trivial vdp puzzle.
# It is used to test vdp solvers for simple bugs.
# The intended discriminator is 'pen is on table'

from vdp.vocabulary import FOSort, FOFunction, GuardedVocabulary
from vdp.fomodel import FOElement, FOModel
from vdp.vdppuzzle import VDPPuzzle

# defining the common vocabulary
# Create the vocabulary
# Sorts
vdpobject = FOSort('Object')
vdpbool = FOSort('Bool')
# Relations
cube = FOFunction('Cube', (vdpobject, vdpbool))
red = FOFunction('Red', (vdpobject, vdpbool))
green = FOFunction('Green', (vdpobject, vdpbool))
left = FOFunction('Left', (vdpobject, vdpobject, vdpbool))
right = FOFunction('Right', (vdpobject, vdpobject, vdpbool))
# No constants or functions in this signature.
# Make the vocabulary as a pair: ({set of sorts},{set of constants/functions/relations}).
vocabulary = GuardedVocabulary({vdpobject}, {cube, red, green, left, right}, {red, green})

# training_model_1
# Create the elements of each sort
o1 = FOElement('t11', vdpobject)
o2 = FOElement('t12', vdpobject)
elements = {vdpobject: {o1, o2}}
# Define the interpretation
cube_interpretation = {cube: {(o1,): True, (o2,): True}}
red_interpretation = {red: {(o1,): False, (o2,): True}}
green_interpretation = {green: {(o1,): True, (o2,): False}}
left_interpretation = {left: {(o1, o2): True, (o2, o1): False, (o1, o1): False, (o2, o2): False}}
right_interpretation = {right: {(o1, o2): False, (o2, o1): True, (o1, o1): False, (o2, o2): False}}
interpretation = {**cube_interpretation, **red_interpretation, **green_interpretation, **left_interpretation, **right_interpretation}
# Create the FO Model
training_model_1 = FOModel(vocabulary, elements, interpretation)

# candidate_model_1
# same as training_model_1 as is therefore the intended solution to the puzzle
# Create the elements of each sort
o1 = FOElement('c11', vdpobject)
o2 = FOElement('c12', vdpobject)
o3 = FOElement('c13', vdpobject)
elements = {vdpobject: {o1, o2, o3}}
# Define the interpretation
cube_interpretation = {cube: {(o1,): True, (o2,): True, (o3,): True}}
red_interpretation = {red: {(o1,): False, (o2,): True, (o3,): True}}
green_interpretation = {green: {(o1,): True, (o2,): False, (o3,): False}}
left_interpretation = {left: {(o1, o2): True, (o2, o3): True, (o1, o3): True,
                          (o2, o1): False, (o3, o2): False, (o3, o1): False,
                          (o1, o1): False, (o2, o2): False, (o3, o3): False}}
right_interpretation = {right: {(o1, o2): False, (o2, o3): False, (o1, o3): False,
                          (o2, o1): True, (o3, o2): True, (o3, o1): True,
                          (o1, o1): False, (o2, o2): False, (o3, o3): False}}
interpretation = {**cube_interpretation, **red_interpretation, **green_interpretation, **left_interpretation, **right_interpretation}
# Create the FO Model
candidate_model_1 = FOModel(vocabulary, elements, interpretation)
candidate_model_1.model_name = 'candidate_model_1'

# candidate_model_2
# same as candidate_model_1 except the book is on the table and the pen is not
# Create the elements of each sort
o1 = FOElement('t21', vdpobject)
o2 = FOElement('t22', vdpobject)
o3 = FOElement('t23', vdpobject)
elements = {vdpobject: {o1, o2, o3}}
# Define the interpretation
cube_interpretation = {cube: {(o1,): True, (o2,): True, (o3,): True}}
red_interpretation = {red: {(o1,): True, (o2,): True, (o3,): False}}
green_interpretation = {green: {(o1,): False, (o2,): False, (o3,): True}}
left_interpretation = {left: {(o1, o2): True, (o2, o3): True, (o1, o3): True,
                          (o2, o1): False, (o3, o2): False, (o3, o1): False,
                          (o1, o1): False, (o2, o2): False, (o3, o3): False}}
right_interpretation = {right: {(o1, o2): False, (o2, o3): False, (o1, o3): False,
                          (o2, o1): True, (o3, o2): True, (o3, o1): True,
                          (o1, o1): False, (o2, o2): False, (o3, o3): False}}
interpretation = {**cube_interpretation, **red_interpretation, **green_interpretation, **left_interpretation, **right_interpretation}
# Create the FO Model
candidate_model_2 = FOModel(vocabulary, elements, interpretation)
candidate_model_2.model_name = 'candidate_model_2'


training_models = [training_model_1]
candidate_models = [candidate_model_1, candidate_model_2]

vdppuzzle_example = VDPPuzzle(vocabulary, training_models, candidate_models)
# G R R R...