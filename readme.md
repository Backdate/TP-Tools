![TP Tools](./assets/tp-tools.png)

**Please inform us of any oddities with the texts. We are not native english speakers** 

---

# TP-Tools

 check the latest *release* here:

 https://github.com/Backdate/TP-Tools/releases

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
Currently the programs "TP_VIEW" and "TP_WRITE" uses a "uniform" API.

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


[tp_view](/tp_view/readme.md)

![tp_view](./assets/TP_VIEW_Example1.gif)


e.g.
```
 :  CALL TP_VIEW('SCREEN.TRIPLE') ;
 :  CALL TP_VIEW('DIALOG.YES_NO',123) ;
 :  CALL TP_VIEW('LOAD_VIEW',3) ;
 :  CALL TP_VIEW('CLEAR_VIEW',1) ;
```

The CRX_PlugIn is  under development.

[CRX_PlugIn] (https://github.com/Backdate/TP-Tools/discussions/3)

---
## TP_WRITE

TP_WRITE can be used to write single-line (dynamic) messages to various "screens".

[tp_write](/tp_write/readme.md)

![tp](./assets/Werbung1.gif)

Among others, the following are available for selection:

  - Console
  - UserScreen
  - TPError

The usage with the Arg-Wizard is implemented.

![ArgWiz](tp_write/assets/TP_WRITE_ARG_WIZ.gif)

The CRX_PlugIn is  under development.

[CRX_PlugIn] (https://github.com/Backdate/TP-Tools/discussions/3)

---


## 2REG
A folder with simple "one command" progs.
Result is written to specified register

- SIN2REG --> sine to register
  - e.g. :  CALL SIN2REG(33.5,1) ;
- COS2REG --> cosine to register
  - e.g. :  CALL COS2REG(33.5,2) ;
- atan22REG --> atan2 to register
  - e.g. :  CALL ATAN22REG((-100),100,3) ;
- sqrt2REG --> square root to register
  - e.g. :  CALL SQRT2REG(33.5,4) ;
- rand2reg --> random to register
  - e.g. :  CALL rand2reg(33.5,100,4,45) ;
  -  check subfolder for info

### RAND2REG

 
Generates a (pseudo) random number and writes the value into the corresponding register.

Uses $FAST_CLOCK to initialize, but can also be configured.


[Title](2reg/rand2reg/readme.md)


![Alt text](2reg/rand2reg/assets/Random_Simple.gif)
---
## set_invisib

Make programs temporarily invisible or hide them

 [set_invisib](./set_invisib/readme.md)


![set_invisib.gif](./assets/SET_PROGS_INVISIBLE2.gif)

 ---



## ~~TP_ARGS~~

**dated for later**


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

## ~~PING~~

**dated for later**


A simple program for "pinging" network participants


---


## ~~CRC-Tools~~

**not a program, but an API**
**dated for later**


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


