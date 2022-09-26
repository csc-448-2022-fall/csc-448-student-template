#!/bin/bash
name=$(cat "student_repo.txt")
for file in `ls *.ipynb`; do
  echo "Testing $file"
  name="${file%.*}"
  pytest -vv --diff-symbols ../csc-466-student/tests/test_$name.py
done;

