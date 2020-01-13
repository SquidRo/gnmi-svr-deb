#!/bin/bash

git submodule update

python setup.py --command-packages=stdeb.command debianize

tar czvf ../gnmi-svr_0.1.orig.tar.gz .

cp postinst debian/

dpkg-buildpackage
