F90=gfortran

SOURCES=typeMismatchError.f90
TARGET=typeMismatchError
FLAGS=
LIBS=

typeMismatchError: typeMismatchError.o
	$(F90) typeMismatchError.o -o typeMismatchError

all : typeMismatchError

%.o: %.f90
	$(F90) $(FLAGS) $(LIBS) -c $<

clean :
	rm -rf *.o $(TARGET)

.PHONY: clean

.DEFAULT_GOAL := all
