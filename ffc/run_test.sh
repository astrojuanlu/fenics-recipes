export CC=$PREFIX/bin/gcc
export CXX=$PREFIX/bin/g++

cd $SRC_DIR/test/unit
python test.py
