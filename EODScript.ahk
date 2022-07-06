!P::
Suspend
return

!C::
StringSplit, ClipboardArray, Clipboard, `&
num1 = %ClipboardArray1%
startNumber = %ClipboardArray2%
return

!S::
num1 = 1000
startNumber = 1
return 

RButton::
Send, %num1%
Send, ,
Send, %startNumber%
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

'::
Send, *
Send, %clipboard%
Send, {Enter}
return

\::
Send, {NumpadAdd}
Send, %clipboard%
Send, {Enter}
return