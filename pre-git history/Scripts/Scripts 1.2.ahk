!q::  ; submit a work order
send {CTRLDOWN}f{CTRLUP}
sleep, 20
send spe
send {ESC}
sleep, 20
send {TAB}
send {CTRLDOWN}v{CTRLUP}
send {CTRLDOWN}f{CTRLUP}
sleep, 20
send cre
send {ESC}
sleep, 20
send {TAB}{SHIFTDOWN}{TAB}{SHIFUP}
send {SPACE}
return

!v:: ; for regular 9-6 scheduling
send {CTRLDOWN}f{CTRLUP}
send fro
sleep, 20
send {ESC}
sleep, 20
send {TAB}
sleep, 20
send 9
sleep, 20
send {TAB}
sleep, 20
send 18
sleep, 20
send {CTRLDOWN}f{CTRLUP}
send technician
sleep, 20
send {ESC}
sleep, 20
send {TAB}
sleep, 550
send {DOWN}
sleep, 20
send {CTRLDOWN}f{CTRLUP}
send Diagnosis
sleep, 20
send {ESC}
sleep, 20
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
sleep, 500
send {SPACE}
sleep, 20
send {TAB}
sleep, 500
send {SPACE}
return

!+v:: ; for checking boxes that got unchecked
send {CTRLDOWN}f{CTRLUP}
send Diagnosis
sleep, 20
send {ESC}
sleep, 20
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
sleep, 20
send {SPACE}
sleep, 400
send {TAB}
sleep, 400
send {SPACE}
return

!+x::
send {CTRLDOWN}f{CTRLUP}
send Submit
sleep, 20
send, {ESC}
sleep, 20
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
send {SPACE}
return

!c:: ; script for copying ticket number
send {CTRLDOWN}l{CTRLUP}
sleep, 20
send {RIGHT}
send {CTRLDOWN}{SHIFTDOWN}{LEFT}{SHIFTUP}{CTRLUP}
sleep, 20
send {CTRLDOWN}c{CTRLUP}
return

!a::
send {CTRLDOWN}f{CTRLUP}
send ent Ans
sleep, 20
send {ESC}
sleep, 20
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
sleep, 20
send {SPACE}
return

!s::
send {CTRLDOWN}f{CTRLUP}
send ule Fol
sleep, 20
send {ESC}
sleep, 20
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
sleep, 20
send {SPACE}
return

!+s::
if (A_hour<=11)
{
send {TAB}{TAB}{TAB}{SPACE}{DOWN}{DOWN}{DOWN}{ESC}
sleep, 250
send {TAB}{TAB}{TAB}{TAB}{TAB}
send call
send {TAB}
}

else
{
send {TAB}{TAB}{TAB}{SPACE}{DOWN}{DOWN}{DOWN}{DOWN}{ESC}
sleep, 250
send {TAB}{TAB}{TAB}{TAB}{TAB}
send call
send {TAB}
}
return

!f:: ; for setting a fail ticket log
send {TAB}{TAB}{TAB}{DOWN}
sleep, 350
send {TAB}{TAB}{TAB}{TAB}{SPACE}{DOWN}{DOWN}{ESC}
sleep, 350
send {TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}
return

!+f:: ; set GSPN to fail
send {TAB}{DOWN}
sleep, 400
send {TAB}{TAB}{SPACE}{DOWN}{DOWN}{ESC}{TAB}
return

!z::
send {CTRLDOWN}f{CTRLUP}
send ule Fol
sleep, 20
send {ESC}
sleep, 20
send {TAB}
sleep, 20
send {SPACE}
return

!t:: ; open ticket log
send {CTRLDOWN}f{CTRLUP}
send ept no
sleep, 20
send {ESC}
sleep, 20
send {SHIFTDOWN}{TAB}{SHIFTUP}
sleep, 20
send {SPACE}
return

!w:: ; open work order
send {CTRLDOWN}f{CTRLUP}
send ew Ser
sleep, 20
send {ESC}
sleep, 20
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
sleep, 20
send {SPACE}
return

!g:: ; sync GSPN status
send {CTRLDOWN}f{CTRLUP}
send nc gsp
sleep, 20
send {ESC}
sleep, 20
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
send {SPACE}
return

!e:: ; open email templates
send {CTLRDOWN}f{CTLRUP}
send te cx let
sleep, 20
send {ESC}
sleep, 20
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
send {SPACE}
return

+~:: ; select all and copy
send ^a
sleep, 10
send ^c
return

::2un::cx has two units {CTLRDOWN}v{CTLRUP}

; goes to the ticket currently in your clipboard
!b::
send {CTLRDOWN}l{CTLRUP}{RIGHT}{SHIFTDOWN}{CLTRDOWN}{LEFT}{SHIFTUP}v{CTLRUP}{RETURN}
return

!+c:: ; requests a ticket cancel
send {CTLRDOWN}v{CTLRUP} cancel
