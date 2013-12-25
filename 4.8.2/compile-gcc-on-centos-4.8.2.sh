#!/bin/bash

# Download and install it.
mkdir /shared/tools/gcc/4.8.2
cd /shared/tools/gcc/4.8.2
wget http://projects.joelinoff.com/gcc-4.8.2/bld.sh
chmod a+x bld.sh
 
# Optionally there is also a very simple Makefile.
wget http://projects.joelinoff.com/gcc-4.8.2/Makefile
 
# bld.sh doesn't check for packages
# This is one that I needed.
# if not installed you will see a missing gnu/stabs-32.h error late in the process.
# I also had to install texinfo, you may have to install others.
sudo yum install -y glibc-devel texinfo

# You can run bld.sh directly or you can simply type "make" if you downloaded
# the Makefile.
./bld.sh 2>&1| tee bld.log