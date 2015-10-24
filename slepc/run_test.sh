ln -s $PREFIX/bin/gfortran $PREFIX/bin/f95
f95 --help

cd $SRC_DIR
make SLEPC_DIR=$PREFIX PETSC_DIR=$PREFIX PETSC_ARCH="" test

rm $PREFIX/bin/f95
