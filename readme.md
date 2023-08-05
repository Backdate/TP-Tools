![TP Tools](./assets/tp-tools.png)

**Please inform us of any oddities with the texts. We are not native english speakers** 

**Until mid of august 2023 the tools are more "alpha" than "beta".There will be lot of updates, since of missing features** 

---

# TP-Tools (beta)

**FREE for commercial use**

A small collection of tools that simplify the commissioning and programming of Fanuc robots.

The programs are licensed under the

*CC BY-ND 4.0 Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0)*


https://creativecommons.org/licenses/by-nd/4.0/

- The distribution is allowed.
- Modification of the binary file is not allowed.
- The naming of the author is given, because the binary file contains information

Even if the Creative Commons license was not made for software, it serves its purpose for us here.

A license file does NOT have to be copied to the robot controller.

**Thereby nothing stands in the way of commercial use.**

---
### Controller and Version

- R-30iA (< V7.50)
- R-30iB (< V8.10)
- R-30iBPlus (< V9.10)
- R-30iBPlus/CRX (< V9.40/42)

If there is no corresponding subfolder, the version is (currently) not available.

If the *Arg-Wizard* can be used or there is a CRX plug-in this is described or explained.

## Program structure
Currently the programs "TP_VIEW" and "TP_WRITE" use a "uniform" API.

- Simple commands are called or executed with a string containing the command name.
  - :CALL TP_VIEW('HELP');
- Commands of same functional group have the  group name separated by a dot from the command name.
  - :CALL TP_VIEW('FORCE.VIEW');
- Commands may have (optional) parameters/arguments.
  - :CALL TP_VIEW('FORCE.VIEW',2);

*more about this  [deepdive](/.DeepDive.md)*

---
## TP_VIEW

TP_VIEW can be used to switch the windows/screens
You can switch between
- Single / Triple / Dual
- Single_User / Single_User_Wide
- Load a user-defined screen
- Show modal Dialogs


![tp_view](./assets/TP_VIEW_Example1.gif)


e.g.
```
 :  CALL TP_VIEW('SCREEN.TRIPLE') ;
 :  CALL TP_VIEW('DIALOG.YES_NO',123) ;
 :  CALL TP_VIEW('LOAD_VIEW',3) ;
 :  CALL TP_VIEW('CLEAR_VIEW',1) ;
```
---
## TP_WRITE

TP_WRITE can be used to write single-line (dynamic) messages to various "screens".


![tp](./assets/Werbung1.gif)

Among others, the following are available for selection:

  - Console
  - UserScreen
  - TPError

The usage with the Arg-Wizard is planned.
The CRX_PlugIn is  under development.


---

## TP_ARGS

TP_ARGS can be used to check and log the ARG's which are given to a decent program. 
This allows a program to use optional ARG's

e.g.
```
CALL SET_PR(10,100,0,0)
CALL SET_PR(10,100,0,0,0,0,0)

..SET_PR
    :CALL TP_ARGS('DO.COUNT',AR[1],AR[2],AR[3],AR[4],AR[5],AR[6],AR[7]);
    :IF $[TP_ARGS]COUNT = 4;
        :PR[AR1,1]=AR[2];
        :PR[AR1,2]=AR[3];
        :PR[AR1,3]=AR[4];
        :PR[AR1,4]=0;
        :PR[AR1,5]=0;
        :PR[AR1,6]=0;
        :END;
    :ENDIF;
    :IF $[TP_ARGS]COUNT = 7;
        :PR[AR1,1]=AR[2];
        :PR[AR1,2]=AR[3];
        :PR[AR1,3]=AR[4];
        :PR[AR1,4]=AR[5];
        :PR[AR1,5]=AR[6];
        :PR[AR1,6]=AR[7];
        :END;
    :ENDIF;
    !Number of ARGS invalid;
    :ABORT;

```

---


## RANDOM


Generates a (pseudo) random number and writes the value into the corresponding register.

Uses $FAST_CLOCK to initialize, but can also be configured.

---
## set_invisib(le)


Make programs temporarily invisible or hide them
  
 ---

## PING


A simple program for "pinging" network participants


---


## CRC-Tools


Enables the calculation of different checksums:
  
  - MODBUS
  - CCITT
  - MCRF4XX

---

## ~~MESSAGE~~


Replaces the internal command

    MESSAGE[string].


***TP_WRITE*** is the more powerful alternative :-)

---
---
## F.A.Q.

- Why xy ? --> Check  faq.md
- I need more technical information. --> Check  DeepDive.md
- Where ca I find a changelog? Use github and check info files.

---

- Fanuc is a registered trademark. 

---

Copyright (c) 2023 Backdate Software/Andreas Wissing

---


