#!/bin/bash

cp -r $SRC_DIR/dolfin_adjoint $PREFIX/lib/python2.7/site-packages/.
cp -r $SRC_DIR/fenics_adjoint $PREFIX/lib/python2.7/site-packages/.
cp -r $SRC_DIR/firedrake_adjoint $PREFIX/lib/python2.7/site-packages/.
cp -r $SRC_DIR/tests_dolfin $PREFIX/lib/python2.7/site-packages/.
cp -r $SRC_DIR/tests_firedrake $PREFIX/lib/python2.7/site-packages/.
cp -r $SRC_DIR/timestepping $PREFIX/lib/python2.7/site-packages/.