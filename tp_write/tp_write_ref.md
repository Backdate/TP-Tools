# TP WRITE Command Reference

TP_WRITE can be used to write single-line (dynamic) messages to various "screens".

Among others, the following "targets" are available for selection:

- Console
- UserScreen
- TPError
- StringRegister
- TPERR_CONS (TPError and Console)

*The string length for each **ARG** is 34*

*In most cases the string length, of the **str2write** is truncated by **system** at length of 40.*


The shrinked version(*tp_write_ref.htm*) of this reference file can be uploaded to the controller. This way, the information is also available on the TP or via web browser.

-     Teach Pendant  : TP_WRITE('HELP');     
-     web browser    : _hostname_/karel/tp_write    
-     FTP upload     : tp_write_ref.htm --> FR:TP_WRITE_ref.htm      

## Commands

*TP_WRITE* uses command strings to execute given task.

These strings are based on a internal variable(cmd_list) with unique command ID.

The ID can also be used as a substitute for the string commands. (use ID in brackets after command name)

Some commands require several parameters or arguments.

[Optional arguments in square brackets.]

*Info: check **tp_write-va** file to check cmd-states and internal cmd_list.*

### ARGUMENT WIZARD
 
 **This is optional.**

 Use this feature if you like the dialog based programming and the 'code' style.


 *Check Fanuc documentation  "Wizard to Input Arguments" inside handling tool document*

-  We provide a (template) file  for R-30iBPlus (V9.10 and up)
-  It's up to the user to check file naming problems like duplicates/collisions with other programs (.e.g. TP_VIEW)
-  Upload the file with  *[LOAD]* from TP or upload with ftp client to FR device.
-  To 'uninstall' delete file from FR device


---
## PARSE
 All (dynamic) strings will be parsed **only** if there is an extra/additional argument!

'String parser' searches for special "string":	
  - Register Value string  = '%R'
	- StringRegister Value string   = '%SR'
  - Time  string  = '%TIME' 
    - needs extra argument: '0'
      - otherwise parser is not executed
  - TimeStamp  = '%FAST_CLOCK'
    - **NOT available on R-50iA / V10.10**
    - value is *[SYSTEM]*$FAST_CLOCK
    - needs extra argument: '0'
      - otherwise parser is not executed

    :CALL TP_WRITE('USER','Value of R[1]is %R',1);    

    :CALL TP_WRITE('USER','Time now: %TIME',1);    

---
### HELP (11)
    : CALL TP_WRITE('HELP');

    : CALL TP_WRITE(11);     

**Shows (web)help of this program**

---
### USER (21)
    : CALL TP_WRITE('USER','Hello User');     

**Writes a (dynamic)string to UserScreen**

---
### TPDISPLAY (21)
    : CALL TP_WRITE('TPDISPLAY','Hello User');     

**Writes a (dynamic)string to UserScreen**

---
### TPERROR (22)
    : CALL TP_WRITE('TPERROR','Hello User');     

**Writes a (dynamic)string to TPERROR area**

---
### TPPROMPT (23)
    : CALL TP_WRITE('TPPROMPT','Hello User');     

**Writes a (dynamic)string to TPPROMPT area**


---
### TPFUNC (24)
    : CALL TP_WRITE('TPFUNC','Hello User');     

**Writes a (dynamic)string to TPFUNC (function keys area)**

---
### TPSTATUS (25)
    : CALL TP_WRITE('TPSTATUS','Hello User');     

**Writes a (dynamic)string to TPSTATUS (only if active)**

---
### SR (26)
    : CALL TP_WRITE('SR',idx,'Hello User');     

     :  CALL TP_WRITE("SR"=26,"ID"=1,"Str2Write"='Reg1 = %R',1) ;     

**Writes a (dynamic)string to SR with given String and index**

---
### CONSOLE (27)
    : CALL TP_WRITE('CONSOLE','Hello User');     

**Writes a (dynamic)string to CONSOLE**

---
### POST_ERR (28)
    : CALL TP_WRITE('POST_ERR',SEV,ERRCODE);     

    :  CALL TP_WRITE("POST_ERR"=28,"INFO"=0,"Sys-Err_Num"=0) ;    
 - SEV / Severity : 
    - INFO:0 =  Nothing
    -  WARN:1 = PAUSE
    - ERROR:2 = ABORT
- ERRCODE / ErrorCode
  - Fanuc error code
    - ffccc (decimal)
      - ff represents the facility code of the error
      - ccc represents the error code within the specified facility
    - check fanuc documentation 

**Posts an error with given ErrorCode and severity**

---
### APSH_ERR (29)
    : CALL TP_WRITE('APSH_ERR',SEV,'Hello User');     

    :  CALL TP_WRITE("APSH_ERR"=29,"INFO"=0,"Str2Write"='...') ;    

  - Severity : 
    - INFO:0 =  Nothing
    -  WARN:1 = PAUSE
    - ERROR:2 = ABORT
  
  - Str2Write

**Posts an APSH_ERR with given String and severity**

---
### TPERR_CONS (31)
    : CALL TP_WRITE('TPERR_CONS','Hello User');     

**Writes a (dynamic)string to TPERROR AND Console**

---
### CLEAR commands
    : CALL TP_WRITE('CLEAR.xxxx');     

**Erases all chars from corresponding sreen/area**

---
### CLEAR.TPDISPLAY (61)
    : CALL TP_WRITE('CLEAR.TPDISPLAY');     

**erases all chars from TPDISPLAY/User screen**

---
### CLEAR.TPERROR (62)
    : CALL TP_WRITE('CLEAR.TPERROR');     

**erases all chars from error area**

---
### CLEAR.TPPROMPT (63)
    : CALL TP_WRITE('CLEAR.TPPROMPT');     

**erases all chars from prompt area**

---
### CLEAR.TPFUNC (64)
    : CALL TP_WRITE('CLEAR.TPFUNC');     

**erases all chars from function key area**

---
### CLEAR.TPSTATUS (65)
    : CALL TP_WRITE('CLEAR.TPSTATUS');     

**erases all chars from status area ; only if status is active**

---
### CLEAR.USER (61)
    : CALL TP_WRITE('CLEAR.USER');     

**erases all chars from TPDISPLAY/User screen**



---
## FORCE Commands
Same as **'TP_VIEW'** 'force commands. 
 - same string-commands
 - same command ID's

---
### FORCE.USER (51)
    : CALL TP_WRITE('FORCE.USER');     

**Forces SingleUserScreen** 

- Forces **'SCREEN.SINGLE'**.
- **Additionally** the USER Screen/Menu will be shown.

---
### FORCE.USERWIDE (52)
    : CALL TP_WRITE('FORCE.USERWIDE');     

**Forces SingleUserScreen inside wide mode**

- Forces **'SCREEN.WIDE'**. 
- **Additionally** the USER Screen/Menu will be shown.




---
---

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND

---
- Fanuc is a registered trademark
---
  (c) Backdate Software GmbH

