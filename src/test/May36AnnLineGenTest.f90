!  May36AnnLineGenTest.f90
!
!  FUNCTIONS:
!  May36AnnLineGenTest - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: May36AnnLineGenTest
!
!  PURPOSE:  To call LineGen function and output slope and intercept/ to debug the LineGen process.
!
!****************************************************************************

    program May36AnnLineGenTest

    implicit none

    ! Variables   
      DOUBLE PRECISION, DIMENSION(1:4) :: Qsac_pr, Qexp_pr
      DOUBLE PRECISION, DIMENSION(1:5) :: Qsjr_pr, DICU_pr, Qsac_oth_pr,Qexp_oth_pr     
      REAL, DIMENSION(1:5) :: VernEC_pr, DXC_pr
      
      INTEGER, DIMENSION(1:5) :: mon1
      REAL :: ECTGT,liner1,liner2
      INTEGER :: loca,vari,ave_t,currM,currY,ForceOp,indx,ind1
      REAL :: slp_int !,AnnLineGen
    
      DOUBLE PRECISION :: target_value, epsilon

      
      INTERFACE
          FUNCTION AnnLineGen(Qsac_prv,Qexp_prv,Qsjr_prv,DXC_prv,DICU_prv,Qsac_oth_prv,Qexp_oth_prv,VernEC_prv,mon,&
                              ECTARGET,linear1,linear2,location,variable,ave_type,&
                              currMonth,currYear,ForceOption) RESULT(value)

              DOUBLE PRECISION, INTENT(IN), DIMENSION(1:4) :: Qsac_prv,Qexp_prv
              DOUBLE PRECISION, INTENT (IN), DIMENSION(1:5) :: Qsjr_prv,DICU_prv,Qsac_oth_prv,Qexp_oth_prv              
              REAL, INTENT (IN), DIMENSION(1:5) :: VernEC_prv,DXC_prv

              INTEGER, INTENT (IN), DIMENSION(1:5) :: mon
              REAL, INTENT(IN) :: ECTARGET,linear1,linear2
              INTEGER,INTENT(IN) :: location,variable,ave_type,currMonth,currYear,ForceOption
			  REAL :: value			  
          END FUNCTION AnnLineGen
      END INTERFACE
            
      
      open(UNIT=100, file ='EM_input_May36.txt',status='old')
      
      read (100,*) ECTGT;
      read (100,*) loca;
      read (100,*) liner1;
      read (100,*) liner2;
      read (100,*) vari;
      read (100,*) ave_t;
      read (100,*) currM;
      read (100,*) currY;
      read (100,*) ForceOp;
      read (100,*)                              ;
      read (100,*)                              ;  read (100,*) Qsac_pr
      read (100,*)                              ;  read (100,*) Qexp_pr     
      read (100,*)                              ;  read (100,*) Qsjr_pr
      read (100,*)                              ;  read (100,*) DXC_pr
      read (100,*)                              ;  read (100,*) DICU_pr
      read (100,*)                              ;  read (100,*) Qsac_oth_pr      
      read (100,*)                              ;  read (100,*) Qexp_oth_pr      
      read (100,*)                              ;  read (100,*) VernEC_pr
      read (100,*)                              ;  read (100,*) mon1

      close(UNIT=100) 

      !end do
200   format(1x,4(1x,f19.12))
300   format(1x,5(1x,f19.12))      
      
     slp_int = AnnLineGen(Qsac_pr,Qexp_pr,Qsjr_pr,DXC_pr,DICU_pr,Qsac_oth_pr,Qexp_oth_pr,VernEC_pr,mon1,&
                          ECTGT,liner1,liner2,loca,vari,ave_t,currM,currY,ForceOp)  
     
 
     write(*,*) slp_int

    target_value = 1.5443692
    epsilon = 0.001

    if (abs(slp_int - target_value) > epsilon) then
        write(*,*) "slp_int ", slp_int,  " is not within ", epsilon, " of ", target_value, ", stopping program with status -1"
        stop -1
    end if    

    end program May36AnnLineGenTest