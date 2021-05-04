#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force
#NoTrayIcon

; Get time to run as minutes
InputBox, orig, Timer, How many minutes should the timer run for?

orig := orig * 60
curTime := orig
small := 0

; Position of the GUI
width := A_ScreenWidth/2
height := A_ScreenHeight - 30

SetTimer, Timer, 1000

GUI:
Gui, Font, s8, Lucida Console
Gui, +AlwaysOnTop +ToolWindow -Caption
Gui, Add, Text, x5 y5 vDisplay, % orig//60 ":" Mod(orig, 60) "0"
Gui, Show, x%width% y%height% w45 h20

Timer:
; Always put the timer on top
WinSet, Top,, Timer15.ahk

; Get values for minutes and seconds

mins := curTime//60, sec := Mod(curTime, 60), 

; Decrease current time by one
curTime--

; Statements used for expanding GUI size based on number width
if (0 <= sec) and (sec <= 9)
	sec := "0" sec
if (mins < 10) and (small = 0) {
	small := 1
	Gui, Show, x%width% y%height% w37 h20 NoActivate
}
if (mins >= 10) and (small = 1) {
	small := 0
	Gui, Show, x%width% y%height% w45 h20 NoActivate
}

; If current time is 0, then timer is done
if (curTime = 0) {
	FormatTime, now,, Time
	mins := orig//60, sec := Mod(orig, 60), curTime := orig
	
	; Play alarm sound
	SoundPlay, C:\Windows\Media\Alarm01.wav
	
	; Ask if timer should be reset
	MsgBox, 4, Resetting Timer, Resetting timer to %mins% minutes and %sec% seconds.`nThe current time is: %now%
	IfMsgBox, No
		ExitApp
}

; Format and display the time
GuiControl, Text, Display, % mins ":" sec
return