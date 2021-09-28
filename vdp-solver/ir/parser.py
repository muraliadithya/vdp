"""
Argument parser for configuring various IR handling options.  
"""

import argparse

import utils.argparse_extend as argparse_extend

# Argument parser
argparser = argparse.ArgumentParser(prog='ir/ir', 
                                    description='Load a vdp puzzle from an intermediate representation', 
                                    add_help=False)
# Hack around not being able to use help messages in both a parent and a child parser. Adding text as part of a 
# group description is retained when this parser is inherited by another.
_irgroup = argparser.add_argument_group('IR handling arguments')

_irgroup.add_argument('puzzle_folder_path', metavar='puzzlepath', 
                      type=lambda x: argparse_extend.dir_path_type(x, 'puzzlepath'), 
                      help='Folder containing IRs for training and candidate models')

# Optional arguments to configure IR loading
_irgroup.add_argument('--ir-config', choices=['Simple', 'ObjRelFilter', 'StructuredLabelDomain', 
                                              # Removing Clevr option temporarily
                                              # 'Clevr'
                                              ], 
                      default='Simple', 
                      dest='ir_config', 
                      help='[Experts only] Configure loading VDP puzzle from IR')

# Other optional arguments
_irgroup.add_argument('--puzzlename', default=None, dest='puzzlename', 
                      help='[Logging] Name of the puzzle. Same as puzzlepath by default.')

# Options temporarily disabled in favour of default files specified within each ir_loader/normaliser/puzzle maker
# TODO (medium-high): Replace all arguments to get files with one argument or a single config file (say in YAML)
# _irgroup.add_argument('--vocabfilter', default=None, dest='vocabulary_filter_filepath', 
#                       help='[Experts only] JSON file restricting vocabulary of objects and relationships. '
#                            'To be used with --ir-config ObjRelFilter option.')
# _irgroup.add_argument('--labeldomain', default=None, dest='label_domain_filepath', 
#                       help='[Experts only] JSON file containing additional structure about the domain of labels. '
#                            'To be used with --ir-config StructuredLabelDomain option.')
