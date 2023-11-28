real function ANN_X2ARRAY(Parameters, LastElementIndex) 
!DEC$ ATTRIBUTES DLLEXPORT :: ANN_X2Array
implicit none

real :: ANN_X2

double precision, intent(in) :: Parameters(20)
integer, intent(in) :: LastElementIndex
real :: outputANN_X2

outputANN_X2 = ANN_X2(real(Parameters(1)),real(Parameters(2)),real(Parameters(3)),real(Parameters(4)),real(Parameters(5)),real(Parameters(6)),real(Parameters(7)),real(Parameters(8)),real(Parameters(9)),real(Parameters(10)),int(Parameters(11)),int(Parameters(12)),int(Parameters(13)),int(Parameters(14)),int(Parameters(15)),int(Parameters(16)),int(Parameters(17)),int(Parameters(18)))

ANN_X2ARRAY = outputANN_X2
end function ANN_X2ARRAY


real function GetNDO_X2ARRAY(Parameters, LastElementIndex) 
!DEC$ ATTRIBUTES DLLEXPORT :: GetNDO_X2Array
implicit none

double precision, intent(in) :: Parameters(20)
integer, intent(in) :: LastElementIndex
real :: outputGetNDO_X2

INTERFACE
    FUNCTION getNDO_x2(X2, X2_prv0,X2_prv1,X2_prv2,X2_prv3,X2_prv4, & 
                       DO_prv0,DO_prv1,DO_prv2,DO_prv3, &  
                       mon0,mon1,mon2,mon3,mon4,ave_type,currMonth,currYear,BeginDay, EndDay)  RESULT (requiredNDO) 
        USE, INTRINSIC :: ISO_C_BINDING
        REAL,INTENT(IN)    ::  X2, &
                X2_prv0,X2_prv1,X2_prv2,X2_prv3,X2_prv4, & 
                DO_prv0,DO_prv1,DO_prv2,DO_prv3 
        integer(C_LONG), INTENT(IN) :: currMonth, currYear,mon0,mon1,mon2,mon3,mon4,ave_type
        integer(C_LONG), optional, intent(in) :: BeginDay, EndDay !only used in ave_type ==10
        REAL   :: requiredNDO
    END FUNCTION getNDO_x2
END INTERFACE

outputGetNDO_X2 = getNDO_X2(real(Parameters(1)),real(Parameters(2)),real(Parameters(3)),real(Parameters(4)),real(Parameters(5)),real(Parameters(6)),real(Parameters(7)),real(Parameters(8)),real(Parameters(9)),real(Parameters(10)),int(Parameters(11)),int(Parameters(12)),int(Parameters(13)),int(Parameters(14)),int(Parameters(15)),int(Parameters(16)),int(Parameters(17)),int(Parameters(18)),int(Parameters(19)),int(Parameters(20)))

GetNDO_X2ARRAY = outputGetNDO_X2
end function GetNDO_X2ARRAY
    

real function ANN_x2_curMonInpSplitARRAY(Parameters, LastElementIndex) 
!DEC$ ATTRIBUTES DLLEXPORT :: ANN_x2_curMonInpSplitARRAY
implicit none

double precision, intent(in) :: Parameters(24)
integer, intent(in) :: LastElementIndex
real :: outputANN_x2_curMonInpSplit

