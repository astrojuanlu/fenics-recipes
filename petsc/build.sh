#!/bin/bash

./configure \
  --prefix=$PREFIX \
  --with-blas-lapack-dir=$LIBRARY_PATH \
  --download-suitesparse \
  --with-shared-libraries
make
make install

# Add more build steps here, if they are necessary.

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
