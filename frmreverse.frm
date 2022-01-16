VERSION 5.00
Begin VB.Form frmreverse 
   Caption         =   "Form1"
   ClientHeight    =   6120
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   7320
   LinkTopic       =   "Form1"
   ScaleHeight     =   6120
   ScaleWidth      =   7320
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame reverse 
      Caption         =   "reverse"
      Height          =   3735
      Left            =   720
      TabIndex        =   0
      Top             =   480
      Width           =   4095
      Begin VB.CommandButton Command1 
         Caption         =   "reverse"
         Height          =   495
         Left            =   960
         TabIndex        =   3
         Top             =   1800
         Width           =   2295
      End
      Begin VB.TextBox txtnum 
         Height          =   375
         Left            =   2040
         TabIndex        =   2
         Top             =   600
         Width           =   1815
      End
      Begin VB.Label lbl1 
         Caption         =   "Enter a Number"
         Height          =   615
         Left            =   240
         TabIndex        =   1
         Top             =   600
         Width           =   1455
      End
   End
End
Attribute VB_Name = "frmreverse"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim n As Integer
Dim rev As Integer
Dim r As Integer
n = Val(txtnum.Text)

re = 0
r = 0
While n > 0
    re = n Mod 10
    r = (r * 10) + re
    n = n \ 10
Wend
MsgBox r

End Sub
