#!/bin/bash

export SLEPC_DIR=$SRC_DIR
export PETSC_DIR=$PREFIX

ln -s $PREFIX/bin/gfortran $PREFIX/bin/f95

./configure --prefix=$PREFIX
make
make install

# Add more build steps here, if they are necessary.
rm $PREFIX/bin/f95

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
