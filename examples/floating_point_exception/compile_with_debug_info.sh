#!/bin/bash

FC=gfortran
FLAGS="-g -ffpe-trap=underflow,overflow,invalid,zero"

$FC -c $FLAGS -o mod_three.o mod_three.f90
$FC -c $FLAGS -o mod_two.o mod_two.f90
$FC -c $FLAGS -o mod_one.o mod_one.f90
$FC -c $FLAGS -o main.o main.f90
$FC $FLAGS -o main_with_debug_info mod_three.o main.o mod_two.o mod_one.o

