#SingleInstance Force
#Persistent
#NoEnv  ; Improve performance
SetWorkingDir %A_ScriptDir%
Suspend, Off

ifWinActive World of Warcraft
{

  ; Common function to handle key presses
  PressKey(key) {
    Loop
    {
      if not GetKeyState(key, "P")
        break
      Send %key%
      RandSleep(150, 200)
    }
    return
  }

  ; Key bindings
  $f::PressKey("f")
  $'::PressKey("'")
  $1::PressKey("1")
  $2::PressKey("2")
  $3::PressKey("3")
  $4::PressKey("4")
  $5::PressKey("5")
  $t::PressKey("t")
  $v::PressKey("v")

  RandSleep(x, y) {
    Random, rand, %x%, %y%
    Sleep %rand%
  }
}

#IfWinActive  ; Reset context to global

InitialStateSuspension:=0
F8::
  Suspend, Toggle
  if(A_IsSuspended && InitialStateSuspension=0){
    Suspend,Off
    InitialStateSuspension:=1
  }
  ToolTip, % (A_IsSuspended ? "SUSPENDED" : "ACTIVE"), , , 1
  SetTimer, RemoveToolTip, -200  ; Remove after 0.2 seconds
return

; Remove tooltip
RemoveToolTip:
  ToolTip, , , , 1
return
