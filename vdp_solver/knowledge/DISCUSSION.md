This folder contains some files encoding some 'real world knowledge' that can be used to 
construct better models of the world from the results of various visual systems such as 
scene graph generators. For example, since seating furniture in images can be labeled 
with either 'sofa' or 'couch', it is useful to add data that can collapse such labels into 
a new distinct label category, say 'furniture'.  

There is some discussion in the larger AI community [citations needed] about whether such 
real world constraints or relationships must be learnt from large amounts of data akin 
in the spirit of Deep Learning or be obtained/inferred 'directly' from knowledge 
bases. For the purposes of the VDP  problem, it is clear atleast that some amount of 
the knowledge currently being codified in this folder must and in fact can be learnt 
from data. For example, one could imagine that word embeddings may present a 
data-driven approach to solving the aforementioned problem of collapsing similar 
labels. However, this kind of exploration is certainly out of the current scope of 
this tool.  

Description of files:
- macrovocabulary.json  
  A list of 'large' object labels and 'large-scale' relationships 
  among them.   
  Example of such macro objects/relationships: 
  'person -- sleeping on -- bench'.  
  Not an example of macro objects/relationships: 'cat -- has -- ear'
  
- labeldomain.json  
File defining additional structure on the domain of labels for objects 
  in the sense of vision systems.
  The 'labels' field contains the total universe of labels whose 
  structure is being defined in this file.
  The 'sublabel' field is a dictionary that specifies a list of 
  super-labels for a given label. Foe example, if the field contains 
  an entry label1: [label2, label3] then any object labeled with 
  'label1' can also be labeled with 'label2' or 'label3'. Each label or 
  super-label is a string from the 'labels' field.
