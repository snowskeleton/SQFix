f2::
x := "https://secure.kwinternational.com/nsp/ticket/search/ticketlist.aspx?mode=C&searchkey="
clipboard := RegExReplace(clipboard, "\D")
y := clipboard
z := x y
clipboard := z
send ^v
return

f3:
x := "https://secure.kwinternational.com/nsp/ticket/ticketView.aspx?TicketNo="
clipboard := RegExReplace(clipboard, "\D")
y := clipboard
z := x y
clipboard := z
send ^v
return