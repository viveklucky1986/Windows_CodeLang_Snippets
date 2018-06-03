On Error Resume Next

strComplex = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!#_-%&?"
strComplex2 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789|=-~`!@#$%^&*()_+?><,.:;'"
strLength = 16
strTitle = "Random Password Generator"
strGeneratedPassword = RandomizePassword(strLength)

Function Generate(RandomNumber)
    Randomize
    Generate = INT(RND()*RandomNumber)+1
End Function

Function RandomizePassword(strLength)
    RandomizePassword = ""
    RandomNumber = Len(strComplex)
    For x = 1 To strLength
        strNum = Generate(RandomNumber)
        strNext = Mid(strComplex,strNum,1)
        RandomizePassword = RandomizePassword & strNext
    Next
End Function

Set WshShell = CreateObject("WScript.Shell")
Set oExec = WshShell.Exec("clip")
Set oIn = oExec.stdIn
oIn.WriteLine strGeneratedPassword
oIn.Close

MsgBox("Generated password is copied to clipboard")
