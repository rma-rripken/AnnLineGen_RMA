cmake_minimum_required(VERSION 3.27)


project(my_project  VERSION 0.1
        DESCRIPTION "My Fortran program"
        LANGUAGES Fortran)
enable_language(Fortran)


# Source code
add_subdirectory(src)
install(TARGETS my_exe     DESTINATION "bin")