real function ANNLINEGENARRAY(Parameters, LastElementIndex) 
!DEC$ ATTRIBUTES DLLEXPORT :: AnnLineGenArray
implicit none

real :: AnnLineGen

double precision, intent(in) :: Parameters(52)
integer, intent(in) :: LastElementIndex
real :: outputLineGen

outputLineGen = ANNLINEGEN(real(Parameters(1)),real(Parameters(2)),real(Parameters(3)),real(Parameters(4)),real(Parameters(5)),real(Parameters(6)),real(Parameters(7)),real(Parameters(8)),real(Parameters(9)),real(Parameters(10)),real(Parameters(11)),real(Parameters(12)),real(Parameters(13)),real(Parameters(14)),real(Parameters(15)),real(Parameters(16)),real(Parameters(17)),real(Parameters(18)),real(Parameters(19)),real(Parameters(20)),real(Parameters(21)),real(Parameters(22)),real(Parameters(23)),real(Parameters(24)),real(Parameters(25)),real(Parameters(26)),real(Parameters(27)),real(Parameters(28)),real(Parameters(29)),real(Parameters(30)),real(Parameters(31)),real(Parameters(32)),real(Parameters(33)),real(Parameters(34)),real(Parameters(35)),real(Parameters(36)),real(Parameters(37)),real(Parameters(38)),int(Parameters(39)),int(Parameters(40)),int(Parameters(41)),int(Parameters(42)),int(Parameters(43)),real(Parameters(44)),real(Parameters(45)),real(Parameters(46)),int(Parameters(47)),int(Parameters(48)),int(Parameters(49)),int(Parameters(50)),int(Parameters(51)),int(Parameters(52)))

ANNLINEGENARRAY = outputLineGen
end function ANNLINEGENARRAY

