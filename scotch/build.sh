#!/bin/sh
# see http://conda.pydata.org/docs/build.html for hacking instructions.

cd src/
cat Make.inc/Makefile.inc.x86-64_pc_linux2 | \
  sed -e "s;gcc;gcc -I$INCLUDE_PATH;" >> \
  Makefile.inc
make ptscotch
cd ..

# install.
mkdir -p $PREFIX/lib/
cp lib/* $PREFIX/lib/
mkdir -p $PREFIX/bin/
cp bin/* $PREFIX/bin/
mkdir -p $PREFIX/include/
cp include/* $PREFIX/include/

