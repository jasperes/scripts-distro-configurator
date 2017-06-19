#!/usr/bin/env python

import sys

file_name = sys.argv[1]
context = sys.argv[2]

start = ("<!-- :%s:" % context)
final = (":%s: -->" % context)

text = []

print("Removing context with %s in file %s" % (context, file_name))

with open(file_name, 'r') as f:
    for line in f.readlines():
        if start not in line and final not in line:
            text.append(line)

with open(file_name, 'w') as f:
    print("Updating file...")
    f.writelines(text)

print("File updated with sucess!\n")
