On Error Resume Next
Dim objFSO
Set WshShell = CreateObject("Wscript.Shell")

AppData = WshShell.ExpandEnvironmentStrings("%APPDATA%")

path = AppData & "\SecureEmailOutlookAddIn"

Set objFSO = CreateObject("Scripting.FileSystemObject")

Wscript.Echo "Deleting folder: " & path

objFSO.DeleteFolder path, true
