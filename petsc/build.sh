#!/bin/bash

export LIBRARY_PATH=$PREFIX/lib

./configure \
  --prefix=$PREFIX \
  --with-lapack-lib=libopenblas.so \
  --with-blas-lib=libopenblas.so \
  --with-mpi-dir=$PREFIX \
  --download-suitesparse \
  --with-shared-libraries
make
make install

# Add more build steps here, if they are necessary.

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
