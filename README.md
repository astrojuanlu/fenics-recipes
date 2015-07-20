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
$ conda build eigen3 petsc petsc4py slepc instant ufl fiat ffc dolfin fenics --python 2.7
$ conda install fenics mkl --use-local
```

Requirements:

* GCC (C, C++ and Fortran)
* Bash (Anaconda only works with this shell)

## FAQ

### `Error: No packages found matching ...` when installing

You probably forgot to specify the channel, or to add them to your conda
configuration, as explained above.

### `ImportError: /lib64/libc.so.6: version 'GLIBC_2.14' not found`

Maybe you installed the latest FEniCS version but your system is too old.
Try to install FEniCS 1.4.0 from the channel
https://conda.binstar.org/juanlu001/channel/fenics:1.4.0:centos as explained
above.

### `ImportError: ... cannot open shared object file: No such file or directory`

There is some sort of linking problem in your system. Perhaps you have
to install some of the Boost system requirements, specially libbz2. To diagnose
this problem you can use the `ldd` utility:

`ldd <INSTALL_PATH>/anaconda/envs/fenics27/lib/python2.7/site-packages/dolfin/cpp/_common.so`

### `DOLFIN runtime dependency is not met. Install the following python module: 'ffc' and make sure its location is listed in PYTHONPATH`

Many times this error has nothing to do with FFC being not installed. Please try

`>>> import ffc`

in a Python session to see the real problem.

### My error is not listed above

Please open an issue at https://github.com/juanlu001/fenics-recipes/issues.
In the meanwhile, you can try and build your own conda packages from the recipes.

## References

* Anaconda Python distribution https://store.continuum.io/cshop/anaconda
* Introduction of conda-build http://continuum.io/blog/new-advances-in-conda
* Documentation http://conda.pydata.org/docs/build.html
