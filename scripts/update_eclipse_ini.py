#!/usr/bin/env python

import sys

file_name = sys.argv[1]

to_append = '-vm\n'
to_append += sys.argv[2]
to_append += '\n'

text = []

to_ignore = False

print('File to edit %s' % file_name)

with open(file_name, 'r') as f:
    for line in f.readlines():
        if line == '-vm\n' and not to_ignore:
            to_ignore = True
            continue
        elif to_ignore:
            to_ignore = False
            continue
        elif line == '-vmargs\n':
            text.append(to_append)

        text.append(line)

with open(file_name, 'w') as f:
    print('Updating file...')
    f.writelines(text)

print('File updated!\n')
