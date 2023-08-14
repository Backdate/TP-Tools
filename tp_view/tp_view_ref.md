# TP VIEW Command Reference

Use TP_VIEW to switch/change the iPendant windows/screens .

- switch Single / Triple / Dual -Screens
- show Single_UserSreen / Single_UserScreen_Wide
- load a user-defined screen
- show modal dialogs

The shrinked version(*tp_view_ref.htm*) of this reference file can be uploaded to the controller. This way, the information is also available on the TP or via web browser.

- ```Teach Pendant  : TP_VIEW('HELP'); ```
- ```web browser    : _hostname_/karel/tp_view```
- ```FTP upload     : tpview_ref.htm --> FR:tpview_ref.htm  ```

## Commands

*TP_VIEW* uses command strings to execute given task.

These strings are based on a internal variable(cmd_list) with unique command ID.

The ID can also be used as a substitute for the string commands. (use ID in brackets after command name)

Some commands require several parameters or arguments.

[Optional arguments in square brackets.]

*Info: check **tp_view-va** file to check cmd-states and internal cmd_list.*

### ARGUMENT WIZARD
 
 **This is optional.**

 Use this feature if you like the dialog based programming and the 'code' style.


 *Check Fanuc documentation  "Wizard to Input Arguments" inside handling tool document*

-  We provide a (template) file  for R-30iBPlus (V9.10 and up)
-  It's up to the user to check file naming problems like duplicates/collisions with other programs (.e.g. TP_WRITE)
  - assemble the files to your needs
-  Upload the file with  *[LOAD]* from TP or upload with ftp client to FR device.
-  To 'uninstall' delete file from FR device

---
### HELP (11)
```:TP_VIEW('HELP'); ``` **or**
```:TP_VIEW(11); ```

**Shows (web)help of this program**

---
### RESTORE (12)
```:TP_VIEW('RESTORE'); ```

**Restores "$UI_RESTORE[1]-sysvar"**

**not recommended!**

---
### LOAD_VIEW (13)
```:TP_VIEW('LOAD_VIEW',[idx]); ```

**Forces the user (favorite) view by given index**

    Default : 1

- equal command: **FORCE.VIEW**
- To clear a *user view* use **CLEAR_VIEW-command**

#### To add a new  *user favorite view* use:

**TP-MENU**
- **[SHIFT]+[DISP]**
  - User View
    - Add Current




---
### CLEAR_VIEW (14)
```:TP_VIEW('CLEAR_VIEW',[idx]); ```

**Clears the user view with given index**

    Default : 1

---
### SINGLE_USER (15)
```:TP_VIEW('SINGLE_USER'); ```

**Forces SingleUserScreen** 

- Forces **'SCREEN.SINGLE'**.
- **Additionally** the USER Screen/Menu will be shown.
- equal command: **FORCE.USER**

---
### WIDE_USER (16)
```:TP_VIEW('WIDE_USER'); ```

**Forces SingleUserScreen inside wide mode**

- Forces **'SCREEN.WIDE'**. 
- **Additionally** the USER Screen/Menu will be shown.
- equal command: **FORCE.USERWIDE**

---
## SCREEN Commands 
**Screen commands shows default screen/window combination**

---
### SCREEN.SINGLE (21)
```:TP_VIEW('SCREEN.SINGLE'); ```

**default window inside SingleScreen**

---
### SCREEN.WIDE (22)
```:TP_VIEW('SCREEN.WIDE'); ```

**default window inside SingleScreen WIDE**

---
### SCREEN.DOUBLE (23)
```:TP_VIEW('SCREEN.DOUBLE'); ```

**default window(s) inside DOUBLEScreen**

---
### SCREEN.TRIPLE (24)
```:TP_VIEW('SCREEN.TRIPLE'); ```

**default window(s) inside TRIPLEScreen**

---
### SCREEN.TREEPRIM (25)
```:TP_VIEW('SCREEN.TREEPRIM'); ```

**default window(s) inside TreeView and PrimaryScreen**

---
### SCREEN.STATPRIM (26)
```:TP_VIEW('SCREEN.STATPRIM'); ```

**default window(s) inside StatusScreen and PrimaryScreen**

---
## DIALOG Commands
**Shows modal dialogs**
 - Used to interact with user.
 - Program is blocked until a button at the dialog or [PREV]-key is pressed.
 - ~~(Optional) Flags or Registers will be set to False/Zero at start.~~

Check Fanuc iPendant customization doc for XML definition.

---
### DIALOG.FROMFILE (41)
```:TP_VIEW('DIALOG.FROMFILE','FR:dlg_Flags_OK.xml'); ```


Shows a modal dialog. The XML dialog is loaded from file path.

**Read Fanuc iPendant customization of xml file description**

User/Developer has to setup the XML file and FLAGs or VARs for dialog result.
This command will handle only the [PREV]-key.

Example files:
 - **dlg_Flags_OK.xml**
 - **TP_VIEW_DIALOG.LS**

XML-File uses Flag[1] - Flag[8]

- Flag[1] is used to detect if **[OK]** is pressed.
- Flag[3] -Flag[8] are toggled by button. 
- [OK]-button-dlgtile has special Type (type="1") to escape from dialog 


---
## FORCE Commands
*FORCE.LINK* is the raw interface to *FORCE_LINK karel builtin*

- Others are 'based' on FORCE_LINK.
---
### FORCE.USER (51)
```:TP_VIEW('FORCE.USER'); ```

**Forces SingleUserScreen** 

- Forces **'SCREEN.SINGLE'**.
- **Additionally** the USER Screen/Menu will be shown.

---
### FORCE.USERWIDE (52)
```:TP_VIEW('FORCE.USERWIDE'); ```

**Forces SingleUserScreen inside wide mode**

- Forces **'SCREEN.WIDE'**. 
- **Additionally** the USER Screen/Menu will be shown.

---
### FORCE.VIEW (53)
```:TP_VIEW('FORCE.VIEW',[idx]); ```

**Forces the user view by given index**

To add a new  *user favorite view* use
**TP-MENU**
- **[SHIFT]+[DISP]**
  - User View
    - Add Current

To clear a *user favorite view* use **CLEAR_VIEW-command**

---
### FORCE.LINK (59)
```:TP_VIEW('FORCE.LINK','URL',[string2]..); ```

**Forces a valid link by a string (array)**
  - one or more string arguments are concated to together
  - check fanuc documentation! This is advanced stuff!
  - use with caution!

---
---

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND

---
- Fanuc is a registered trademark
---
  (c) Backdate Software GmbH

