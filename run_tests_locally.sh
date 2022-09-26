#!/bin/bash
repo=$(cat "student_repo.txt")
echo $name
for file in `ls *.ipynb`; do
  echo "Testing $file"
  name="${file%.*}"
  pytest -vv --diff-symbols ../$repo/tests/test_$name.py
done;

