# AnnLineGen_RMA
[![Build](https://github.com/rma-rripken/AnnLineGen_RMA/actions/workflows/cmake-single-platform.yml/badge.svg)](https://github.com/rma-rripken/AnnLineGen_RMA/actions/workflows/cmake-single-platform.yml)

This is a project to track/build/test AnnLineGen code.

You probably want to install Intel Fortran compiler.   I used this one:  
https://registrationcenter-download.intel.com/akdlm/IRC_NAS/5e411842-8348-40cd-81f6-df193c321611/w_fortran-compiler_p_2024.0.0.49492.exe

You may have to call:
```"C:\Program Files (x86)\Intel\oneAPI\setvars.bat"```

Then checkout code and do:

```cmake -B build -DCMAKE_Fortran_COMPILER=C:\\Progra~2\\Intel\\oneAPI\\compiler\\2024.0\\bin\\ifort.exe```

then:

```cmake --build build```

then you can call any of the built executables directly via:

```build\src\Debug\Apr36.exe```

If that works then you can try to manually call the CTest via:

```cd build; ctest -C Debug```

Or even better:

```ctest --test-dir build -C Debug```

This should produce output like:

```
Internal ctest changing into directory: J:/Workspaces/git/AnnLineGen_DLL/build
Test project J:/Workspaces/git/AnnLineGen_DLL/build
    Start 1: Apr36Test
1/6 Test #1: Apr36Test ........................   Passed    0.37 sec
    Start 2: May36Test
2/6 Test #2: May36Test ........................   Passed    0.14 sec
    Start 3: Apr36ANNECTest
3/6 Test #3: Apr36ANNECTest ...................   Passed    0.07 sec
    Start 4: May36ANNECTest
4/6 Test #4: May36ANNECTest ...................   Passed    0.04 sec
    Start 5: Apr36ANNX2Test
5/6 Test #5: Apr36ANNX2Test ...................   Passed    0.07 sec
    Start 6: May36ANNX2Test
6/6 Test #6: May36ANNX2Test ...................   Passed    0.02 sec

100% tests passed, 0 tests failed out of 6

Total Test time (real) =   0.73 sec
```
