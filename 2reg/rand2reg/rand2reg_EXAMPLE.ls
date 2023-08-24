/PROG  rand2reg_example
/ATTR
OWNER		= MNEDITOR;
PROTECT		= READ_WRITE;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  ! PROGRAM "RAND2REG" ;
   2:  !set a random value ;
   3:  !to a register;
   4:   ;
   5:  !no AR : ;
   5:  !shows int. Help and aborts ;
   6:  CALL rand2reg    ;
   7:   ;
   8:  WAIT (OFF)    ;
   9:  !AR[1] : MIN Value ;
  10:  !AR[2] : MAX Value ;
  11:  CALL RAND2REG(10,15,1) ;
  12:  PAUSE ;
  13:  CALL RAND2REG(10.01,149.67,2) ;
  12:  PAUSE ;
  13:  CALL RAND2REG(10,149.67,3) ;
/POS
/END
