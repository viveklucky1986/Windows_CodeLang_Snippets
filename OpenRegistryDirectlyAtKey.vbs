Set WshShell = CreateObject("WScript.Shell")
Dim JumpToKey:JumpToKey=Inputbox("Which registry key would you like to open?")
WshShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit\Lastkey",JumpToKey,"REG_SZ"
WshShell.Run "regedit", 1,True
Set WshShell = Nothing
' Set WshShell = CreateObject("WScript.Shell")
' Dim JumpToKey
' JumpToKey=Inputbox("Which registry key would you like to open?")
' WshShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit\Lastkey",JumpToKey,"REG_SZ"
' WshShell.Run "regedit", 1,True
' Set WshShell = Nothing
