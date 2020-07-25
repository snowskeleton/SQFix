#IfWinNotActive, snow@ziggy

!w:: ; open service order # main page
send {CTRLDOWN}f{CTRLUP}
send ew Ser
send {ESC}
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
send {SPACE}
return

!+w::  ; submit a work order # pre-service order
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

!^w:: ; edit a work order # service order
send {CTRLDOWN}f{CTRLUP}
send edit
send {ESC}{TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
send {SPACE}
return

!v:: ; 9-6 scheduling and box checking # service order
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

!+v:: ; for box checking
send {CTRLDOWN}f{CTRLUP}
send Diag
send {ESC}
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
send {SPACE}
send {TAB}
sleep, 600
send {SPACE}
return

^!v:: ; for just 9-6 scheduling, no box checking # service order
send {CTRLDOWN}f{CTRLUP}
send ment da
sleep, 20
send {ESC}
sleep, 10
send {TAB}{TAB}{TAB}
send 9
send {TAB}
send 18
send {TAB}
return

!x:: ; save service order # service order
send {CTRLDOWN}f{CTRLUP}
send Submit
send, {ESC}
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
send {SPACE}
return

!+x:: ; back to ticket from service order # service order
send {CTRLDOWN}f{CTRLUP}
send ck To tic
send {ESC}
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
send {SPACE}
return

!c::
send {CTRLDOWN}l{CTRLUP}
send {CTRLDOWN}c{CTRLUP}
clipboard := RegExReplace(clipboard, "^[^=]*=")
clipboard := RegExReplace(clipboard, "&.*$")
return

!a:: ; click Agent Answered Callfire # main page
send {CTRLDOWN}f{CTRLUP}
send ent Ans
send {ESC}
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
send {SPACE}
return

!+s:: ; open the Schedule Followup menu (antiquated) # main page
send {CTRLDOWN}f{CTRLUP}
send ule Fol
send {ESC}
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
send {SPACE}
return

!s:: ; Contact Success # ticket log
send {TAB}{TAB}{TAB}c
sleep, 400
send {TAB}{TAB}{TAB}{TAB}s{ESC}
sleep, 400
send ^f
send og m
send {ESC}{TAB}
return

!f:: ; Contact Fail # ticket log
send {TAB}{TAB}{TAB}c
sleep, 400
send {TAB}{TAB}{TAB}{TAB}f{ESC}
sleep, 400
send ^f
send og m
send {ESC}{TAB}
return

!+f:: ; update GSPN status to Contact Fail (works only if the ticket is acknowledged) # Update GSPN Status menu 
send {TAB}{DOWN}
sleep, 1000
send {TAB}{TAB}{SPACE}{DOWN}{DOWN}{ESC}{TAB}
return

!z:: ; open Zone Schedule # main page
send {CTRLDOWN}f{CTRLUP}
send ule Fol
send {ESC}
send {TAB}
send {SPACE}
return

!b:: ; pervious page # zone schedule
send {TAB}{TAB}{TAB}{SPACE}
return

!n:: ; next page # zone schedule
send {TAB}{TAB}{TAB}{TAB}{TAB}{SPACE}
return

!t:: ; open ticket log # main page
send {CTRLDOWN}f{CTRLUP}
send ept no
send {ESC}
send {SHIFTDOWN}{TAB}{SHIFTUP}
send {SPACE}
return

!g:: ; sync with GSPN # main page
send {CTRLDOWN}f{CTRLUP}
send sync gsp
send {ESC}
send {TAB}{SHIFTDOWN}{TAB}{SHIFTUP}
send {SPACE}
return

!e:: ; open email templates (doesn't work) # main page
send {CTLRDOWN}f{CTLRUP}
send ate sta
send {ESC}
send {SHIFTDOWN}{TAB}{TAB}{SHIFTUP}
send {SPACE}
return

f2:: ; search phone number # url bar
x := "https://secure.kwinternational.com/nsp/ticket/search/ticketlist.aspx?mode=C&searchkey="
clipboard := RegExReplace(clipboard, "\D")
y := clipboard
z := x y
clipboard := z
send ^a
send ^v
clipboard := y
return

+~:: ; select all and copy
send ^a
send ^c
return

^#v:: ; exchange cliboard and selection (useful for switching primary and secondary phone numbers, among other things)
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