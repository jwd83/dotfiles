#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

; rebind [win] + [f] to run everything
#f::
Run, C:\Program Files\Everything\Everything.exe 
Return
