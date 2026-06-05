msgbox"Hi, welcome to SEB-A ENCRYPTOR",0+64+0+4096, "SEB-A ENCRYPTOR"
msgbox"Please remember that for this to work properely you need to type everything in caps e.g. HELLO WORLD",0+64+0+4096, "SEB-A ENCRYPTOR"
msgbox"WARNING for this to work properely you please do not type any special characters e.g. !@#$%^&*(), punctuations or numbers else they will not be included in the output",0+64+0+4096, "SEB-A ENCRYPTOR"

RAW = inputbox("Please enter the text and/or numbers you want to encrypt below", "SEB-A ENCRYPTOR")
msgbox("You entered: "&RAW)


Dim alphaCount
alphaCount = 0

For i = 1 To Len(RAW)
    ' Get the ASCII code of the current character
    Dim charCode
    charCode = Asc(Mid(RAW, i, 1))
    
if charCode = 113 then str = ("1-" + "%")
if charCode = 119 then str = ("2-" + "%")
if charCode = 69 then str = ("3-" + "%")
if charCode = 82 then str = ("4-" + "%")
if charCode = 84 then str = ("5-" + "%")
if charCode = 89 then str = ("6-" + "%")
if charCode = 85 then str = ("7-" + "%")
if charCode = 73 then str = ("8-" + "%")
if charCode = 79 then str = ("9-" + "%")
if charCode = 80 then str = ("10-" + "%")
if charCode = 65 then str = ("11-" + "%")
if charCode = 83 then str = ("12-" + "%")
if charCode = 68 then str = ("13-" + "%")
if charCode = 70 then str = ("14-" + "%")
if charCode = 71 then str = ("15-" + "%")
if charCode = 72 then str = ("16-" + "%")
if charCode = 74 then str = ("17-" + "%")
if charCode = 75 then str = ("18-" + "%")
if charCode = 76 then str = ("19-" + "%")
if charCode = 90 then str = ("20-" + "%")
if charCode = 88 then str = ("21-" + "%")
if charCode = 67 then str = ("22-" + "%")
if charCode = 86 then str = ("23-" + "%")
if charCode = 66 then str = ("24-" + "%")
if charCode = 78 then str = ("25-" + "%")
if charCode = 77 then str = ("26" + "%")
if charCode = 32 then str = ("*")

finalString = finalString & str
    
    If (charCode >= 65 And charCode <= 90) Or (charCode >= 97 And charCode <= 122) Then
        alphaCount = alphaCount + 1
    End If
Next

' alphaCount var is the output





msgbox("OUTPUT: "&finalString)