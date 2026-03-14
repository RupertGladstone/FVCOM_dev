#!/bin/bash

export COMPILER="gcc-native/14.2"
export MPI="cray-mpich/8.1.32"

# setup module environment
module load PrgEnv-gnu/8.6.0 LUMI/25.03  partition/G rocm/6.3.4 cray-hdf5/1.14.3.5 cray-netcdf/4.9.0.17 cray-libsci/25.03.0  Boost/1.88.0-cpeGNU-25.03
module load METIS/5.1.0-cpeGNU-25.03
module load makedepf90

# specific parameters for this build
cp make.inc.lumi make.inc

# remake dependencies
rm makedepends
touch makedepends
make depend

# build
#make
