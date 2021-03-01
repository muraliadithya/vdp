from graphviz import *

g = Digraph(format='png')

# Nodes
g.node('2_dog', 'Dog_1', style='filled', color='blue')
g.node('3_dog', 'Dog_2', style='filled', color='blue')
g.node('4_dog', 'Dog_3', style='filled', color='blue')
g.node('0_sofa', 'Sofa_1', style='filled', color='green')
g.node('1_sofa', 'Sofa_2', style='filled', color='green')

# Edges
# corresponding to within
# g.edge('1_sofa', '0_sofa', 'on', color='brown')
g.edge('2_dog', '0_sofa', 'on', color='brown')
g.edge('3_dog', '0_sofa', 'on', color='brown')
g.edge('4_dog', '0_sofa', 'on', color='brown')
g.edge('3_dog', '1_sofa', 'on', color='brown')

# corresponding to left
g.edge('2_dog', '1_sofa', 'left', color='purple')
g.edge('4_dog', '1_sofa', 'left', color='purple')
g.edge('4_dog', '2_dog', 'left', color='purple')
g.edge('2_dog', '3_dog', 'left', color='purple')
g.edge('4_dog', '3_dog', 'left', color='purple')

dotcode_file_path = 'visualise.txt'
with open(dotcode_file_path, 'w') as dotcode_file:
    dotcode_file.write(g.source)
g.render(dotcode_file_path, view=True)

# "within": [["1_sofa", "0_sofa"], ["2_dog", "0_sofa"], ["3_dog", "0_sofa"], ["4_dog", "0_sofa"], ["3_dog", "1_sofa"]], 
# 
# "right": [["2_dog", "1_sofa"], ["4_dog", "1_sofa"], ["4_dog", "2_dog"], ["2_dog", "3_dog"], ["4_dog", "3_dog"]], 
# 
# "left": [["1_sofa", "2_dog"], ["3_dog", "2_dog"], ["1_sofa", "4_dog"], ["2_dog", "4_dog"], ["3_dog", "4_dog"]]}, 
