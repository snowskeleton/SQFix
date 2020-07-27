#IfWinNotActive, snow@ziggy
#SingleInstance Force
Global Haystack := ""

$^+a::
WinActivate RingCentral
send +{RETURN}
send !{TAB}
return

$^e::
WinActivate RingCentral
send ^e
send !{TAB}
return

!x:: ; closing pages
If ThisPageIs("EditWorkOrderAjax") && ThisPageIs("edit=true", false) { ; submit service order
	FindButton("Cancel Service Order", false)
	TabTimes(0, 1, "space")
	}
Else If ThisPageIs("EditCustomerContact.aspx", false) { ; edit ticket log
	FindButton("Cancel Contact")
	TabTimes(0, 1, "space")
	}
Else If ThisPageIs("AddCustomerContact", false) { ; save normal ticket log
	TabTimes(0, 3, "space")
	}
Else If ThisPageIs("customerInfoEdit", false) { ;  update contact information
	FindButton("Update")
		TabTimes(1, 1, "space")
	}
Else If ThisPageIs("EditWorkOrderAjax.aspx", false) { ;  back to ticket from service order
	FindButton("Back to Ticket", false)
		TabTimes(1, 1, "space")
	}
Else If ThisPageIs("productInfoEdit", false) { ; update serial number
	FindButton("Update")
		TabTimes(1, 1, "space")
	}
Else If ThisPageIs("workOrderNoteEdit.aspx", false) { ; Call Agent Note
	FindButton("Separate each recipient with a comma")
	TabTimes(1,, "space")
	}
return

!w:: ; opening and editing service orders
If ThisPageIs("TicketNo") { ; open new work order
	FindButton("New Service Order")
	TabTimes(1, 1, "space")
	}
Else If ThisPageIs("AddWorkOrder", false) { ; create service order
	FindButton("**Only Shows on Tablet**")
	TabTimes(1)
	send ^v
	ReleaseKeys()
	send ^l
	ReleaseKeys()
	TabTimes(0, 3, "space")
	}
Else If ThisPageIs("EditWorkOrderAjax", false) { ; editing service orders
	TabTimes(0, 6, "space")
	}
return

!+w::
FindButton("create")
TabTimes(1, 1, "space")
return

!v:: ; 9-6 scheduling and box checking # service order
FindButton("Appointment Date")
TabTimes(3)
send 9
TabTimes(1)
send 18
FindButton("Diagnosis", false)
TabTimes(1, 1)
sleep, 600
send {SPACE}
TabTimes(1)
sleep, 700
send {SPACE}
return

!+v:: ; for box checking
FindButton("Diagnosis")
TabTimes(1, 1, "space")
TabTimes(1)
sleep, 700
send {SPACE}
return

^!v:: ; for just 9-6 scheduling, no box checking # service order
FindButton("Appointment Date", false)
TabTimes(3)
send 9
TabTimes(1)
send 18
TabTimes(1)
return

!t:: ; open ticket log/select SMS for ticket log
If ThisPageIs("TicketNo") { ; open ticket log
	FindButton("New Service Order")
	TabTimes(0, 2, "space")
	}
Else If ThisPageIs("AddCustomerContact", false) { ; select SMS if the ticket log has focus
	TabTimes(3)
	send s
	}
return

!c::
	send ^l
	send ^c
	clipboard := RegExReplace(clipboard, "^[^=]*=")
	clipboard := RegExReplace(clipboard, "&.*$")
return

!a:: ; click Agent Answered Callfire # main page
	FindButton("Agent Answered Call Fire")
	TabTimes(1, 1, "space")
return

; !+s:: ; open the Schedule Followup menu (antiquated) # main page
; FindButton("Schedule Follow Up")
; TabTimes(1, 1, "space")
; return

!s:: ; Contact Success # ticket log
	FindButton("Log Type")
	TabTimes(1)
	send c
	
	Loop
		Sleep, 1
	until WinActive("KW Office")
	
	FindButton("Contact Result")
	TabTimes(1)
	send s
	sleep, 500
	FindButton("- LOG MESSAGE -")
	TabTimes(1)
return

!f:: ; Contact Fail # ticket log
	FindButton("Log Type")
	TabTimes(1)
	send c
	Loop 50
		{
		while !WinActive("KW Office")
			continue
		Sleep, 100
		}
	FindButton("Contact Result")
	TabTimes(1)
	send f
	sleep, 500
	FindButton("- LOG MESSAGE -")
	TabTimes(1)
