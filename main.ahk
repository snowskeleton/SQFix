#SingleInstance Force
SendMode Input

SetNumLockState, AlwaysOn
CapsLock::send {Return}
+Capslock::send {SHIFTDOWN}{RETURN}{SHIFTUP}

#IfWinNotActive, @

#include functions.ahk
#include pageControl.ahk

; text replacement

#include calledIn.ahk
#include symptoms.ahk
#include calling.ahk
#include warehouseDetails.ahk
#include singleKeys.ahk
#include things.ahk


::dmg::
SendInput,
(
1) What was damaged, and how was it damaged?
2) When did you first see the damage, and was the technician notified on-site?
3) What is your desired outcome for this claim? 
Please have cx send pictures of the damage and its surrounding area to email: voc@servicequick.com
	)
return

:O0:ssnum::800 726 7864

:O0:;vid::https://app.clipchamp.com/

::tun::
SwitchNPaste("cx has multiple units ", clipboard)
return

;;


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

+~:: ; select all and copy
send ^a
send ^c
return

!c::
	send ^l
	send ^c
	clipboard := RegExReplace(clipboard, "^[^=]*=")
	clipboard := RegExReplace(clipboard, "&.*$")
return


#IfWinNotActive