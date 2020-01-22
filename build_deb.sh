#!/bin/bash

. chk_subm.sh

chk_subm "$@"

cd build

python setup.py --command-packages=stdeb.command debianize

tar czvf ../gnmi-svr_0.1.orig.tar.gz .

dpkg-buildpackage
