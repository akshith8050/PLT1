VERSION 5.00
Begin VB.Form frmpalindrome 
   Caption         =   "palindrome"
   ClientHeight    =   9270
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   16590
   LinkTopic       =   "Form2"
   ScaleHeight     =   9270
   ScaleWidth      =   16590
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "CHECK"
      Height          =   735
      Left            =   4320
      TabIndex        =   2
      Top             =   2160
      Width           =   2055
   End
   Begin VB.TextBox txtstr 
      Height          =   495
      Left            =   5280
      TabIndex        =   1
      Top             =   840
      Width           =   2895
   End
   Begin VB.Label Label1 
      Caption         =   "enter a string to check whether palindrome or not"
      Height          =   495
      Left            =   480
      TabIndex        =   0
      Top             =   840
      Width           =   3975
   End
End
Attribute VB_Name = "frmpalindrome"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
strstring = txtstr.Text
length = Len(strstring)
While (length > 0)
c = Mid$(strstring, length, 1)
rev = rev & c
length = length - 1
Wend

If strstring = rev Then
MsgBox "it is a palindrome"
Else
MsgBox "it is not a palindrome"
End If

End Sub
