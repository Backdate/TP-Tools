**source file of TP_VIEW_Info.html**
# TP_VIEW README


TP_VIEW can be used to switch the windows/screens.

You can choose between:
- Single / Triple / Dual
- Single_User / Single_User_Wide
- Load a user-defined screen
- Show modal Dialogs


**Load a user-defined screen:**

#### This is especially nice after the automatic start:
Show the current program on the left side. inside the two windows on the right side process data can be displayed.





e.g.
```
 :  CALL TP_VIEW('SCREEN.TRIPLE') ;
 :  CALL TP_VIEW('DIALOG.FROMFILE','FR:MY_DIALOG.XML') ;
 :  CALL TP_VIEW('LOAD_VIEW',3) ;
 :  CALL TP_VIEW('CLEAR_VIEW',1) ;
```
---


## Command Reference

[TP View Command Reference](./tp_view_ref.md)
Explains all commands and fuctions of this Software.

**Info:** Upload "tp_view_ref.htm" to the controller to get help at your fingertips.



This Animation shows how to create a user favorite view. Afterwards this view is restored.
![user defined view](./assets/TP_VIEW_Example1.gif)

**favorite view functions are not available on R50iA** 


**THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND**

