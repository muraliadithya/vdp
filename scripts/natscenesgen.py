"""
Script to generate all natural scenes puzzles
"""

import argparse
import os
import importlib_resources
import json
import warnings
import itertools
import random
import shutil

# Arguments to script
argparser = argparse.ArgumentParser()
argparser.add_argument('--nocache', action='store_true')
argparser.add_argument('--clean', action='store_true')
args = argparser.parse_args()

# Paths for various directories
natscenes_knowledge_path = importlib_resources.path('knowledge', 'natscenes')
with natscenes_knowledge_path as nkp:
    puzzle_descriptions = os.path.abspath(os.path.join(nkp, 'schema.jsonl'))
    ir_directory = os.path.abspath(os.path.join(nkp, 'ir'))
target_directory = os.path.abspath(os.path.join('.', os.path.join('data', 'yolo_ir')))
cache = os.path.join(target_directory, '.cache')

# Start with a clean execution if args.clean is set
if args.clean:
    shutil.rmtree(target_directory, ignore_errors=True)
    os.mkdir(target_directory)
    with open(cache, 'w') as cache_file:
        json.dump(dict(), cache_file)

# Generate puzzles according to the schema
with open(puzzle_descriptions, 'r') as schema_file:
    schemas = [json.loads(line.strip()) for line in schema_file.read().strip().split('\n') if line.strip() != '']
    for schema in schemas:
        puzzle_name = schema['classname']
        pos = [f'{x}.json' for x in schema['pos']]
        neg = [f'{x}.json' for x in schema['neg']]
        discriminator_size = schema['discriminator'].get('size', None)
        # Make puzzles from pos and neg examples of concept
        if len(pos) <= 1:
            raise ValueError('Too few positive instances to create a puzzle')
        if len(pos) <= 4:
            warnings.warn('Too few positive examples of concept')
        if len(neg) <= 2:
            warnings.warn('Too few negative examples of concept')
        num_pos_samples = 5 if len(pos) >= 6 else len(pos)-1
        num_neg_samples = 3 if len(neg) >= 4 else len(neg)-1

        pos_samples = itertools.combinations(pos, r=num_pos_samples)
        neg_samples = itertools.combinations(neg, r=num_neg_samples)
        correct_candidate_index = list(range(num_pos_samples))
        puzzles = list(itertools.product(*[pos_samples, correct_candidate_index, neg_samples]))
        puzzle_count_threshold = 300
        if len(puzzles) >= puzzle_count_threshold:
            # Set random seed so that repeated executions of the script do not generate different results
            random.seed(9292021 + schemas.index(schema))
            puzzles = random.sample(puzzles, puzzle_count_threshold)
        for puzzle in puzzles:
            pos_irs, answer_index, neg_irs = puzzle
            # Handle caching
            with open(cache, 'r') as cache_file:
                # Check the cache to see if this puzzle already exists
                cache_dict = json.load(cache_file)
            puzzle_cache = cache_dict.get(puzzle_name, dict())
            puzzle_signature = [sorted(list(pos_irs)), pos_irs[answer_index], sorted(list(neg_irs))]
            try:
                variant_id = next(k for k, v in puzzle_cache.items() 
                                  if v == puzzle_signature)
                if not args.nocache:
                    # Puzzle already present. Skip.
                    continue
            except StopIteration:
                # Puzzle not present. Give new id.
                if len(puzzle_cache) == 0:
                    variant_id = "1"
                else:
                    variant_id = str(max(int(k) for k in puzzle_cache) + 1)
                puzzle_cache[variant_id] = puzzle_signature
                cache_dict[puzzle_name] = puzzle_cache
                # Write updated dictionary to cache
                with open(cache, 'w') as cache_file:
                    json.dump(cache_dict, cache_file, indent=4)
            # Create puzzle directory and populate the IR entries
            puzzle_dir = os.path.join(target_directory, f'{puzzle_name}_{str(variant_id)}')
            os.mkdir(puzzle_dir)
            # Write any information about the puzzle to the info.txt file in the puzzle directory
            with open(os.path.join(puzzle_dir, 'info.txt'), 'a') as info:
                if discriminator_size is None:
                    size_text = 'None'
                else:
                    size_text = ' '.join([str(x) for x in discriminator_size])
                info.write(f"size= {size_text}\n")
            train_dir = os.path.join(puzzle_dir, 'train')
            os.mkdir(train_dir)
            # Add all positive examples but for the intended correct candidate to the train directory
            for i in range(len(pos_irs)):
                if i != answer_index:
                    filename = pos_irs[i]
                    shutil.copyfile(os.path.join(ir_directory, filename), os.path.join(train_dir, filename))
            test_dir = os.path.join(puzzle_dir, 'test')
            os.mkdir(test_dir)
            # Add the intended correct candidate to the test directory
            answer_filename = pos_irs[answer_index]
            shutil.copyfile(os.path.join(ir_directory, answer_filename), os.path.join(test_dir, answer_filename))
            # Add all the negative examples to the test directory
            for neg_ir in neg_irs:
                shutil.copyfile(os.path.join(ir_directory, neg_ir), os.path.join(test_dir, neg_ir))
        # End of variant creation
    # End of puzzle class creation
