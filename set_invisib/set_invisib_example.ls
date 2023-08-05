/PROG  set_invisib_example
/ATTR
OWNER		= MNEDITOR;
PROTECT		= READ_WRITE;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  ! PROGRAM "set_invisib" ;
   2:  !makes a prog temporarily invisib ;
   3:  !until next cold start ;
   4:   ;
   5:  !no AR : ;
   5:  !shows int. Help and aborts ;
   6:  CALL set_invisib    ;
   7:   ;
   8:  WAIT (OFF)    ;
   9:  !AR[1] : ProgramName ;
  10:  !AR[2] : True=1,FALSE=0 ;
  11:  CALL set_invisib('REQMENU',1) ;
  12:  PAUSE ;
  13:  CALL set_invisib('REQMENU',0) ;
  7:   ;
/POS
/END
