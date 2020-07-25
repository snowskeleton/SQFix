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