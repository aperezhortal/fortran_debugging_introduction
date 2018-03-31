F90=gfortran
TARGET=libgeometry.a
FLAGS=

all : myLibrary

myLibrary: module_circle.o module_rectangle.o
	ar -rv lib/$(TARGET) module_circle.o module_rectangle.o
	ranlib lib/$(TARGET)

include:
	mkdir -p $@

lib:
	mkdir -p $@

%.o: %.f90 lib include
	$(F90) -Jinclude $(FLAGS) -c $< -o $@

clean :
	rm -rf *.o .mod include/*.mod lib/*.a $(TARGET)


.PHONY: all myLibrary clean

.DEFAULT_GOAL := all

