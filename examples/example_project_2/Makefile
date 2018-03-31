F90=gfortran
TARGET=myProgram
LIBS=-L./myLibrary/lib -lgeometry
INCLUDE_FLAGS=
INCLUDE_FLAGS=-I./myLibrary/include
FLAGS=

all :
	$(MAKE) myLibrary
	$(MAKE) myProgram

myProgram: myProgram.o
	$(F90) myProgram.o $(LIBS) -o myProgram

myLibrary:
	cd myLibrary && $(MAKE) all

%.o: %.f90
	$(F90) $(FLAGS) $(INCLUDE_FLAGS) -c $<

clean :
	rm -rf *.o $(TARGET)
	cd myLibrary && $(MAKE) clean

.PHONY: all myLibrary clean

.DEFAULT_GOAL := all
