"""
Package for a basic conjunctive solver with unary guards.  

The '*Solver' module contains the main class defining the solver call and special configuration options.
The 'formula' module contains a class that defines a representation in SMT of a generic formula belonging 
to the hypothesis class of the solver. It also provides various functions to access that representation. These two 
modules are recommended design.  

In addition, every solver package must contain the following:
(i) A 'parser' module defining an argparse.ArgumentParser instance containing all the options that can be used 
to configure the solver, including mandatory and optional arguments. The instance must be called 'argparser'.  
(i) A 'solve_puzzle' module implementing a solve_puzzle function. This function takes two arguments: a VDPPuzzle 
object and the namespace object returned by the parser defined in (i).   
At this time there are no restrictions on what the solve_puzzle function should return, but it is expected that the 
relevant outputs be returned in a form that can be used to initialise a logging datastructure.  
"""
