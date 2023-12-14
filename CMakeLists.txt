cmake_minimum_required(VERSION 3.27)


project(AnnLineGen  VERSION 0.1
        DESCRIPTION "My Fortran program"
        LANGUAGES Fortran)
enable_language(Fortran)


# Source code
add_subdirectory(src)
#install(TARGETS AnnLineGenStandalone     DESTINATION "bin")
install(TARGETS Apr36     DESTINATION "bin")
#install(TARGETS DailyEc     DESTINATION "bin")
#install(TARGETS AnnMonth     DESTINATION "bin")
install(TARGETS Apr36ANNECTest     DESTINATION "bin")
install(TARGETS May36ANNECTest     DESTINATION "bin")

include(CTest)
enable_testing()

add_test(NAME Apr32Test
         COMMAND Apr36 
         WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})

add_test(NAME Apr36ANNECTest
          COMMAND Apr36ANNECTest
          WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})

add_test(NAME May36ANNECTest
          COMMAND May36ANNECTest
          WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})

#add_test(NAME DailyEcTest
#		COMMAND DailyEc
#		WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
		
#add_test(NAME AnnMonthTest
#		COMMAND AnnMonth
#		WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
