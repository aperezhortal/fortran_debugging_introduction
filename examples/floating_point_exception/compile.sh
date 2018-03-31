#!/bin/bash

FC=gfortran
FLAGS=""


$FC -c $FLAGS -o mod_three.o mod_three.f90
$FC -c $FLAGS -o mod_two.o mod_two.f90
$FC -c $FLAGS -o mod_one.o mod_one.f90
$FC -c $FLAGS -o main.o main.f90
$FC $FLAGS -o main mod_three.o main.o mod_two.o mod_one.o

