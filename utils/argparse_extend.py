"""
Extensions and wrappers for functionality in argparse.  
"""

import os
import argparse


# Hack around positional arguments being displayed at the end of usage text.
def positionals_beginning_usage_text(parser):
    num_positional_args = len(parser._get_positional_actions())
    curr_usage_text = parser.format_usage()
    curr_usage_list = curr_usage_text.split()
    # Positional arguments should be displayed after the first two arguments: program_name and the [-h] option.
    new_usage_list = curr_usage_list[1:3] + curr_usage_list[-num_positional_args:] + curr_usage_list[3:-num_positional_args]
    new_usage = ' '.join(new_usage_list)
    parser.usage = new_usage


# Helper function for identifying an argument's type as a valid path to a directory.
# Every valid type function should take an input argument/value and convert it to the intended type, and raise an 
# error if that is not possible.
def dir_path_type(path_str, metavar_or_name=""):
    if os.path.isdir(path_str):
        return path_str
    else:
        raise argparse.ArgumentTypeError('Argument \'{}\' must be a valid path.'.format(metavar_or_name))


# Action type to mimic specifying the nargs attribute as a range on number of arguments
def variable_length(nmin, nmax):
    class VariableLength(argparse.Action):
        def __call__(self, parser, args, values, option_string=None):
            if not nmin <= len(values) <= nmax:
                msg = 'argument "{f}" requires between {nmin} and {nmax} arguments'.format(f=self.dest,
                                                                                           nmin=nmin,
                                                                                           nmax=nmax)
                raise argparse.ArgumentTypeError(msg)
            setattr(args, self.dest, values)
    return VariableLength
