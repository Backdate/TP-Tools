
# Changelog
## Changes
- *23/08/23* : **ADD/QUESTION** Should we add "TP_MATH" --> https://github.com/Backdate/TP-Tools/discussions/4
- *23/08/23* : **ADD/UPDATE** TP_WRITE: parser timestamp %FAST_CLOCK
- *23/08/21* : **FIX** ARGDISP file
- *23/08/21* : **UPDATE** Changed Screen ID's from 2x to3x --> https://github.com/Backdate/TP-Tools/discussions/2
- *23/08/18* : **INFO** : https://github.com/Backdate/TP-Tools/discussions/2
- *23/08/18* : **FIX**doc erors 
- *23/08/18* : **ADD** Arg Wizard updates
- *23/08/18* : **IMPORTANT** changed API for POST_ERR and APSH_ERR!check reference file
- *23/08/18* : **FIX** TP_WRITE POST_ERR and APSH_ERR ArgWizard incompatibility
- *23/08/18* : **FIX** wrong arg number error information(TP_WRITE)
- *23/08/17* : **NEW** release candidate 1 (RC1)
- *23/08/14* : **NEW** beta release
- *23/08/14* : **ADD** changelog.md
- *23/08/14* : **ADD** Arg Wizard for TP_VIEW and TP_WRITE
- ... older stuff

### Next steps (planned)
-  prepare translations

## Ideas V1.1 (Sep/Oct 23)
CRX Plugin with some functions of TP-Tools. A lot of functions won't fit for CRX/Tablet -TP user. That's the reason we had to change the TP_View Screen Command Id range from 2x to 3x.

![CRX_PlugIn_Brainstorm1](assets/CRX_PlugIn_Brainstorm1.JPG)



### New feature
Write to a file

    TP_WRITE('FILE', 'FR:test.dat', 'AP')
