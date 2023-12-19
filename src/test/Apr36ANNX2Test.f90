!  Apr36ANNX2Test.f90
!
!  FUNCTIONS:
!  Apr36ANNX2Test - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: Apr36ANNX2Test
!
!  PURPOSE:  To call ANNX2 function
!
!****************************************************************************

program Apr36ANNX2Test
    implicit none

    ! Variables   
    REAL, DIMENSION(1:5) :: SMSCG_OP, Qexp_pr
    INTEGER, DIMENSION(1:5) :: mon
    INTEGER :: ave_t, currM, currY

    REAL :: target
    REAL :: actual_val
    DOUBLE PRECISION :: epsilon

    INTERFACE
        FUNCTION Ann_X2(SMSCG_OP0, SMSCG_OP1, SMSCG_OP2, SMSCG_OP3, SMSCG_OP4, &
                Qexp_prv0, Qexp_prv1, Qexp_prv2, Qexp_prv3, Qexp_prv4, &
                mon0, mon1, mon2, mon3, mon4, &
                ave_type, currMonth, currYear, BeginDay, EndDay)  RESULT (outputX2)
            IMPLICIT NONE
            REAL, INTENT(IN) :: SMSCG_OP0, SMSCG_OP1, SMSCG_OP2, SMSCG_OP3, SMSCG_OP4, &
                    Qexp_prv0, Qexp_prv1, Qexp_prv2, Qexp_prv3, Qexp_prv4
            integer, INTENT(IN) :: currMonth, currYear
            integer, optional, intent(in) :: BeginDay, EndDay
            INTEGER :: mon0, mon1, mon2, mon3, mon4, ave_type
            REAL :: outputX2
        END FUNCTION
    END INTERFACE

    open(UNIT = 100, file = 'input_Apr36ANNX2.txt', status = 'old')

    read (100, *) ave_t;
    read (100, *) currM;
    read (100, *) currY;

    read (100, *)                              ;
    !consume ! SMSCG_OP(1:5)
    read (100, *) SMSCG_OP
    read (100, *)                              ;
    !consume ! Qexp_pr(1:5)
    read (100, *) Qexp_pr
    read (100, *)                              ;
    !consume ! mon(1:5)
    read (100, *) mon

    !consume ! expected tolerance
    read (100, *)                              ;
    read (100, *) epsilon
    !consume ! expected EM value
    read (100, *)                              ;
    ! Reads 3 target value
    read (100, *) target

    close(UNIT = 100)

    actual_val = Ann_X2(&
            SMSCG_OP(1), SMSCG_OP(2), SMSCG_OP(3), SMSCG_OP(4), SMSCG_OP(5), &
            Qexp_pr(1), Qexp_pr(2), Qexp_pr(3), Qexp_pr(4), Qexp_pr(5), &
            mon(1), mon(2), mon(3), mon(4), mon(5), &
            ave_t, currM, currY)

    if (abs(actual_val - target) > epsilon) then

        ! log the call and the values:
        write(*, *) "Ann_X2("
        write(*, *) SMSCG_OP(1), SMSCG_OP(2), SMSCG_OP(3), SMSCG_OP(4), SMSCG_OP(5)
        write(*, *) Qexp_pr(1), Qexp_pr(2), Qexp_pr(3), Qexp_pr(4), Qexp_pr(5)
        write(*, *) mon(1), mon(2), mon(3), mon(4), mon(5)
        write(*, *) ave_t, currM, currY, ") = ", actual_val

        write(*, *) "actual_val ", actual_val, " is not within ", epsilon, " of ", target, ", stopping program with status -1"
        stop -1
    end if

end program Apr36ANNX2Test