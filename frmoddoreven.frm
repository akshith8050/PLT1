VERSION 5.00
Begin VB.Form frmoddoreven 
   Caption         =   "odd or even"
   ClientHeight    =   4185
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6930
   LinkTopic       =   "Form1"
   ScaleHeight     =   4185
   ScaleWidth      =   6930
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdcheck 
      Caption         =   "check"
      Height          =   375
      Left            =   1200
      TabIndex        =   2
      Top             =   1200
      Width           =   1575
   End
   Begin VB.TextBox txtnum1 
      Height          =   285
      Left            =   2400
      TabIndex        =   1
      Top             =   240
      Width           =   1455
   End
   Begin VB.Label lbllabel1 
      Caption         =   "Enter the Number"
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   1455
   End
End
Attribute VB_Name = "frmoddoreven"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdcheck_Click()
Dim num As Integer
num = Val(txtnum1.Text)
If (num Mod 2 = 0) Then
MsgBox num & " " & "is an even number"
Else
MsgBox num & " " & "is an odd number"
End If

End Sub
