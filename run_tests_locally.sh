#!/bin/bash
for file in `ls *.ipynb`; do
  echo "Testing $file"
  name="${file%.*}"
  pytest -vv --diff-symbols ../csc-466-student/tests/test_$name.py
done;

