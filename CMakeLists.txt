cmake_minimum_required(VERSION 3.27)


project(AnnLineGen  VERSION 0.1
        DESCRIPTION "AnnLineGen "
        LANGUAGES Fortran)
enable_language(Fortran)


# Source code
add_subdirectory(src)

install(TARGETS Apr36     DESTINATION "bin")
install(TARGETS May36     DESTINATION "bin")

install(TARGETS Apr36ANNECTest     DESTINATION "bin")
install(TARGETS May36ANNECTest     DESTINATION "bin")
install(TARGETS Apr36ANNX2Test     DESTINATION "bin")

include(CTest)
enable_testing()

add_test(NAME Apr36Test
         COMMAND Apr36 
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})

add_test(NAME May36Test
         COMMAND May36
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})

add_test(NAME Apr36ANNECTest
          COMMAND Apr36ANNECTest
          WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})

add_test(NAME May36ANNECTest
          COMMAND May36ANNECTest
          WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})

add_test(NAME Apr36ANNX2Test
          COMMAND Apr36ANNX2Test
          WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})

add_test(NAME May36ANNX2Test
          COMMAND May36ANNX2Test
          WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
