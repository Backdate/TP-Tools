# 2REG PROGS
Simple programs with one dedicated function.

<a href="markdownmonster:untitled.urlencoded,Hello+World">Open in Markdown Monster</a>

## Numeric Register:

- **sin2REG** : sine to Register

      : CALL SIN2REG(33.5,1) ;

- **cos2REG** : cosine to Register

      : CALL COS2REG(33.5,2) ;
      
- **atan22REG** : atan2 to Register

      : CALL ATAN22REG((-100),100,3) ;

- **sqrt2REG** : square root to Register

      : CALL SQRT2REG(33.5,4) ;

- **rand2reg** : random to Register    

      : CALL rand2reg(33.5,100,4,45) ;

  -  please check subfolder for info

- **ping2reg** : ping a host/IP and set result to reg

      : CALL ping2reg('192.168.1.1',1) ;

  - Result value **1 : successfull** ping
  - Result value **0 : no successfull** ping
  - needed option: User Socket Msg (R648)
    - Error INTP-320 Undefined builtin if not installed

- **ord2reg** : numeric ASCII code from given char to Register

      :  CALL ord2reg('ABCDE123',2,1) ;
        
    - will set 66 to **R[1]**, since second char of string is 'B'

## Position Register:

- **conf2pr** : writes config data of given string to Posreg

      : CALL conf2pr('N , U , T , 0 0 1',1) ;

    - set CONFIG 'NUT001' @**PR[1]**

    
- ~~**cmt2pr**~~ : writes comment of given string to Posreg

      : CALL cmt2pr('MyComment',1) ;

  - set comment 'MyComment' @**PR[1]**

- ~~**inv2pr**~~ : inverse of PR to other PR

      : CALL inv2pr(1,4) ;

  - set **inverse** of PR[1] @**PR[4]**

- ~~**rel2pr**~~ : calc 2 PRs with **':'**  to other PR

      : CALL rel2pr(1,2,3) ;

  -  uses **':'** ; relative position operator
     - **PR[3]** = **PR[1]** : **PR[2]**
  -  ~~*alias* progname : ***rpo2pr***~~

## String Register

- **conf2sr** : set config dat of given Posreg to Stringreg (as string)

      : CALL conf2sr(1,3) ;

    - set conf of **PR[1]** @**SR[3]**

## Local Register

*R30iBPlus V940 / R-50iA V1010* progs support writing to **local Register** of calling TP prog.

***Infos*** Local Register setup in **detail** screen of selected tp prog*

    :  CALL ord2reg('ABCDE123,2,10001) ;
    :  IF R[10001].....                ; 


---
---
### License

**FREE commercial use | CC BY-ND 4.0**

---
---

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND

---
---


***Fanuc*** is a registered trademark
---
  (c) 2025 Backdate Software GmbH /Andreas Wissing