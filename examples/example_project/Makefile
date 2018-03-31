F90=gfortran
TARGET=myProgram
LIBS=-L./externalModule
INCLUDE_FLAGS=
INCLUDE_FLAGS=-I./externalModule
FLAGS=

all :
	$(MAKE) externalModule
	$(MAKE) myProgram

myProgram: myProgram.o
	$(F90) $(LIBS) myProgram.o ./externalModule/externalModule.o -o myProgram

externalModule:
	cd externalModule && $(MAKE) all

%.o: %.f90
	$(F90) $(FLAGS) $(INCLUDE_FLAGS) -c $<

clean :
	rm -rf *.o $(TARGET)
	cd externalModule && $(MAKE) clean

.PHONY: all externalModule clean

.DEFAULT_GOAL := all
