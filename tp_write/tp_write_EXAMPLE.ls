/PROG  TP_WRITE_EXAMPLE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1784;
CREATE		= DATE 23-08-04  TIME 13:14:18;
MODIFIED	= DATE 23-08-04  TIME 13:14:18;
FILE_NAME	= TP_VIEW_;
VERSION		= 0;
LINE_COUNT	= 39;
MEMORY_SIZE	= 2144;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
/APPL
/MN
   1:  CALL TP_WRITE('HELP') ;
   2:  END ;
:  CALL TP_WRITE('FORCE.USER');
:  CALL TP_WRITE('USER','Hello User');
:PAUSE;
:  CALL TP_WRITE('CLEAR.TPDISPLAY');
:PAUSE;
:  CALL TP_WRITE('FORCE.USERWIDE');
:  CALL TP_WRITE('USER','Value of Reg1 is:  %R',1);
:  CALL TP_WRITE('USER','Value of StrReg1 is:  %SR',1);
:  CALL TP_WRITE('USER','Time:  %TIME',0);
:PAUSE;
:  CALL TP_WRITE('CLEAR.USER');
:PAUSE;
:  CALL TP_WRITE('TPDISPLAY','Hello User');
:PAUSE;
:  CALL TP_WRITE('CLEAR.TPDISPLAY');
:PAUSE;
:  CALL TP_WRITE('TPERROR','Hello User');
:PAUSE;
:  CALL TP_WRITE('CLEAR.TPERROR');
:PAUSE;
:  CALL TP_WRITE('TPPROMPT','Hello User');
:PAUSE;
:  CALL TP_WRITE('CLEAR.TPPROMPT');
:PAUSE;
:  CALL TP_WRITE('TPFUNC',' Hello  ',' User   ' , ' third     [F4]  55555555');
:PAUSE;
:  CALL TP_WRITE('CLEAR.TPFUNC');
://CALL TP_WRITE('TPSTATUS','Hello User');
://CALL TP_WRITE('CLEAR.TPSTATUS');
:PAUSE;
:  CALL TP_WRITE('SR',1,'Hello User its now %TIME',0);
:  CALL TP_WRITE('CONSOLE','SR1: %SR;',1);
:  CALL TP_VIEW('FORCE.LINK','CONFIG=DOUBLE','&prim=EDITPAGE','&DUAL=BROWSER','&DUAL=/md/conslog.dg') ;
:PAUSE;
:  CALL TP_WRITE('POST_ERR',12078,1);
:PAUSE;
:  CALL TP_WRITE('APSH_ERR','Hello User',1);
:PAUSE;
:  CALL TP_WRITE('FORCE.USER');
:PAUSE;
:  CALL TP_WRITE('FORCE.USERWIDE');
/POS
/END
