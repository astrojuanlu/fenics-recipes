# fenics-recipes

This repository contains conda recipes for the FEniCS libraries.
The recipes work with conda-build, the build system created for
the Anaconda Python distribution.

## Installation from binstar (Linux 64bit)

Packages are generated for linux-64 in the juanlu001 binstar channel.
To install them, just type:

`$ conda install fenics mkl --channel juanlu001`

## Local building

The recipes allow for building the packages locally, for later
fast installation or even redistribution.

```
$ conda install conda-build
$ conda build boost eigen3 petsc petsc4py instant ufl fiat ffc dolfin fenics --python 27
$ conda install fenics mkl --use-local
```

Requirements

* GCC (C, C++ and Fortran)
* Bash (Anaconda only works with this shell)

## References

* Anaconda Python distribution https://store.continuum.io/cshop/anaconda
* Introduction of conda-build http://continuum.io/blog/new-advances-in-conda
* Documentation http://conda.pydata.org/docs/build.html
