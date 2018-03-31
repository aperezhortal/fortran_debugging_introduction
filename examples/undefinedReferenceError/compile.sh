#!/bin/bash -x

ProjectDir=$PWD
externalModuleDir=$PWD/externalModule

# Compile the external module (no linking!)
cd $externalModule
gfortran -c externalModule.f90 -o externalModule.o

# Compile the undefinedReferenceError.f90 program (no linking!)
cd $ProjectDir
gfortran -I./externalModule -c undefinedReferenceError.f90 -o undefinedReferenceError.o

# Linking
gfortran undefinedReferenceError.o externalModule/externalModule.o -o undefinedReferenceError
