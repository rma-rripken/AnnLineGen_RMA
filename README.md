# AnnLineGen_RMA

Beginnings of a project to track/build/test AnnLineGen code.

You probably want to install Intel Fortran compiler

Then checkout code and do:

cmake -B build -DCMAKE_Fortran_COMPILER=C:\\Progra~2\\Intel\\oneAPI\\compiler\\2024.0\\bin\\ifort.exe

then:

cmake --build build

then:

build\src\Debug\Apr36.exe
