
F90=gfortran
TARGET=linkerError
FLAGS=
LIBS=
LIBS=-fopenmp

linkerError: linkerError.o
	$(F90) $(LIBS) linkerError.o -o linkerError

all : linkerError

%.o: %.f90
	$(F90) $(FLAGS) -c $<

clean :
	rm -rf *.o $(TARGET)

.PHONY: clean

.DEFAULT_GOAL := all
