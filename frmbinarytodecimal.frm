VERSION 5.00
Begin VB.Form frmbinarytodecimal 
   Caption         =   "convert from binary to decimal"
   ClientHeight    =   9780
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   17670
   LinkTopic       =   "Form2"
   ScaleHeight     =   9780
   ScaleWidth      =   17670
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "calculate"
      Height          =   855
      Left            =   2400
      TabIndex        =   2
      Top             =   2040
      Width           =   2175
   End
   Begin VB.TextBox txtnum1 
      Height          =   735
      Left            =   3600
      TabIndex        =   1
      Top             =   360
      Width           =   2415
   End
   Begin VB.Label Label1 
      Caption         =   "enter a binary number"
      Height          =   495
      Left            =   840
      TabIndex        =   0
      Top             =   480
      Width           =   2295
   End
End
Attribute VB_Name = "frmbinarytodecimal"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim n, dec, base, re As Integer
n = Val(txtnum1.Text)
dec = 0
base = 1

While n > 0
    re = n Mod 10
    dec = dec + re * base
    n = n \ 10
    base = base * 2
Wend

MsgBox "the decimal number is " & dec
End Sub
