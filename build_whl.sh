#!/bin/bash

. chk_subm.sh

chk_subm "$@"

python setup.py bdist_wheel
