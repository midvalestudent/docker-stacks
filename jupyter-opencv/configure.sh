#!/bin/bash

git config filter.clean_ipynb.clean "python thirdparty/containers/jupyter-opencv/filters/nb_strip_output.py"
git config filter.clean_ipynb.smudge cat
