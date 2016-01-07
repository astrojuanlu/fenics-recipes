export CC=$PREFIX/bin/gcc
export CXX=$PREFIX/bin/g++

conda install -y pytest
pip install pytest-xdist

cd $SRC_DIR/test/unit
py.test -n ${CPU_COUNT}
