f2::
 {
   temp := clipboardall
   clipboard := "https://secure.kwinternational.com/nsp/ticket/search/ticketlist.aspx?mode=C&searchkey="
   sendinput, ^v
   clipboard := temp
   clipboard := RegExReplace(clipboard, "\D")
   sendinput, ^v
 }
return