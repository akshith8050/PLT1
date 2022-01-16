VERSION 5.00
Begin VB.Form frmsquares 
   Caption         =   "Form1"
   ClientHeight    =   6420
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   7230
   LinkTopic       =   "Form1"
   ScaleHeight     =   6420
   ScaleWidth      =   7230
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtnum2 
      Height          =   735
      Left            =   720
      TabIndex        =   2
      Top             =   1680
      Width           =   4335
   End
   Begin VB.TextBox txtnum1 
      Height          =   375
      Left            =   480
      TabIndex        =   1
      Top             =   480
      Width           =   2175
   End
   Begin VB.CommandButton frm 
      Caption         =   "square"
      Height          =   375
      Left            =   4440
      TabIndex        =   0
      Top             =   600
      Width           =   1815
   End
End
Attribute VB_Name = "frmsquares"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
Dim i As Integer
Dim s As String
n = Val(txtnum1.Text)
For i = 1 To n
    If i Mod 2 = 0 Then
        s = s & Str(i * i)
    End If
Next
txtnum2.Text = s
End Sub

