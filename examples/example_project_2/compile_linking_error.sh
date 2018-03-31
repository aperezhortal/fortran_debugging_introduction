#!/bin/bash

#   Linking Error example
#   =====================


# Compile the library first
cd myLibrary # Change directory
#  -c : Compile to an object file
#  -o : Specifies the name of the output file.
#  -J : This option specifies where to put .mod files.
gfortran -Jinclude  -c module_circle.f90 -o module_circle.o
gfortran -Jinclude  -c module_rectangle.f90 -o module_rectangle.o

# Now let's create my static library "libgeometry"
ar -rv lib/libgeometry.a module_circle.o module_rectangle.o

# Compile the myProgram.f90 program (no linking!)
cd .. # Return to the project dir
# -I : adds include directory of header (.mod) files 
gfortran  -I./myLibrary/include -c myProgram.f90


# Here and ERROR DURING LINKING will occur
# ----------------------------------------

# Object that needs the library was placed after the libraries definitions.

# Link myProgram and the external module to create the executable
# -lName : Search the library named "libName.a" or "libName.so"
# -L: Add directories where libraries are search
gfortran -L./myLibrary/lib -lgeometry myProgram.o  -o myProgram


