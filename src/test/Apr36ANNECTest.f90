!  Apr36ANNECTest.f90
!
!  FUNCTIONS:
!  Apr36ANNECTest - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: Apr36ANNECTest
!
!  PURPOSE:  To call ANNEC function and output slope and intercept/ to debug the LineGen process.
!
!****************************************************************************

program Apr36ANNECTest
    implicit none

    ! Variables   
    REAL, DIMENSION(1:5) :: Qsac_pr, Qexp_pr
    REAL, DIMENSION(1:5) :: Qsjr_pr, DICU_pr, Qsac_oth_pr, Qexp_oth_pr
    REAL, DIMENSION(1:5) :: VernEC_pr, DXC_pr
    REAL, DIMENSION(1:3) :: targets

    INTEGER, DIMENSION(1:5) :: mon

    INTEGER :: loca, ave_t, currM, currY, indx, ind1
    REAL :: actual_val

    DOUBLE PRECISION :: epsilon

    INTERFACE
        FUNCTION ANNEC(&
                Qsac_prv0, Qsac_prv1, Qsac_prv2, Qsac_prv3, Qsac_prv4, &
                Qexp_prv0, Qexp_prv1, Qexp_prv2, Qexp_prv3, Qexp_prv4, &
                Qsjr_prv0, Qsjr_prv1, Qsjr_prv2, Qsjr_prv3, Qsjr_prv4, &
                DXC_prv0, DXC_prv1, DXC_prv2, DXC_prv3, DXC_prv4, &
                DICU_prv0, DICU_prv1, DICU_prv2, DICU_prv3, DICU_prv4, &
                Qsac_oth_prv0, Qsac_oth_prv1, Qsac_oth_prv2, Qsac_oth_prv3, Qsac_oth_prv4, &
                Qexp_oth_prv0, Qexp_oth_prv1, Qexp_oth_prv2, Qexp_oth_prv3, Qexp_oth_prv4, &
                VernEC_prv0, VernEC_prv1, VernEC_prv2, VernEC_prv3, VernEC_prv4, &
                mon0, mon1, mon2, mon3, mon4, &
                location, ave_type, currMonth, currYear, BeginDay, EndDay)  RESULT (outputEC)

            REAL, INTENT(IN) :: &
                    Qsac_prv0, Qsac_prv1, Qsac_prv2, Qsac_prv3, Qsac_prv4, &
                    Qexp_prv0, Qexp_prv1, Qexp_prv2, Qexp_prv3, Qexp_prv4, &
                    Qsjr_prv0, Qsjr_prv1, Qsjr_prv2, Qsjr_prv3, Qsjr_prv4, &
                    DXC_prv0, DXC_prv1, DXC_prv2, DXC_prv3, DXC_prv4, &
                    DICU_prv0, DICU_prv1, DICU_prv2, DICU_prv3, DICU_prv4, &
                    Qsac_oth_prv0, Qsac_oth_prv1, Qsac_oth_prv2, Qsac_oth_prv3, Qsac_oth_prv4, &
                    Qexp_oth_prv0, Qexp_oth_prv1, Qexp_oth_prv2, Qexp_oth_prv3, Qexp_oth_prv4, &
                    VernEC_prv0, VernEC_prv1, VernEC_prv2, VernEC_prv3, VernEC_prv4

            INTEGER, INTENT(IN) :: mon0, mon1, mon2, mon3, mon4
            INTEGER, INTENT(IN) :: location, ave_type
            INTEGER, INTENT(IN) :: currMonth, currYear !shengjun 2/14/2005
            INTEGER, optional, intent(in) :: BeginDay, EndDay !only used in ave_type ==10

            REAL :: outputEC
        END FUNCTION ANNEC
    END INTERFACE

    open(UNIT = 100, file = 'input_Apr36ANNEC.txt', status = 'old')


    read (100, *) ave_t;
    read (100, *) currM;
    read (100, *) currY;

    read (100, *)                              ;
    !consume ! Qsac_pr(1:5)
    read (100, *) Qsac_pr
    read (100, *)                              ;
    !consume ! Qexp_pr(1:5)
    read (100, *) Qexp_pr
    read (100, *)                              ;
    !consume ! Qsjr_pr(1:5)
    read (100, *) Qsjr_pr
    read (100, *)                              ;
    !consume ! DXC_pr(1:5)
    read (100, *) DXC_pr
    read (100, *)                              ;
    !consume ! DICU_pr(1:5)
    read (100, *) DICU_pr
    read (100, *)                              ;
    !consume ! Qsac_oth_pr(1:5)
    read (100, *) Qsac_oth_pr
    read (100, *)                              ;
    !consume ! Qexp_oth_pr(1:5)
    read (100, *) Qexp_oth_pr
    read (100, *)                              ;
    !consume ! VernEC_pr(1:5)
    read (100, *) VernEC_pr
    read (100, *)                              ;
    !consume ! mon(1:5)
    read (100, *) mon

    !consume ! expected tolerance
    read (100, *)                              ;
    read (100, *) epsilon
    !consume ! expected EM value
    read (100, *)                              ;
    ! Reads 3 target values from the file: JP, then RS, then EM
    read (100, *) targets

    close(UNIT = 100)

    300   format(1x, 5(1x, f19.12))

    ! No longer reads the location from the input file.  Now we loop over 1=JP, 2=RS, 3=EM
    do loca = 1, 3
        actual_val = ANNEC(&
            Qsac_pr(1), Qsac_pr(2), Qsac_pr(3), Qsac_pr(4), Qsac_pr(5), &
            Qexp_pr(1), Qexp_pr(2), Qexp_pr(3), Qexp_pr(4), Qexp_pr(5), &
            Qsjr_pr(1), Qsjr_pr(2), Qsjr_pr(3), Qsjr_pr(4), Qsjr_pr(5), &
            DXC_pr(1), DXC_pr(2), DXC_pr(3), DXC_pr(4), DXC_pr(5), &
            DICU_pr(1), DICU_pr(2), DICU_pr(3), DICU_pr(4), DICU_pr(5), &
            Qsac_oth_pr(1), Qsac_oth_pr(2), Qsac_oth_pr(3), Qsac_oth_pr(4), Qsac_oth_pr(5), &
            Qexp_oth_pr(1), Qexp_oth_pr(2), Qexp_oth_pr(3), Qexp_oth_pr(4), Qexp_oth_pr(5), &
            VernEC_pr(1), VernEC_pr(2), VernEC_pr(3), VernEC_pr(4), VernEC_pr(5), &
            mon(1), mon(2), mon(3), mon(4), mon(5), &
            loca, ave_t, currM, currY)

        if (abs(actual_val - targets(loca)) > epsilon) then

            ! log the call and the values:
            write(*, *) "ANNEC("
            write(*, *) Qsac_pr(1), Qsac_pr(2), Qsac_pr(3), Qsac_pr(4), Qsac_pr(5)
            write(*, *) Qexp_pr(1), Qexp_pr(2), Qexp_pr(3), Qexp_pr(4), Qexp_pr(5)
            write(*, *) Qsjr_pr(1), Qsjr_pr(2), Qsjr_pr(3), Qsjr_pr(4), Qsjr_pr(5)
            write(*, *) DXC_pr(1), DXC_pr(2), DXC_pr(3), DXC_pr(4), DXC_pr(5)
            write(*, *) DICU_pr(1), DICU_pr(2), DICU_pr(3), DICU_pr(4), DICU_pr(5)
            write(*, *) Qsac_oth_pr(1), Qsac_oth_pr(2), Qsac_oth_pr(3), Qsac_oth_pr(4), Qsac_oth_pr(5)
            write(*, *) Qexp_oth_pr(1), Qexp_oth_pr(2), Qexp_oth_pr(3), Qexp_oth_pr(4), Qexp_oth_pr(5)
            write(*, *) VernEC_pr(1), VernEC_pr(2), VernEC_pr(3), VernEC_pr(4), VernEC_pr(5)
            write(*, *) mon(1), mon(2), mon(3), mon(4), mon(5)
            write(*, *) loca, ave_t, currM, currY, ") = ", actual_val

            write(*, *) "actual_val ", actual_val, " is not within ", epsilon, " of ", targets(loca), ", stopping program with status -1"
            stop -1
        end if
    end do

end program Apr36ANNECTest