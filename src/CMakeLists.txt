cmake_minimum_required(VERSION 3.27)
set(MY_MODS ann.f90
			annec.f90
			annecarray.f90
			AnnEc_MatchDSM2Array.f90
			AnnLineGen.f90
			AnnLineGenArray.f90
			AnnLineGen_Daily.f90
			ANNSac.f90
			annx2.f90
			ann_ext.f90
			ann_x2_ext.f90			
			ConservativeSpline.f90
			DATIME.FOR
			fnet_antioch.f90
			fnet_Beldan.f90
			fnet_CCFB.f90
			fnet_CCFB_intake.f90
			fnet_CO.f90
			fnet_CVP_intake.f90
			fnet_emm.f90
			fnet_emm_mod.f90
			fnet_jp.f90
			fnet_LosVaqueros.f90
			fnet_Mallard.f90
			fnet_MidR_intake.f90
			fnet_MTZ.f90
			fnet_orrsl.f90
			fnet_Victoria_intake.f90
			fnet_X2.f90
			ICENTURY.FOR
			IYMDJL.FOR
			SFtide.f90
			ut.f90
			X2.f90
			X2Array.f90
			X2_Daily.f90
            CACHE INTERNAL "")
add_library(AnnLineGenLib "${MY_MODS}")

add_executable(Apr36 test/Apr36AnnLineGenTest.f90)
target_link_libraries(Apr36 PRIVATE AnnLineGenLib)

add_executable(May36 test/May36AnnLineGenTest.f90)
target_link_libraries(May36 PRIVATE AnnLineGenLib)

add_executable(Apr36ANNECTest test/Apr36ANNECTest.f90)
target_link_libraries(Apr36ANNECTest PRIVATE AnnLineGenLib)

add_executable(May36ANNECTest test/May36ANNECTest.f90)
target_link_libraries(May36ANNECTest PRIVATE AnnLineGenLib)

add_executable(Apr36ANNX2Test test/Apr36ANNX2Test.f90)
target_link_libraries(Apr36ANNX2Test PRIVATE AnnLineGenLib)

add_executable(May36ANNX2Test test/May36ANNX2Test.f90)
target_link_libraries(May36ANNX2Test PRIVATE AnnLineGenLib)
