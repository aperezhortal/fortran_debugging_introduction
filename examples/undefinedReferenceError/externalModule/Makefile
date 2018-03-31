F90=gfortran
TARGET=externalModule
LIBS=
INCLUDE_FLAGS=
FLAGS=

all : externalModule

externalModule : externalModule.o

%.o: %.f90
	$(F90) $(FLAGS) $(INCLUDE_FLAGS) -c $<

clean :
	rm -rf *.o *.mod

.PHONY: all externalModule clean

.DEFAULT_GOAL := all
