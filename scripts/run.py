import json
import os
import shutil


def run(puzzlename, logmodes, clean=True):
    if clean:
        for f in os.listdir('./ann_config'):
            if f.startswith(puzzlename):
                os.remove(f'./ann_config/{f}')

    for logmode in logmodes:
        logfile_name = f'./logs/{puzzlename}_{logmode}.txt'        
        with open(logfile_name) as logfile:
            logstr = logfile.read()
            lines = logstr.split('\n')
            loglines = [line for line in lines if line != '']
            i = 0
            while i < len(loglines):
                line = loglines[i]
                if any(line.startswith(x) for x in ['real', 'user', 'sys']):
                    i = i + 1
                elif line.startswith('data'):
                    next_line = loglines[i+1]
                    if next_line.startswith('No discriminator'):
                        i = i + 2
                    else:
                        config_filename = '{}.json'.format(line.split('/')[-1])
                        candidate_line = loglines[i+1]
                        concept_line = loglines[i+2]
                        candidate_file_line = loglines[i+3]
                        if not (candidate_line.startswith('Candidate:') and concept_line.startswith('Concept:') 
                                and candidate_file_line.startswith('Candidate Name:')):
                            raise ValueError(f'Corrupt file {config_filename}')
                        config_infile = f'./config/{config_filename}'
                        config_outfile = f'./ann_config/{config_filename}'
                        if not os.path.exists(config_outfile):
                            with open(config_infile, 'r') as infile:
                                configdict = json.load(infile)
                                answer = configdict.get('candidate', None)
                                if answer is None:
                                    configdict['candidate'] = '{}.jpg'.format(candidate_file_line.split('/')[-1][:-5])
                                    configdict['concept'] = ' '.join(concept_line.split('Concept:')[1].split())
                                else:
                                    i = i + 4
                                    continue
                            with open(config_outfile, 'w') as outfile:
                                json.dump(configdict, outfile, indent=4)
                        i = i + 4
                else:
                    raise ValueError(f'Corrupt file {logfile_name}')
    return None


def postprocess():
    for f in os.listdir('./config'):
        if not os.path.exists(f'./ann_config/{f}'):
            shutil.copy(f'./config/{f}', f'./ann_config/{f}')


puzzle_config = []
puzzle_name = 'allteddysonsofas'
config_list = ['1', '2_1']
puzzle_config.append((puzzle_name, config_list))
puzzle_name = 'truck'
config_list = ['1']
puzzle_config.append((puzzle_name, config_list))
puzzle_name = 'drivingdirection'
config_list = ['1', '2_1']
puzzle_config.append((puzzle_name, config_list))
puzzle_name = 'separatepiles'
config_list = ['1', '2_1']
puzzle_config.append((puzzle_name, config_list))
puzzle_name = 'middleball'
config_list = ['2', '3_1', '3_2']
puzzle_config.append((puzzle_name, config_list))
puzzle_name = 'setplates'
config_list = ['1', '2_1', '2', '3_1', '3']
puzzle_config.append((puzzle_name, config_list))
puzzle_name = 'personball'
config_list = ['1', '2_0']
puzzle_config.append((puzzle_name, config_list))
puzzle_name = 'dogherded'
config_list = ['1', '2_0']
puzzle_config.append((puzzle_name, config_list))
puzzle_name = 'parkmeter'
config_list = ['1']
puzzle_config.append((puzzle_name, config_list))
puzzle_name = 'umbrella'
config_list = ['1']
puzzle_config.append((puzzle_name, config_list))
puzzle_name = 'populatedbus'
config_list = ['1', '2_0', '2_1']
puzzle_config.append((puzzle_name, config_list))
puzzle_name = 'alldogsonsofas'
config_list = ['1', '2_0', '2']
puzzle_config.append((puzzle_name, config_list))
puzzle_name = 'desktop'
config_list = ['1', '2_0']
puzzle_config.append((puzzle_name, config_list))
puzzle_name = 'pplwearingties'
config_list = ['1', '2_0', '2_1']
puzzle_config.append((puzzle_name, config_list))
puzzle_name = 'sleeping'
config_list = ['1']
puzzle_config.append((puzzle_name, config_list))
puzzle_name = 'allcatsonsofas'
config_list = ['1', '2_0', '2']
puzzle_config.append((puzzle_name, config_list))
puzzle_name = 'kitchen'
config_list = ['1', '2_0', '2', '3']
puzzle_config.append((puzzle_name, config_list))
puzzle_name = 'pplandties'
config_list = ['1', '2_0']
puzzle_config.append((puzzle_name, config_list))
puzzle_name = '2on1'
config_list = ['2', '3']
puzzle_config.append((puzzle_name, config_list))
puzzle_name = 'catontv'
config_list = ['2', '3']
puzzle_config.append((puzzle_name, config_list))
for (puzzle_name, config_list) in puzzle_config:
    run(puzzle_name, config_list)
postprocess()
