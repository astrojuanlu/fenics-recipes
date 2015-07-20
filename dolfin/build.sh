#!/bin/bash

mkdir build
cd build

export BLAS_DIR=$LIBRARY_PATH
export AMD_DIR=$SP_DIR/petsc
export UMFPACK_DIR=$SP_DIR/petsc

cmake .. \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  -DCMAKE_INCLUDE_PATH=$INCLUDE_PATH \
  -DCMAKE_LIBRARY_PATH=$LIBRARY_PATH
make install
