/PROG  TP_VIEW_DIALOG
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 404;
CREATE		= DATE 23-08-08  TIME 13:55:38;
MODIFIED	= DATE 23-08-08  TIME 14:23:02;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 14;
MEMORY_SIZE	= 860;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
/MN
   1:  LBL[1] ;
   2:   ;
   3:  FOR R[1]=1 TO 8 ;
   4:  F[R[1]]=(OFF) ;
   5:  ENDFOR ;
   6:   ;
   7:  CALL TP_VIEW('dialog.fromfile','FR:dlg_Flags_OK.XML') ;
   8:   ;
   9:  WAIT   2.00(sec) ;
  10:  !if not [OK] Jump start ;
  11:  IF (!F[1:FLG OK]),JMP LBL[1] ;
  12:   ;
  13:  !.. use the Flags ;
  14:  IF (F[3]),CALL ...(...) ;
/POS
/END
