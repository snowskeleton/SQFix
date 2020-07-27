!q::  ; submit a work order
send {CTRLDOWN}f{CTRLUP}
sleep, 20
send spe
send {ESC}
sleep, 20
send {TAB}
sleep, 20
send {CTRLDOWN}v{CTRLUP}
sleep, 20
send {CTRLDOWN}f{CTRLUP}
sleep, 20
send cre
send {ESC}
sleep, 20
send {TAB}{SHIFTDOWN}{TAB}{SHIFUP}
sleep, 20
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

 ; script for copying ticket number
!c::
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

!f:: ; for setting a fail ticket log
send {TAB}{TAB}{TAB}{DOWN}
sleep, 300
send {TAB}{TAB}{TAB}{TAB}{SPACE}{DOWN}{DOWN}{ESC}
return

!+f:: ; for setting a fail ticket log with notes
send {TAB}{TAB}{TAB}{DOWN}
sleep, 300
send {TAB}{TAB}{TAB}{TAB}{SPACE}{DOWN}{DOWN}{ESC}
sleep, 300
send {CTRLDOWN}f{CTRLUP}
send "OG ME" {ESC}
send {TAB}
send called to schedule lmom
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

!t::
send {CTRLDOWN}f{CTRLUP}
send ept no
sleep, 20
send {ESC}
sleep, 20
send {SHIFTDOWN}{TAB}{SHIFTUP}
sleep, 20
send {SPACE}
return

!w::
send {CTRLDOWN}f{CTRLUP}
send ew Ser
sleep, 20
send {ESC}
sleep, 20
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
sleep, 20
send {SPACE}
return

!g::
send {CTRLDOWN}f{CTRLUP}
send Update GSPN Status
sleep, 20
send {ESC}
sleep, 20
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
sleep, 20
send {SPACE}
return

!e::
send {CTLRDOWN}f{CTLRUP}
send e cx le
sleep, 20
send {ESC}
sleep, 20
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
sleep, 20
send {SPACE}
return

+~::
send ^a
sleep, 10
send ^c
return

::2un::cx has two units {CTLRDOWN}v{CTLRUP}

!+c::
send {CTLRDOWN}v{CTLRUP} cancel
