#IfWinNotActive, @

!s:: ; Contact Success # ticket log
	TabTimes(3)
	send c
	sleep, 500
	TabTimes(4)
	send s
	sleep, 500
	FindButton("- LOG MESSAGE -")
	TabTimes(1)
return

!f:: ; Contact Fail # ticket log
	TabTimes(3)
	send c
	sleep, 500
	TabTimes(4)
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
		RegExMatch(clipboard, "[\w]+[-]?[\w]*", foo)
		send ^t
		ReleaseKeys()
		send ^l
		ReleaseKeys()
		SwitchNPaste("https://secure.kwinternational.com/nsp/ticket/ticketView.aspx?TicketNo=", foo)
		send {RETURN}
		clipboard := RegExReplace(clipboard, "[\w]+[-]?[\w]*" , Replacement := "", OutputVarCount := "", Limit := 1, StartingPosition := 1)
		sleep 10
	}
return

!v:: ; for just 9-6 scheduling, no box checking # service order
FindButton("Appointment Date", false)
TabTimes(3)
send 9
TabTimes(1)
send 18
TabTimes(1)
return

$^+a::
WinActivate RingCentral
send +{RETURN}
return

$^e::
WinActivate RingCentral
send ^e
return

!e:: ; open email templates (doesn't work) # main page
FindButton("Generate CX Letter/Email")
TabTimes(1, 1, "space")
return

!g:: ; sync with GSPN # main page
FindButton("Sync with GSPN")
TabTimes(1, 1, "space")
return

!n:: ; next page # zone schedule
if WinActive("KW Office") {
	TabTimes(5,, "space")
	}
return

!b:: ; pervious page # zone schedule
if WinActive("KW Office") {
	TabTimes(3,, "space")
	}
return

!z:: ; open Zone Schedule # main page
	FindButton("Schedule Follow Up")
	TabTimes(1,, "space")
return

!a:: ; click Agent Answered Callfire # main page
	FindButton("Agent Answered Call Fire")
	TabTimes(1, 1, "space")
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

#IfWinNotActive