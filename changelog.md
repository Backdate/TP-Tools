
# Changelog
## Changes
- *23/08/23* : **FIX** TP_WRITE: parser timestamp %FAST_CLOCK printing
- *23/08/23* : **ADD/QUESTION** Should we add "TP_MATH" --> https://github.com/Backdate/TP-Tools/discussions/4
- *23/08/23* : **ADD/UPDATE** TP_WRITE: parser timestamp %FAST_CLOCK
- *23/08/21* : **FIX** ARGDISP file
- *23/08/21* : **UPDATE** Changed Screen ID's from 2x to3x --> https://github.com/Backdate/TP-Tools/discussions/2
- *23/08/18* : **INFO** : https://github.com/Backdate/TP-Tools/discussions/2
- *23/08/18* : **FIX**doc erors 
- ... older stuff

### Next steps (planned)
-  prepare translations

## Ideas V1.1 (Sep/Oct 23)
CRX Plugin with some functions of TP-Tools. A lot of functions won't fit for CRX/Tablet -TP user. That's the reason we had to change the TP_View Screen Command Id range from 2x to 3x.

![CRX_PlugIn_Brainstorm1](assets/CRX_PlugIn_Brainstorm1.JPG)



### New feature
Write to a file

    TP_WRITE('FILE', 'FR:test.dat', 'AP')
