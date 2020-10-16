# This file defines a trivial vdp puzzle.
# It is used to test vdp solvers for simple bugs.
# The intended discriminator is 'pen is on table'

from vdp.vocabulary import FOSort, FOFunction
from vdp.fomodel import FOElement, FOModel
from vdp.vdppuzzle import VDPPuzzle

# defining the common vocabulary
# Create the vocabulary
# Sorts
vdpobject = FOSort('Object')
vdpbool = FOSort('Bool')
# Relations
pen = FOFunction('Pen', (vdpobject, vdpbool))
book = FOFunction('Book', (vdpobject, vdpbool))
table = FOFunction('Table', (vdpobject, vdpbool))
on = FOFunction('On', (vdpobject, vdpobject, vdpbool))
# No constants or functions in this signature.
# Make the vocabulary as a pair: ({set of sorts},{set of constants/functions/relations}).
vocabulary = ({vdpobject}, {pen, book, table, on})

# training_model_1
# Create the elements of each sort
o1 = FOElement('t11', vdpobject)
o2 = FOElement('t12', vdpobject)
o3 = FOElement('t13', vdpobject)
elements = {vdpobject: {o1, o2, o3}}
# Define the interpretation
pen_interpretation = {pen: {(o1,): True, (o2,): False, (o3,): False}}
book_interpretation = {book: {(o1,): False, (o2,): True, (o3,): False}}
table_interpretation = {table: {(o1,): False, (o2,): False, (o3,): True}}
on_interpretation = {on: {(o1, o2): False, (o2, o3): False, (o1, o3): True,
                          (o2, o1): False, (o3, o2): False, (o3, o1): False,
                          (o1, o1): False, (o2, o2): False, (o3, o3): False}}
interpretation = {**pen_interpretation, **book_interpretation, **table_interpretation, **on_interpretation}
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
pen_interpretation = {pen: {(o1,): True, (o2,): False, (o3,): False}}
book_interpretation = {book: {(o1,): False, (o2,): True, (o3,): False}}
table_interpretation = {table: {(o1,): False, (o2,): False, (o3,): True}}
on_interpretation = {on: {(o1, o2): False, (o2, o3): False, (o1, o3): True,
                          (o2, o1): False, (o3, o2): False, (o3, o1): False,
                          (o1, o1): False, (o2, o2): False, (o3, o3): False}}
interpretation = {**pen_interpretation, **book_interpretation, **table_interpretation, **on_interpretation}
# Create the FO Model
candidate_model_1 = FOModel(vocabulary, elements, interpretation)

# candidate_model_2
# same as candidate_model_1 except the book is on the table and the pen is not
# Create the elements of each sort
o1 = FOElement('t21', vdpobject)
o2 = FOElement('t22', vdpobject)
o3 = FOElement('t23', vdpobject)
elements = {vdpobject: {o1, o2, o3}}
# Define the interpretation
pen_interpretation = {pen: {(o1,): True, (o2,): False, (o3,): False}}
book_interpretation = {book: {(o1,): False, (o2,): True, (o3,): False}}
table_interpretation = {table: {(o1,): False, (o2,): False, (o3,): True}}
on_interpretation = {on: {(o1, o2): False, (o2, o3): True, (o1, o3): False,
                          (o2, o1): False, (o3, o2): False, (o3, o1): False,
                          (o1, o1): False, (o2, o2): False, (o3, o3): False}}
interpretation = {**pen_interpretation, **book_interpretation, **table_interpretation, **on_interpretation}
# Create the FO Model
candidate_model_2 = FOModel(vocabulary, elements, interpretation)

# candidate_model_3
# same as candidate_model_1 except the pen is on the book and neither of them are on the table
# Create the elements of each sort
o1 = FOElement('t31', vdpobject)
o2 = FOElement('t32', vdpobject)
o3 = FOElement('t33', vdpobject)
elements = {vdpobject: {o1, o2, o3}}
# Define the interpretation
pen_interpretation = {pen: {(o1,): True, (o2,): False, (o3,): False}}
book_interpretation = {book: {(o1,): False, (o2,): True, (o3,): False}}
table_interpretation = {table: {(o1,): False, (o2,): False, (o3,): True}}
on_interpretation = {on: {(o1, o2): True, (o2, o3): False, (o1, o3): False,
                          (o2, o1): False, (o3, o2): False, (o3, o1): False,
                          (o1, o1): False, (o2, o2): False, (o3, o3): False}}
interpretation = {**pen_interpretation, **book_interpretation, **table_interpretation, **on_interpretation}
# Create the FO Model
candidate_model_3 = FOModel(vocabulary, elements, interpretation)


training_models = [training_model_1]
candidate_models = [candidate_model_1, candidate_model_2, candidate_model_3]

vdppuzzle_example = VDPPuzzle(vocabulary, training_models, candidate_models)
