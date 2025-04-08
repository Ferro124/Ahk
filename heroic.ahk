#SingleInstance Force

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
  $t::PressKey("t")
  $v::PressKey("v")

  RandSleep(x, y) {
    Random, rand, %x%, %y%
    Sleep %rand%
  }
}

F8::Suspend
