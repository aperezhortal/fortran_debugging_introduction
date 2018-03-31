#!/bin/bash

# Compile the external module (no linking!)
cd externalModule # Change directory
#   -c : Compile to an object file
#   -o : Specifies the name of the output file.
gfortran -c externalModule.f90 -o externalModule.o

# Compile the myProgram.f90 program (no linking!)
cd .. # Return to the project dir
#  -I : adds include directory of header (.mod) files 
gfortran -I./externalModule -c myProgram.f90 -o myProgram.o

# Link myProgram and the external module to create the executable
gfortran myProgram.o externalModule/externalModule.o -o myProgram