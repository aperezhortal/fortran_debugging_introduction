#!/bin/bash

# -Wmaybe-uninitialized  -Wuninitialized warnings are possible only in optimized compilation!
# Hence, at least -O optimization is needed
gfortran -Wmaybe-uninitialized  -Wuninitialized -O -o compute_factorial compute_factorial.f90

