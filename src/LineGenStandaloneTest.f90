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
            
      
      open(UNIT=100, file ='EM_input_Apr36.txt',status='old')
      
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
      
        write(*,*) "AnnLineGen input";
        write(*,*) "Qsac_pr";
        write(*,200) Qsac_pr ; 
        write(*,*) "Qexp_pr";        
        write(*,200) Qexp_pr ;
        write(*,*) "Qsjr_pr";
        WRITE(*,300) Qsjr_pr; 
        write(*,*) "DXC_pr";
        write(*,300) DXC_pr;
        write(*,*) "DICU_pr";
        WRITE(*,300) DICU_pr
        write(*,*) "Qsac_oth_pr";
        WRITE(*,300) Qsac_oth_pr;
        write(*,*) "Qexp_oth_pr";
        write(*,300) Qexp_oth_pr;
        write(*,*) "VernEC_pr";
        write(*,300) VernEC_pr;
        write(*,*) "mon1";
        write(*,300) mon1;
        write(*,*) "ECTGT";
        write(*,*) ECTGT;
        write(*,*) "liner1";
        write(*,*) liner1;
        write(*,*) "liner2";
        write(*,*) liner2;
        write(*,*) "loca";
        write(*,*) loca;
        write(*,*) "vari";
        write(*,*) vari;
        write(*,*) "ave_t";
        write(*,*) ave_t;
        write(*,*) "currM";
        write(*,*) currM;
        write(*,*) "currY";
        write(*,*) currY;
        write(*,*) "ForceOp";
        write(*,*) ForceOp;

      !end do
200   format(1x,4(1x,f19.12))
300   format(1x,5(1x,f19.12))      
      
     slp_int = AnnLineGen(Qsac_pr,Qexp_pr,Qsjr_pr,DXC_pr,DICU_pr,Qsac_oth_pr,Qexp_oth_pr,VernEC_pr,mon1,&
                          ECTGT,liner1,liner2,loca,vari,ave_t,currM,currY,ForceOp)  
     
 
     write(*,*) slp_int


    target_value = 1.451236
    epsilon = 0.001

    if (abs(slp_int - target_value) > epsilon) then
        write(*,*) "slp_int is not within ", epsilon, " of ", target_value, ", stopping program with status -1"
        stop -1
    end if    

    end program LineGenStandaloneTest