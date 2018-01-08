;Autohotkey script to automate selecting correct settings for my AMD R9 280 overclock.
;I have disabled Windows UAC so that this script will work for me, I'm not sure if it is possible to run the script without disabling it.

IfWinExist ahk_exe MSIAfterburner.exe
	winactivate ahk_exe MSIAfterburner.exe
else
	run, "C:\Path\to\MSIAfterburner.exe"


;Script needs to be run as a admin
if not A_IsAdmin
{
 Run *RunAs "%A_ScriptFullPath%"
 ExitApp
}

WinWait ahk_exe MSIAfterburner.exe
WinActivate ahk_exe MSIAfterburner.exe
WinWaitActive ahk_exe MSIAfterburner.exe

ControlClick, x311 y338, ahk_exe MSIAfterburner.exe,,,, Pos  ;Opens settings
sleep 500
ControlClick, Extend official overclocking limits, ahk_exe MSIAfterburner.exe
sleep 500
ControlClick, x280 y648, ahk_exe MSIAfterburner.exe
sleep 500
Send {Down}
sleep 500
ControlClick, x280 y648, ahk_exe MSIAfterburner.exe
sleep 500
ControlClick, x210 y740, ahk_exe MSIAfterburner.exe
sleep 500
ControlClick, x276 y123, ahk_exe MSIAfterburner.exe

WinWait ahk_exe MSIAfterburner.exe
WinActivate ahk_exe MSIAfterburner.exe
WinWaitActive ahk_exe MSIAfterburner.exe ;Wait for program to start

ControlClick, x311 y338, ahk_exe MSIAfterburner.exe,,,, Pos  ;Opens settings
sleep 500
ControlClick, Extend official overclocking limits, ahk_exe MSIAfterburner.exe
sleep 500
ControlClick, x280 y648, ahk_exe MSIAfterburner.exe
sleep 500
Send {Up}
sleep 500
ControlClick, x280 y648, ahk_exe MSIAfterburner.exe
sleep 500
ControlClick, x210 y740, ahk_exe MSIAfterburner.exe
sleep 500
ControlClick, x276 y123, ahk_exe MSIAfterburner.exe

WinWait ahk_exe MSIAfterburner.exe
WinActivate ahk_exe MSIAfterburner.exe
WinWaitActive ahk_exe MSIAfterburner.exe ;Wait for program to start

MouseClickDrag, left, 295, 233, 500, 233 ;Sets overclock for Core
MouseClickDrag, left, 295, 268, 500, 268 ;Sets overclock for Memory
sleep 500
ControlClick, x470 y338, ahk_exe MSIAfterburner.exe ;Confirms overclock settings
sleep 500
ControlClick, x682 y29, ahk_exe MSIAfterburner.exe ;Minimizes program
