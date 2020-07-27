f2:: ; search phone number # url bar
If WinActive("Ticket Search") || If WinActive("MAX") {
	send ^c
	send ^t
	LeaveOnlyNumbers()
	send ^l
	send ^a
	SwitchNPaste("https://secure.kwinternational.com/nsp/ticket/search/ticketlist.aspx?mode=C&searchkey=", clipboard)
	send {RETURN}
	}
Else {
	LeaveOnlyNumbers()
	send ^l
	send ^a
	SwitchNPaste("https://secure.kwinternational.com/nsp/ticket/search/ticketlist.aspx?mode=C&searchkey=", clipboard)
	send {RETURN}
	}
return

LeaveOnlyNumbers() { ; uses RegEx to take out all non-number characters from the clipboard. Also makes a backup of the unadulturated clipboard for convenience
	temp := clipboard
	clipboard := RegExReplace(clipboard, "\D")
	}

SwitchNPaste(new_board, y:="") {
	switch_temp := clipboard
	clipboard := new_board y
	send ^v
	clipboard := switch_temp
	}