return

!+f:: ; update GSPN status to Contact Fail (works only if the ticket is acknowledged) # Update GSPN Status menu 
	TabTimes(1)
	send {DOWN}
	sleep, 1000
	TabTimes(2)
	send {DOWN}{DOWN}{ESC}
	TabTimes(1)
return

!z:: ; open Zone Schedule # main page
	FindButton("Schedule Follow Up")
	TabTimes(1,, "space")
return

!b:: ; pervious page # zone schedule
if WinActive("KW Office") {
	TabTimes(3,, "space")
	}
return

!n:: ; next page # zone schedule
if WinActive("KW Office") {
	TabTimes(5,, "space")
	}
return

!g:: ; sync with GSPN # main page
FindButton("Sync with GSPN")
TabTimes(1, 1, "space")
return

!e:: ; open email templates (doesn't work) # main page
FindButton("Generate CX Letter/Email")
TabTimes(1, 1, "space")
return

f2:: ; search phone number # url bar
If WinActive("Ticket Search") || If WinActive("MAX") {
	send ^c
	ReleaseKeys()
	send ^t
	ReleaseKeys()
	LeaveOnlyNumbers()
	send ^l
	ReleaseKeys()
	send ^a
	ReleaseKeys()
	SwitchNPaste("https://secure.kwinternational.com/nsp/ticket/search/ticketlist.aspx?mode=C&searchkey=", clipboard)
}
Else {
	LeaveOnlyNumbers()
	send ^l
	ReleaseKeys()
	send ^a
	ReleaseKeys()
	SwitchNPaste("https://secure.kwinternational.com/nsp/ticket/search/ticketlist.aspx?mode=C&searchkey=", clipboard)
}
If clipboard != 
		send {RETURN}
return

!+^n::
	loop, parse, clipboard, `n, `r
		lines:=a_index

	Loop %lines% {
			send ^t
			ReleaseKeys()
			send ^l
			ReleaseKeys()
			RegExMatch(clipboard, "[\w]+[-]?[\w]*", foo)
			sleep, 10
			SwitchNPaste("https://secure.kwinternational.com/nsp/ticket/ticketView.aspx?TicketNo=", foo)
			send {RETURN}
			clipboard := RegExReplace(clipboard, "[\w]+[-]?[\w]*" , Replacement := "", OutputVarCount := "", Limit := 1, StartingPosition := 1)
			sleep 10
		}
return

+~:: ; select all and copy
send ^a
send ^c
return

::tun::
SwitchNPaste("cx has multiple units ", clipboard)
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


; Begin Functions

ThisPageIs(page, newPage:=true){ ; checks if the current URL contains the paramater.
	temp := clipboard
	if newPage {
		send {ESC}
		send ^l
		ReleaseKeys()
		send ^c
		ReleaseKeys()
		Haystack := clipboard
		clipboard := temp
	}
	;MsgBox, %Haystack% is the haystack
	If InStr(Haystack, page) {
		return true
		}
	Else {
		return false
	}

}

LeaveOnlyNumbers() { ; uses RegEx to take out all non-number characters from the clipboard. Also makes a backup of the unadulturated clipboard for convenience
	temp := clipboard
	clipboard := RegExReplace(clipboard, "\D")
}

SwitchNPaste(new_board, y:="") {
	switch_temp := clipboard
	clipboard := new_board y
	sleep 1
	send ^v
	ReleaseKeys()
	clipboard := switch_temp
}

FindButton(button_name, returnq:=true, back:=false) {
	send ^f
	ReleaseKeys()
	SwitchNPaste(button_name)
	ReleaseKeys()
	If returnq {
		send {RETURN}
		}
	send {ESC}
	ReleaseKeys() 
}

TabTimes(times_forward, times_backward:=0, space_or_no:=false, forward_again:=0) {
	ReleaseKeys()
	Loop %times_forward% {
		send `t
		}
	ReleaseKeys()
	Loop %times_backward% {
		send +`t
		}
	ReleaseKeys()
	Loop %forward_again% {
		send `t
		}
	ReleaseKeys()
	If space_or_no {
		send {SPACE}
		}
	ReleaseKeys()
}
	
ReleaseKeys() {
	KeyList := "Shift|Alt|Ctrl|Win"

	Loop, Parse, KeyList, |
	{
		SendInput % "{" A_Loopfield " Up}"
	}
}