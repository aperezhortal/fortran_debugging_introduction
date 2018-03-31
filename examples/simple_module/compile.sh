#!/bin/bash

gfortran -c simple_module.f90

echo "Show object contents"
nm simple_module.o # Object viewer