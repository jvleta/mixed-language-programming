#!/bin/bash

gfortran Program.f90 -c
g++ SandBox.cpp -c 
gfortran -o test SandBox.o Program.o -lstdc++