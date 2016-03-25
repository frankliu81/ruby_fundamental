#!/bin/bash

# recursively rename all files underneath the folder you runs this in
# and rename assign* to work*

# echo "hello"

# recursively read folders
# http://stackoverflow.com/questions/1333813/recursively-read-folders-and-executes-command-on-each-of-them
# find . -type d -exec echo "Hello, '{}'" \;

# loop through all ruby files in a directory, and mv file from assign* to work*
# for f in *.rb; do mv "$f" "${f/assign/work}"; done

# http://unix.stackexchange.com/questions/24954/when-is-xargs-needed
# xargs is particularly useful when you have a list of filepaths on stdin and
# want to do something with them. For example:
# $ git ls-files "*.tex" | xargs -n 1 echo sed -i "s/color/colour/g"
# sed -i "s/color/colour/g" tex/ch1/intro.tex
# sed -i "s/color/colour/g" tex/ch1/motivation.tex
# ....
# The -n 1 argument will make xargs turn each line into a command of its own.
#  The sed -i "s/color/colour/g" command will replace all occurrences of color
# with colour for the specified file.

# find all *.rb files
# find . -name '*.rb'

# print all the rb files line by line
# find . -name '*.rb' | xargs -n 1

# (works)
# http://stackoverflow.com/questions/9216291/using-find-and-rename-for-their-intended-use
# find all ruby files under this folder, replace filename that contains "assign" with "work"
find . -name '*.rb' -print0 | while read -r -d '' filename; do
  #echo mv "$filename" "${filename/assign/work}"
  mv "$filename" "${filename/assign/work}"
done

# http://www.cyberciti.biz/faq/linux-unix-bsd-xargs-construct-argument-lists-utility/
# find . -name "*.bak" -print0 | xargs -0 -I file echo mv file ~/old.files
#mv ./test/file1.bak /Users/frankliu/old../test/file1.baks
#mv ./test/file2.bak /Users/frankliu/old../test/file2.baks
