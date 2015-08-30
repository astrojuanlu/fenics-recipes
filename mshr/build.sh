#!/bin/bash

cmake \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  -DCMAKE_INCLUDE_PATH=$INCLUDE_PATH \
  -DCMAKE_LIBRARY_PATH=$LIBRARY_PATH \
  -DENABLE_TESTS=1 \
  .
make
make install

cd $SRC_DIR
make test
