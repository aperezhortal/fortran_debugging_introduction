
F90=gfortran

TARGET=syntaxError
FLAGS=
LIBS=

syntaxError: syntaxError.o
	$(F90) syntaxError.o -o syntaxError

all : syntaxError

%.o: %.f90
	$(F90) $(FLAGS) $(LIBS) -c $<

clean :
	rm -rf *.o $(TARGET)

.PHONY: clean

.DEFAULT_GOAL := all
