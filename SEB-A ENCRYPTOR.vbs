msgbox"Hi, welcome to SEB-A ENCRYPTOR",0+64+0+4096, "SEB-A ENCRYPTOR"
msgbox"WARNING for this to work properely you please do not type any special characters e.g. !@#$%^&*(), punctuations or numbers else they will not be included in the output",0+64+0+4096, "SEB-A ENCRYPTOR"

RAW = inputbox("Please enter the text and/or numbers you want to encrypt below", "SEB-A ENCRYPTOR")
msgbox("You entered: "&RAW)


Dim alphaCount
alphaCount = 0

For i = 1 To Len(RAW)
    ' Get the ASCII code of the current character
    Dim charCode
    charCode = Asc(Mid(RAW, i, 1))
    
if charCode = 81 then str = ("~")
if charCode = 87 then str = ("\")
if charCode = 69 then str = ("=")
if charCode = 82 then str = ("+")
if charCode = 84 then str = ("9")
if charCode = 89 then str = ("8")
if charCode = 85 then str = ("7")
if charCode = 73 then str = ("6")
if charCode = 79 then str = ("5")
if charCode = 80 then str = ("4")
if charCode = 65 then str = ("3")
if charCode = 83 then str = ("2")
if charCode = 68 then str = ("1")
if charCode = 70 then str = ("0")
if charCode = 71 then str = ("\")
if charCode = 72 then str = ("/")
if charCode = 74 then str = (":")
if charCode = 75 then str = (";")
if charCode = 76 then str = ("(")
if charCode = 90 then str = ("&")
if charCode = 88 then str = ("^")
if charCode = 67 then str = ("#")
if charCode = 86 then str = ("!")
if charCode = 66 then str = ("@")
if charCode = 78 then str = ("$")
if charCode = 77 then str = (")")
''''''''''''''''''''''''''''''''''lower case
if charCode = 113 then str = ("~")
if charCode = 119 then str = ("\")
if charCode = 101 then str = ("=")
if charCode = 114 then str = ("+")
if charCode = 116 then str = ("9")
if charCode = 121 then str = ("8")
if charCode = 117 then str = ("7")
if charCode = 105 then str = ("6")
if charCode = 111 then str = ("5")
if charCode = 112 then str = ("4")
if charCode = 97 then str = ("3")
if charCode = 115 then str = ("2")
if charCode = 100 then str = ("1")
if charCode = 102 then str = ("0")
if charCode = 103 then str = ("\")
if charCode = 104 then str = ("/")
if charCode = 106 then str = (":")
if charCode = 107 then str = (";")
if charCode = 108 then str = ("(")
if charCode = 122 then str = ("&")
if charCode = 120 then str = ("^")
if charCode = 99 then str = ("#")
if charCode = 118 then str = ("!")
if charCode = 98 then str = ("@")
if charCode = 110 then str = ("$")
if charCode = 109 then str = (")")

if charCode = 32 then str = ("*")
if charCode = 44 then str = ("}")
if charCode = 46 then str = ("{")

finalString = finalString & str
    
    If (charCode >= 65 And charCode <= 90) Or (charCode >= 97 And charCode <= 122) Then
        alphaCount = alphaCount + 1
    End If
Next

' alphaCount var is the output





msgbox("OUTPUT: "&finalString)

Set fso = CreateObject("Scripting.FileSystemObject")
Set file = fso.CreateTextFile("D:/ENCRYPTION/SEB-A-ENCRYPTOR/e-out.txt")
file.WriteLine ""&finalString
file.Close

Set file = Nothing
Set fso = Nothing
