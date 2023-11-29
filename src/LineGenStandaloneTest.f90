!  LineGenStandaloneTest.f90 
!
!  FUNCTIONS:
!  LineGenStandaloneTest - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: LineGenStandaloneTest
!
!  PURPOSE:  To call LineGen function and output slope and intercept/ to debug the LineGen process.
!
!****************************************************************************

    program LineGenStandaloneTest
    
    

    implicit none

    ! Variables
    
      DOUBLE PRECISION, DIMENSION(1:4) :: Qsac_pr, Qexp_pr
      DOUBLE PRECISION, DIMENSION(1:5) :: Qsjr_pr, DICU_pr, Qsac_oth_pr,Qexp_oth_pr     
      REAL, DIMENSION(1:5) :: VernEC_pr, DXC_pr
    
      INTEGER, DIMENSION(1:5) :: mon1
      REAL :: ECTGT,liner1,liner2
      INTEGER :: loca,vari,ave_t,currM,currY,ForceOp,indx,ind1
      REAL :: slp_int !,AnnLineGen
      
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
      
      !Read following variables either from input file or define here
      
      ECTGT=2780.
      loca=3
      liner1=5000.
      liner2=12000.
      vari=1    !sope(1) or intercept(2)
      ave_t=1
      currM=6
      currY=1924
      ForceOp=4      
      
      
      
      
      
      write(*,200) Qsac_pr ; 
      write(*,200) Qexp_pr ;
      WRITE(*,300) Qsjr_pr; 
      write(*,300) DXC_pr;
      WRITE(*,300) DICU_pr
      WRITE(*,300) Qsac_oth_pr;
      write(*,300) Qexp_oth_pr
      write(*,*) Qsac_pr 
      write(*,*) "Water year (Calender+3; April=7)", currM, currY
    
200   format(1x,4(1x,f19.12))
300   format(1x,5(1x,f19.12))      
      
     slp_int = AnnLineGen(Qsac_pr,Qexp_pr,Qsjr_pr,DXC_pr,DICU_pr,Qsac_oth_pr,Qexp_oth_pr,VernEC_pr,mon1,&
                          ECTGT,liner1,liner2,loca,vari,ave_t,currM,currY,ForceOp)  
     
 

 
     write(*,*) slp_int
     pause

    end program LineGenStandalone

