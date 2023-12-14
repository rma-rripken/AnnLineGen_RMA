# AnnLineGen_RMA

Beginnings of a project to track/build/test AnnLineGen code.

You probably want to install Intel Fortran compiler.   Maybe this one:  
https://registrationcenter-download.intel.com/akdlm/IRC_NAS/5e411842-8348-40cd-81f6-df193c321611/w_fortran-compiler_p_2024.0.0.49492.exe

You may have to call:
```"C:\Program Files (x86)\Intel\oneAPI\setvars.bat"```

Then checkout code and do:

```cmake -B build -DCMAKE_Fortran_COMPILER=C:\\Progra~2\\Intel\\oneAPI\\compiler\\2024.0\\bin\\ifort.exe```

then:

```cmake --build build```

then:

```build\src\Debug\Apr36.exe```

if that works then you can try to manually call the CTest via:

```cd build; ctest -C Debug```

