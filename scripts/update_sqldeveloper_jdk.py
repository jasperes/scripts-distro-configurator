import sys

file_name = sys.argv[1]
to_append = ('SetJavaHome %s\n' % sys.argv[2])
text = []

print('File to update %s' % file_name)

with open(file_name, 'r') as f:
    for line in f.readlines():
        if 'SetJavaHome' in line:
            text.append(to_append)
            continue

        text.append(line)

with open(file_name, 'w') as f:
    print('Updating...')
    f.writelines(text)

print('Updated!\n')