INTERFACE
    FUNCTION ANN_x2_curMonInpSplit(X2_prv0,X2_prv1,X2_prv2,X2_prv3,X2_prv4, & 
                                   DO_prv0,DO_prv1,DO_prv2,DO_prv3,DO_prv4,DO_prv4_1,DO_prv4_2, &  
                                   mon0,mon1,mon2,mon3,mon4,mon4_1,mon4_2,ave_type,currMonth,currYear,BeginDay,EndDay)  RESULT (outputX2) 
        USE, INTRINSIC :: ISO_C_BINDING
        REAL,INTENT(IN) :: X2_prv0,X2_prv1,X2_prv2,X2_prv3,X2_prv4, & 
                           DO_prv0,DO_prv1,DO_prv2,DO_prv3,DO_prv4,DO_prv4_1,DO_prv4_2  
        integer(C_LONG), INTENT(IN) :: currMonth, currYear,mon0,mon1,mon2,mon3,mon4,mon4_1,mon4_2,ave_type
        integer(C_LONG), optional, intent(in) :: BeginDay, EndDay !only used in ave_type ==10
        REAL    :: outputX2
    END FUNCTION ANN_x2_curMonInpSplit
END INTERFACE

outputANN_x2_curMonInpSplit = ANN_x2_curMonInpSplit(real(Parameters(1)),real(Parameters(2)),real(Parameters(3)),real(Parameters(4)),real(Parameters(5)),real(Parameters(6)),real(Parameters(7)),real(Parameters(8)),real(Parameters(9)),real(Parameters(10)),real(Parameters(11)),real(Parameters(12)),int(Parameters(13)),int(Parameters(14)),int(Parameters(15)),int(Parameters(16)),int(Parameters(17)),int(Parameters(18)),int(Parameters(19)),int(Parameters(20)),int(Parameters(21)),int(Parameters(22)),int(Parameters(23)),int(Parameters(24)))

ANN_x2_curMonInpSplitARRAY = outputANN_x2_curMonInpSplit
end function ANN_x2_curMonInpSplitARRAY     
    
    
real function GetNDO_x2_curMonNDOSplitARRAY(Parameters, LastElementIndex) 
!DEC$ ATTRIBUTES DLLEXPORT :: GetNDO_x2_curMonNDOSplitARRAY
implicit none

double precision, intent(in) :: Parameters(24)
integer, intent(in) :: LastElementIndex
real :: outputGetNDO_x2_curMonNDOSplit

INTERFACE
    FUNCTION getNDO_x2_curMonNDOSplit(X2,X2_prv0,X2_prv1,X2_prv2,X2_prv3,X2_prv4, & 
                                      DO_prv0,DO_prv1,DO_prv2,DO_prv3,DO_prv4_1,DO_prv4_2, &  
                                      mon0,mon1,mon2,mon3,mon4,mon4_1,mon4_2,ave_type,currMonth,currYear,BeginDay, EndDay)  RESULT (requiredNDO) 
        REAL,INTENT(IN) :: X2,X2_prv0,X2_prv1,X2_prv2,X2_prv3,X2_prv4, & 
                           DO_prv0,DO_prv1,DO_prv2,DO_prv3,DO_prv4_1,DO_prv4_2  
        integer, INTENT(IN) :: currMonth, currYear,mon0,mon1,mon2,mon3,mon4,mon4_1,mon4_2,ave_type
        integer, optional, intent(in) :: BeginDay, EndDay !only used in ave_type ==10
        REAL   :: requiredNDO
    END FUNCTION getNDO_x2_curMonNDOSplit
END INTERFACE

outputGetNDO_x2_curMonNDOSplit = GetNDO_x2_curMonNDOSplit(real(Parameters(1)),real(Parameters(2)),real(Parameters(3)),real(Parameters(4)),real(Parameters(5)),real(Parameters(6)),real(Parameters(7)),real(Parameters(8)),real(Parameters(9)),real(Parameters(10)),real(Parameters(11)),real(Parameters(12)),int(Parameters(13)),int(Parameters(14)),int(Parameters(15)),int(Parameters(16)),int(Parameters(17)),int(Parameters(18)),int(Parameters(19)),int(Parameters(20)),int(Parameters(21)),int(Parameters(22)),int(Parameters(23)),int(Parameters(24)))

GetNDO_x2_curMonNDOSplitARRAY = outputGetNDO_x2_curMonNDOSplit
end function GetNDO_x2_curMonNDOSplitARRAY    
    
    