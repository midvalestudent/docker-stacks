#!/bin/sh

git config filter.clean_ipynb.clean "python jupyter-base/filters/nb_strip_output.py"
git config filter.clean_ipynb.smudge cat

export NB_UID=$UID
