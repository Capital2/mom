'MOM v2.0 
'File "1.vbs"
'Copyright Debayan Sutradhar 2016
'On Error Resume Next 
Set shell=CreateObject("WScript.Shell")
Set speake=CreateObject("SAPI.spvoice")
Set fso=CreateObject("Scripting.FileSystemObject")
shell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\MOM",WScript.ScriptFullName,"REG_SZ"
shell.run "2.vbs"
stupid=Null
WScript.Sleep 500
ch=5
Set file2=fso.OpenTextFile("POOP.txt",2)
file2.WriteLine("")
file2.Close
Do
user=InputBox("Enter the password below : "&vbNewLine&stupid,"Chances Left : "&ch)
If user<>"06052004@si" Then
ch=ch-1 
If ch=0 Then 
Set file2=fso.OpenTextFile("POOP.txt",2)
file2.WriteLine("")
file2.Close
shell.Run "shutdown.exe /l"
End If
stupid="WRONG PASSWORD!"
End If
          Loop Until user="06052004@si" 'CHANGE THE PASSWORD
Set file1=fso.OpenTextFile("POOP.txt",2)
file1.WriteLine("OK")
file1.Close
speake.speak "Welcome!"
WScript.Sleep 3000
