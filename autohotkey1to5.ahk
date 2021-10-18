#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

$1::
  While GetKeyState("1","P") {
    Send, 1
    Sleep, 100
  }
Return

$2::
  While GetKeyState("2","P") {
    Send, 2
    Sleep, 100
  }
Return

$3::
  While GetKeyState("3","P") {
    Send, 3
    Sleep, 100
  }
Return

$4::
  While GetKeyState("4","P") {
    Send, 4
    Sleep, 100
  }
Return

$5::
  While GetKeyState("5","P") {
    Send, 5
    Sleep, 100
  }
Return

