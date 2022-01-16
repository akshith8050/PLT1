VERSION 5.00
Begin VB.Form frmdisplaynuminwords 
   Caption         =   "display num in words"
   ClientHeight    =   9240
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   7425
   LinkTopic       =   "Form1"
   ScaleHeight     =   9240
   ScaleWidth      =   7425
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtreswords 
      Height          =   1095
      Left            =   360
      TabIndex        =   2
      Top             =   2040
      Width           =   7095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "display"
      Height          =   495
      Left            =   3360
      TabIndex        =   1
      Top             =   840
      Width           =   1455
   End
   Begin VB.TextBox txtnum1 
      Height          =   615
      Left            =   600
      TabIndex        =   0
      Top             =   720
      Width           =   2055
   End
End
Attribute VB_Name = "frmdisplaynuminwords"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim num As Integer
Dim digit As String
Dim r As Integer

num = Val(txtnum1.Text)

While num > 0
    r = num Mod 10
    Select Case r
        Case 1
        digit = "one"
        Case 2
        digit = "two"
        Case 3
        digit = "three"
    End Select
    txtreswords.Text = digit & " " & txtreswords.Text
    num = num \ 10
    

Wend
End Sub
