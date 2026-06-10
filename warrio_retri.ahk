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
      RandSleep(20, 40)
      Send %key%
      Send {Numpad1}
      Send {Numpad2}
      Send {Numpad3}      
      ;Send {Space}        
    }
    return
  }

   PressKeySLAM(key) {
    Loop
    {
      if not GetKeyState(key, "P")
        break
      Send {Numpad1}
      Send {Numpad2}
      Send %key%
      RandSleep(20, 40)
      Send {Space}
      
    }
    return
  }
  
  ; Key bindings
  $f::PressKey("f")
  $r::PressKey("r")
  $q::PressKey("q")
  $e::PressKey("e")
  $z::PressKey("z")
  $x::PressKey("x")
  $1::PressKey("1")
  $2::PressKey("2")
  $3::PressKeySLAM("3")
  $4::PressKey("4")
  $5::PressKey("5")
  $6::PressKey("6")
  $t::PressKey("t")
  $v::PressKey("v")
  $'::PressKey("'")		  

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
  SetTimer, RemoveToolTip, -600  ; Remove after 0.2 seconds
return

Enter::return

; Remove tooltip
RemoveToolTip:
  ToolTip, , , , 1
return
