
$program = IniRead("a.ini", "autoit","prog","");,"C:\Program Files\Mozilla Firefox\firefox.exe")
$firsturl = IniRead("a.ini" ,"autoit","url1","");,"www.google.com") 
$secondurl = IniRead("a.ini", "autoit","url2","");,"www.yahoo.com")
$time = IniRead("a.ini", "autoit","time",60000);,60000)
$check = IniRead("a.ini","autoit","check",1);,1)
$cline = $program & " " & $firsturl & " " & $secondurl
If int($check) >=1 Then
MsgBox(64, "Autoit", "Starting script...")
EndIf
run($cline)
WinWaitActive("[CLASS:MozillaWindowClass]")
Send("{f11}")					;	Assumed to open firefox in Fullscreen
HotKeySet("+e", "funcf1")  		; 	Shortcut key to stop the script ===> "Shift + e" 
$i = 0
While $i <= 10
	Sleep(int($time))
	Send("^{TAB}")				; Emulates "Cntl + tab"
WEnd

Func funcf1()
	$i = 20
EndFunc   