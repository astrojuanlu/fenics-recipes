export CC=$PREFIX/bin/gcc
export CXX=$PREFIX/bin/g++

pip install -i https://pypi.anaconda.org/pypi/simple pytest-xdist

cd $SRC_DIR/test/unit
py.test -n ${CPU_COUNT}
