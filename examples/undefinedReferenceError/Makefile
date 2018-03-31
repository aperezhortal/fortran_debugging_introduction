F90=gfortran
TARGET=undefinedReferenceError
LIBS=-L./externalModule
INCLUDE_FLAGS=
INCLUDE_FLAGS=-I./externalModule
FLAGS=

all :
	$(MAKE) externalModule
	$(MAKE) undefinedReferenceError

undefinedReferenceError: undefinedReferenceError.o
	$(F90) $(LIBS) undefinedReferenceError.o externalModule.o -o undefinedReferenceError

externalModule:
	cd externalModule && $(MAKE) all

%.o: %.f90
	$(F90) $(FLAGS) $(INCLUDE_FLAGS) -c $<

clean :
	rm -rf *.o $(TARGET)
	cd externalModule && $(MAKE) clean

.PHONY: all externalModule clean

.DEFAULT_GOAL := all
