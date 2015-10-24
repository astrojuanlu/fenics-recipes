export CC=$PREFIX/bin/gcc
export CXX=$PREFIX/bin/g++

cd $SRC_DIR
make PETSC_DIR=$PREFIX PETSC_ARCH="" test
