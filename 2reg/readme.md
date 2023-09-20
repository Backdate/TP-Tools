# 2REG PROGS
Simple Programs with one dedicated function.

**Program will ABORT when invalid RegIndex is passed**

## Result to Register Progs:

- **sin2REG** --> sine to register
  - e.g. :  CALL SIN2REG(33.5,1) ;
- **cos2REG** --> cosine to register
  - e.g. :  CALL COS2REG(33.5,2) ;
- **atan22REG** --> atan2 to register
  - e.g. :  CALL ATAN22REG((-100),100,3) ;
- **sqrt2REG** --> square root to register
  - e.g. :  CALL SQRT2REG(33.5,4) ;
- **rand2reg** --> random to register
  - e.g. :  CALL rand2reg(33.5,100,4,45) ;
  -  check subfolder for info
- **ping2reg** --> ping a host/IP and write result to reg
  - e.g. :  CALL ping2reg('192.168.1.1',1) ;
  - needed option: User Socket Msg (R648)
    - Error INTP-320 Undefined builtin if not installed
  - Result value 1 : successfull ping
  - Result value 0 : no successfull ping
- **ord2reg** --> numeric ASCII code from given char to register
  - e.g. :  CALL ord2reg('ABCDE123,2,1) ;
  -  will write 66 to register 1, because second(2) Char of string is 'B'

### Local Register
R30iBPlus V940 progs support writing to local register of calling TP prog.

*Local regs are setup in **detail** screen of selected tp prog*

    :  CALL ord2reg('ABCDE123,2,10001) ;
    :  IF R[10001].....                ; 
---
---

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND

---
- Fanuc is a registered trademark
---
  (c) Backdate Software GmbH