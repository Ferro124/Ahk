#IfWinActive, World of Warcraft	;; enabled only in WoW

X::
    Send, {= down}
    Send, {w down}
   
    Sleep, 180 ; ajuste o tempo de acordo com a necessidade
    Send, {w up}

    Send, {= down}

    Send, {s down}
    Sleep, 280 ; ajuste o tempo de acordo com a necessidade
    Send, {= down}
    Send, {s up}
return

#IfWinActive	;; disable WoW context sensitivity


F6::Suspend	;; Ctrl + PageDown to suspend script (if you want to chat)
