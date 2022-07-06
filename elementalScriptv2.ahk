Down::
{   
        Send {Alt Down}{Tab} ;Bring up switcher immediately            
        KeyWait, F1, T.5  ; Go to next window; wait .5s before looping
        if (Errorlevel)
       {       
        While ( GetKeyState( "F1","P" ) ) {
            Send {Tab}        
            Sleep, 400 ; wait 400ms before going to next window
        }
    }
        Send {Alt Up} ;Close switcher on hotkey release
}
Sleep, 68
Send, ^c
Sleep, 68
Send, {Down}
{   
        Send {Alt Down}{Tab} ;Bring up switcher immediately            
        KeyWait, F1, T.5  ; Go to next window; wait .5s before looping
        if (Errorlevel)
       {       
        While ( GetKeyState( "F1","P" ) ) {
            Send {Tab}        
            Sleep, 400 ; wait 400ms before going to next window
        }
    }
        Send {Alt Up} ;Close switcher on hotkey release
}
Send, ^v
Send, {Enter}
return

!F::
end = 
return

!E::
AutoTrim, Off
end = %clipboard%
return

!G::
startNumber = 1
return

!P::
Suspend
return

!C::
AutoTrim, Off
StringSplit, ClipboardArray, Clipboard, `&
num1 = %ClipboardArray1%
startNumber = %ClipboardArray2%
end = %ClipboardArray3%
return

!S::
num1 = 1000
startNumber = 1
return 

RButton::
Send, %num1%
Send, ,
Send, %startNumber%
Send, %end%
Send, {Enter}
startNumber+=1
if (num1 < 0) 
{
	startNumber := startNumber-2
}
if (startNumber > 1000 and num1 < 10000)
{
	num1 := num1+1000
	startNumber := 1
}
return

[::
Send, {NumpadAdd}
Send, 1
Send, {Enter}
return

]::

Send, {NumpadAdd}
Send, -1
Send, {Enter}
return

`;::
Send, *2
Send, {Enter}
return

Left::
Send, *
Send, %clipboard%
Send, {Enter}
return

\::
Send, {NumpadAdd}
Send, %clipboard%
Send, {Enter}
return

Right::
Send, %num1%
Send, %startNumber%
Send, %end%
Send, {Enter}
startNumber+=1
return
