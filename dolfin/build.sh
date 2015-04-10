#!/bin/bash

mkdir build
cd build

export BLAS_DIR=$LIBRARY_PATH
export AMD_DIR=$SP_DIR/petsc
export UMFPACK_DIR=$SP_DIR/petsc
export SCOTCH_DIR=$SP_DIR/scotch

cmake .. \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  -DCMAKE_INCLUDE_PATH=$INCLUDE_PATH \
  -DCMAKE_LIBRARY_PATH=$LIBRARY_PATH \
  -DQT_QMAKE_EXECUTABLE=$PREFIX/bin/qmake \
  -DQT_UIC_EXECUTABLE=$PREFIX/bin/uic \
  -DQT_MOC_EXECUTABLE=$PREFIX/bin/moc \
  -DQT_RCC_EXECUTABLE=$PREFIX/bin/rcc
make install
