!+w::  ; submit a work order
send {CTRLDOWN}f{CTRLUP}
sleep, 20
send spec
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
send ent d
send {ESC}
sleep, 20
send {TAB}{TAB}{TAB}
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
send tech
sleep, 20
send {ESC}
sleep, 20
send {TAB}
sleep, 550
send {DOWN}
sleep, 20
send {CTRLDOWN}f{CTRLUP}
send Diag
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
send {CTRLDOWN}c{CTRLUP}
return

!a::
send {CTRLDOWN}f{CTRLUP}
send ent Ans
sleep, 20
send {ESC}
sleep, 20
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
send {SPACE}
return

!+s::
send {CTRLDOWN}f{CTRLUP}
send ule Fol
sleep, 20
send {ESC}
sleep, 20
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
send {SPACE}
return

!s::
send {TAB}{TAB}{TAB}c
sleep, 400
send {TAB}{TAB}{TAB}{TAB}s{ESC}
sleep, 400
send {TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}
return


!f:: ; for setting a fail ticket log
send {TAB}{TAB}{TAB}c
sleep, 400
send {TAB}{TAB}{TAB}{TAB}f{ESC}
sleep, 400
send {TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}
return

!+f:: ; set GSPN to fail
send {TAB}{DOWN}
sleep, 1000
send {TAB}{TAB}{SPACE}{DOWN}{DOWN}{ESC}{TAB}
return

!+e:: ; GSPN engineer assigned
send {TAB}{SPACE}e
sleep, 1000
send {TAB}{TAB}{DOWN}{TAB}
return

!z::
send {CTRLDOWN}f{CTRLUP}
send ule Fol
sleep, 20
send {ESC}
sleep, 20
send {TAB}
send {SPACE}
return

!t:: ; open ticket log
send {CTRLDOWN}f{CTRLUP}
send ept no
sleep, 20
send {ESC}
sleep, 20
send {SHIFTDOWN}{TAB}{SHIFTUP}
send {SPACE}
return

!w:: ; open work order
send {CTRLDOWN}f{CTRLUP}
send ew Ser
sleep, 20
send {ESC}
sleep, 20
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
send {SPACE}
return

!g:: ; sync GSPN status
send {CTRLDOWN}f{CTRLUP}
sleep, 20
send ync gsp
sleep, 20
send {ESC}
sleep, 20
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
send {SPACE}
return

!e:: ; open email templates
send {CTLRDOWN}f{CTLRUP}
sleep, 20
send ate cx lett
sleep, 20
send {ESC}
sleep, 20
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
send {SPACE}
return

+~:: ; select all and copy
send ^a
send ^c
return

!b::
send {TAB}{TAB}{TAB}{SPACE}
return

!n::
send {TAB}{TAB}{TAB}{TAB}{TAB}{SPACE}
return

::2un::
send cx has two units
send ^v
return

::cnc:: ; requests a ticket cancel
send ^v
send {SPACE}cancel
