"""
Entry script to use the VDP solver and logging package to solve and analyse VDP puzzles.  
A folder containing intermediate representations obtained from an appropriate visual system (refer the paper at 
https://arxiv.org/abs/1907.05878) is expected and is processed using the ir package.  

This module combines the parsers defined in various sub-packages to provide a single interface for the 
entire package.  

Every supported VDP solver package is expected to contain:
(i) A 'parser' module defining an argparse.ArgumentParser instance containing all the options that can be used 
to configure the solver, including mandatory and optional arguments. The instance must be called 'argparser'.  
(i) A 'solve_puzzle' module implementing a solve_puzzle function. This function takes two arguments: a VDPPuzzle 
object and the namespace object returned by the parser defined in (i).   
At this time there are no restrictions on what the solve_puzzle function should return, but it is expected that the 
relevant outputs be returned in a form that can be used to initialise a logging datastructure.  
"""

import argparse
import importlib

import utils.argparse_extend as argparse_extend
import utils.importlib_extend as importlib_extend
import ir.ir as irmodule
import ir.parser as irparser

# Supported vdp solvers
guarded_conjunctive_solver = 'GuardedConjunctiveSolver'
vdpsolver_choices = [guarded_conjunctive_solver]
default_vdpsolver = guarded_conjunctive_solver

##############################
# Master parser defining the unified interface.

master_parser = argparse.ArgumentParser(description='Solve a VDP puzzle', parents=[irparser.argparser])
master_parser.formatter_class = argparse.RawDescriptionHelpFormatter
# Hack around the standard ordering of help text.
solver_selection_group = master_parser.add_argument_group('Solver selection')
solver_selection_group.add_argument('--solver', choices=vdpsolver_choices, 
                                    default=default_vdpsolver, 
                                    dest='solver', 
                                    help='Choose solver to use from options. GuardedConjunctiveSolver by default.')
solver_args_group = master_parser.add_argument_group('Arguments to the solver')
# NOTE: Metavar doesn't work when setting nargs=argparse.REMAINDER
solver_args_group.add_argument('-', '--solverargs', nargs=argparse.REMAINDER, dest='solverargs', metavar=('solarg1', 'solarg2'), 
                               help='Inputs and other configuration options for the solver. All options '
                                    'follow the - and are written as usual.')

master_parser.epilog = '''
Usage examples:
python3 vdpsolve.py -h  [Display general help]
python3 vdpsolve.py ./ --solver <solver_option> - -h  [Display help text for using the <solver_option> solver]
python3 vdpsolve.py /path/to/puzzle - arg1 --opt1 val1  [Call the default solver on puzzle contained at /path/to/puzzle on inputs `arg1 -opt1 val1`]
'''

# Alter the usage text so positional arguments appear before optional arguments.
argparse_extend.positionals_beginning_usage_text(master_parser)

# End of master parser definition.
##############################


# Get args from inputs.
master_args = master_parser.parse_args()
solver_inputs = master_args.solverargs

# Check if the -h option is given for the solver, and display help if that is the case
solver_package = master_args.solver.lower()
solver_parser = importlib_extend.import_module_attribute('vdp', solver_package, 'parser', attribute_name='argparser')
if '-h' in solver_inputs:
    solver_parser.print_help()
    exit(0)

# Get VDPPuzzle object from IR.
# No need to pass the args specifically belonging to IR since it is a parent parser of master_parser, there can be no
# conflicts anyway.
vdp_puzzle = irmodule.ir_to_vdppuzzle(master_args)

# Import functions from the appropriate solver package and solve the puzzle.
# Refer to the module description to understand why the solver is being called this way.
# TODO (low): improve abstraction or document that the solver package name must be the lower case conversion of 
#  the solver choice argument (typically in camel case) in master_parser.  
solver_args = solver_parser.parse_args(solver_inputs)
solve_puzzle_function = importlib_extend.import_module_attribute('vdp', solver_package, 'solve_puzzle', attribute_name='solve_puzzle')
solve_puzzle_function(vdp_puzzle, solver_args)
