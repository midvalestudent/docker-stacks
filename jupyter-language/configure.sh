#!/bin/sh

git config filter.clean_ipynb.clean "python jupyter-language/filters/nb_strip_output.py"
git config filter.clean_ipynb.smudge cat
