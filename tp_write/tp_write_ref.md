# TP WRITE Command Reference

Use TP_WRITE to switch/change the iPendant windows/screens .

- switch Single / Triple / Dual -Screens
- show Single_UserSreen / Single_UserScreen_Wide
- load a user-defined screen
- show modal dialogs

The shrinked version(*tp_write_ref.htm*) of this reference file can be uploaded to the controller. This way, the information is also available on the TP or via web browser.

- ```Teach Pendant  : TP_WRITE('HELP'); ```
- ```web browser    : _hostname_/karel/tp_write```
- ```FTP upload     : tp_write_ref.htm --> FR:tp_write_ref.htm  ```

## Commands

*TP_WRITE* uses command strings to execute given task.

These strings are based on a internal variable(cmd_list) with unique command ID.

The ID can also be used as a substitute for the string commands. (use ID in brackets after command name)

Some commands require several parameters or arguments.

[Optional arguments in square brackets.]

*Info: check **tp_write-va** file to check cmd-states and internal cmd_list.*

---
### HELP (11)
```:TP_WRITE('HELP'); ``` **or**
```:TP_WRITE(11); ```

**Shows (web)help of this program**

---
### USER (21)
```:TP_WRITE('USER','Hello User'); ```

**Writes a (dynamic)string to UserScreen**

---
### TPDISPLAY (21)
```:TP_WRITE('TPDISPLAY','Hello User'); ```

**Writes a (dynamic)string to UserScreen**

---
### TPERROR (22)
```:TP_WRITE('TPERROR','Hello User'); ```

**Writes a (dynamic)string to TPERROR area**

---
### TPPROMPT (23)
```:TP_WRITE('TPPROMPT','Hello User'); ```

**Writes a (dynamic)string to TPPROMPT area**


---
### TPFUNC (24)
```:TP_WRITE('TPFUNC','Hello User'); ```

**Writes a (dynamic)string to TPFUNC (function keys area)**

---
### TPSTATUS (25)
```:TP_WRITE('TPSTATUS','Hello User'); ```

**Writes a (dynamic)string to TPSTATUS (only if active)**

---
### SR (26)
```:TP_WRITE('SR',idx,'Hello User'); ```

**Writes a (dynamic)string to SR with given String and index**

---
### CONSOLE (27)
```:TP_WRITE('CONSOLE','Hello User'); ```

**Writes a (dynamic)string to CONSOLE**

---
### POST_ERR (28)
```:TP_WRITE('POST_ERR',ERRCODE,SEV); ```

**Posts an error with given err-id and severity**

---
### APSH_ERR (29)
```:TP_WRITE('APSH_ERR','Hello User',SEV); ```

**Posts an APSH_ERR with given String ans severity**

---
### CLEAR commands
```:TP_WRITE('CLEAR.xxxx'); ```

**Erases all chars from corresponding sreen/area**

---
### CLEAR.TPDISPLAY (61)
```:TP_WRITE('CLEAR.TPDISPLAY'); ```

**erases all chars from TPDISPLAY/User screen**

---
### CLEAR.TPERROR (62)
```:TP_WRITE('CLEAR.TPERROR'); ```

**erases all chars from error area**

---
### CLEAR.TPPROMPT (63)
```:TP_WRITE('CLEAR.TPPROMPT'); ```

**erases all chars from prompt area**

---
### CLEAR.TPFUNC (64)
```:TP_WRITE('CLEAR.TPFUNC'); ```

**erases all chars from function key area**

---
### CLEAR.TPSTATUS (65)
```:TP_WRITE('CLEAR.TPSTATUS'); ```

**erases all chars from status area ; only if status is active**

---
### CLEAR.USER (61)
```:TP_WRITE('CLEAR.USER'); ```

**erases all chars from TPDISPLAY/User screen**



---
## FORCE Commands
*FORCE.LINK* is the raw interface to *FORCE_LINK karel builtin*

- Others are 'based' on FORCE_LINK.

---
### FORCE.USER (51)
```:TP_WRITE('FORCE.USER'); ```

**Forces SingleUserScreen** 

- Forces **'SCREEN.SINGLE'**.
- **Additionally** the USER Screen/Menu will be shown.

---
### FORCE.USERWIDE (52)
```:TP_WRITE('FORCE.USERWIDE'); ```

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

