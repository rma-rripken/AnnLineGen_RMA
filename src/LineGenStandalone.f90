!  LineGenStandalone.f90 
!
!  FUNCTIONS:
!  LineGenStandalone - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: LineGenStandalone
!
!  PURPOSE:  To call LineGen function and output slope and intercept/ to debug the LineGen process.
!
!****************************************************************************

    program LineGenStandalone
    
    !use AnnLineGenArray_m
    !use AnnLineGen_M
    !use AnnLineGen_Daily_m
    !use ConservativeSpline_m
        

    implicit none

    ! Variables
      !REAL, DIMENSION(1:4) :: Qsac_pr, Qexp_pr
      DOUBLE PRECISION, DIMENSION(1:4) :: Qsac_pr, Qexp_pr
      DOUBLE PRECISION, DIMENSION(1:5) :: Qsjr_pr, DICU_pr, Qsac_oth_pr,Qexp_oth_pr     
      REAL, DIMENSION(1:5) :: VernEC_pr, DXC_pr
      !DOUBLE PRECISION, DIMENSION(1:5) ::   Qsjr_pr, Qsac_oth_pr, Qexp_oth_pr, DICU_pr, VernEC_pr, DXC_pr      
      INTEGER, DIMENSION(1:5) :: mon1
      REAL :: ECTGT,liner1,liner2
      INTEGER :: loca,vari,ave_t,currM,currY,ForceOp,indx,ind1
      REAL :: slp_int !,AnnLineGen
! read input
      
      INTERFACE
          FUNCTION AnnLineGen(Qsac_prv,Qexp_prv,Qsjr_prv,DXC_prv,DICU_prv,Qsac_oth_prv,Qexp_oth_prv,VernEC_prv,mon,&
                              ECTARGET,linear1,linear2,location,variable,ave_type,&
                              currMonth,currYear,ForceOption) RESULT(value)
              !REAL, INTENT(IN), DIMENSION(1:4) :: Qsac_prv,Qexp_prv
              DOUBLE PRECISION, INTENT(IN), DIMENSION(1:4) :: Qsac_prv,Qexp_prv
              DOUBLE PRECISION, INTENT (IN), DIMENSION(1:5) :: Qsjr_prv,DICU_prv,Qsac_oth_prv,Qexp_oth_prv              
              REAL, INTENT (IN), DIMENSION(1:5) :: VernEC_prv,DXC_prv
              !DOUBLE PRECISION, INTENT (IN), DIMENSION(1:5) :: Qsjr_prv,DXC_prv,Qsac_oth_prv,Qexp_oth_prv,DICU_prv,VernEC_prv
              INTEGER, INTENT (IN), DIMENSION(1:5) :: mon
              REAL, INTENT(IN) :: ECTARGET,linear1,linear2
              INTEGER,INTENT(IN) :: location,variable,ave_type,currMonth,currYear,ForceOption
			  REAL :: value			  
          END FUNCTION AnnLineGen
      END INTERFACE
      
      !Read following variables either from input file or define here
      
      !ECTGT=2780.
      !loca=3
      !liner1=5000.
      !liner2=12000.
      !vari=1    !sope(1) or intercept(2)
      !ave_t=1
      !currM=6
      !currY=1924
      !ForceOp=4      
      
      
      
      
      open(UNIT=100, file ='EM_input_Apr36.txt',status='old')
      
      !read (UNIT=100, FMT=200), Qsac_pr(1:4)
      !read (UNIT=100, FMT=200), Qexp_pr(1:4)
      !read (UNIT=100, FMT=300), Qsjr_pr(1:5)
      !read (UNIT=100, FMT=300), DXC_pr(1:5)EM
      !read (UNIT=100, FMT=300), DICU_pr(1:5)
      !read (UNIT=100, FMT=300), Qsac_oth_pr(1:5)      
      !read (UNIT=100, FMT=300), Qexp_oth_pr(1:5)      
      !read (UNIT=100, FMT=300), VernEC_pr(1:5)
      !read (UNIT=100, FMT=400), mon1(1:5)
      
      !Free format input (skip comment lines as necessary)
      !do indx=1,11  ;  read (100,*)  ;  end do  ;  
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
      !print(*,*) Qsac_pr
      !do ind1=1,4;
          write(*,200) Qsac_pr ; 
          !write(*,200) Qexp_pr ;
          !WRITE(*,300) Qsjr_pr; 
          !write(*,300) DXC_pr;
          !WRITE(*,300) DICU_pr
          !WRITE(*,300) Qsac_oth_pr;
          !write(*,300) Qexp_oth_pr
          !write(*,*) Qsac_pr 
          write(*,*) "Water year (Calender+3; April=7)", currM, currY
      !end do
200   format(1x,4(1x,f19.12))
300   format(1x,5(1x,f19.12))      
!300   format(1x,5(1x,f10.4))
!400   format(1x,5(1x,i2))      
      
     slp_int = AnnLineGen(Qsac_pr,Qexp_pr,Qsjr_pr,DXC_pr,DICU_pr,Qsac_oth_pr,Qexp_oth_pr,VernEC_pr,mon1,&
                          ECTGT,liner1,liner2,loca,vari,ave_t,currM,currY,ForceOp)  
     
 
     !write(*,*) slp_int
     pause
     close(UNIT=100) 
     !write(*,*) slp_int


    end program LineGenStandalone

