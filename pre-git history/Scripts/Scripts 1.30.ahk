#IfWinNotActive, lyonsden@Battleship
!+w::  ; submit a work order
send {CTRLDOWN}f{CTRLUP}
send spec
send {ESC}
send {TAB}
send {CTRLDOWN}v{CTRLUP}
send {CTRLDOWN}f{CTRLUP}
send cre
send {ESC}
send {TAB}{SHIFTDOWN}{TAB}{SHIFUP}
send {SPACE}
return

!^w:: ; edit a work order
send {CTRLDOWN}f{CTRLUP}
send edit
send {ESC}{TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
send {SPACE}
return

!v:: ; for regular 9-6 scheduling
send {CTRLDOWN}f{CTRLUP}
send ment da
sleep, 20
send {ESC}
sleep, 10
send {TAB}{TAB}{TAB}
send 9
send {TAB}
send 18
send {CTRLDOWN}f{CTRLUP}
send Diag
send {ESC}
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
sleep, 600
send {SPACE}
send {TAB}
sleep, 700
send {SPACE}
return

!+v:: ; for checking boxes that got unchecked
send {CTRLDOWN}f{CTRLUP}
send Diag
send {ESC}
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
send {SPACE}
send {TAB}
sleep, 600
send {SPACE}
return

!x::
send {CTRLDOWN}f{CTRLUP}
send Submit
send, {ESC}
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
send {SPACE}
return

!c:: ; script for copying ticket number
send {CTRLDOWN}l{CTRLUP}
send {RIGHT}
send {CTRLDOWN}{SHIFTDOWN}{LEFT}{SHIFTUP}{CTRLUP}
send {CTRLDOWN}c{CTRLUP}
return

!a::
send {CTRLDOWN}f{CTRLUP}
send ent Ans
send {ESC}
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
send {SPACE}
return

!^s::
if (A_hour<=12)
{
send {TAB}{TAB}{TAB}{SPACE}{DOWN}{DOWN}{DOWN}{ESC}
sleep, 200
send {TAB}{TAB}{TAB}{TAB}{TAB}
send call
send {TAB}
}

else
{
send {TAB}{TAB}{TAB}{SPACE}{DOWN}{DOWN}{DOWN}{DOWN}{ESC}
sleep, 200
send {TAB}{TAB}{TAB}{TAB}{TAB}
send call
send {TAB}
}
return

!+s::
send {CTRLDOWN}f{CTRLUP}
send ule Fol
send {ESC}
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
send {SPACE}
return

!s::
send {TAB}{TAB}{TAB}c
sleep, 400
send {TAB}{TAB}{TAB}{TAB}s{ESC}
sleep, 400
send ^f
send og m
send {ESC}{TAB}
return

!f:: ; for setting a fail ticket log
send {TAB}{TAB}{TAB}c
sleep, 400
send {TAB}{TAB}{TAB}{TAB}f{ESC}
sleep, 400
send ^f
send og m
send {ESC}{TAB}
return

!+f:: ; set GSPN to fail
send {TAB}{DOWN}
sleep, 1000
send {TAB}{TAB}{SPACE}{DOWN}{DOWN}{ESC}{TAB}
return

!+e:: ; GSPN engineer assigned
send {TAB}{SPACE}e
sleep, 1500
send {TAB}{TAB}{DOWN}{TAB}
return

!z::
send {CTRLDOWN}f{CTRLUP}
send ule Fol
send {ESC}
send {TAB}
send {SPACE}
return

!t:: ; open ticket log
send {CTRLDOWN}f{CTRLUP}
send ept no
send {ESC}
send {SHIFTDOWN}{TAB}{SHIFTUP}
send {SPACE}
return

!w:: ; open work order
send {CTRLDOWN}f{CTRLUP}
send ew Ser
send {ESC}
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
send {SPACE}
return

!g:: ; sync GSPN status
send {CTRLDOWN}f{CTRLUP}
send sync gsp
send {ESC}
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
send {SPACE}
return

!e:: ; open email templates
send {CTLRDOWN}f{CTLRUP}
send ate sta
send {ESC}
send {SHIFTDOWN}{TAB}{TAB}{SHIFTUP}
send {SPACE}
return

+~:: ; select all and copy
send ^a
send ^c
return

!b:: ; pervious page on schedule (also, select second tech)
send {TAB}{TAB}{TAB}{SPACE}
return

!n:: ; next page on schedule
send {TAB}{TAB}{TAB}{TAB}{TAB}{SPACE}
return

::2un::
send cx has two units
send ^v
return

::cnc:: ; requests a ticket cancel
send ^v
send {SPACE}cancel
return

::cncd:: ; requests a ticket cancel for duplication
send ^v
send {SPACE}cancel duplicate 
return

::val::
send ^v
send {SPACE}validate
return

; exchange cliboard and selection
^+v::
pastebackup = %clipboard%
ClipWait, 0.05, 1
clipboard =
ClipWait, 0.05, 1
Send ^c
ClipWait, 0.05, 1
clipboardbackup = %clipboard%
ClipWait, 0.05, 1
clipboard = %pastebackup%
ClipWait, 0.05, 1
Send ^v
clipboard = %clipboardbackup%
ClipWait, 0.05, 1
return

#IfWinNotActive