VERSION 5.00
Begin VB.Form frmfactorial 
   Caption         =   "factorial of a number"
   ClientHeight    =   10185
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   15885
   LinkTopic       =   "Form1"
   ScaleHeight     =   10185
   ScaleWidth      =   15885
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtres 
      Height          =   735
      Left            =   2520
      TabIndex        =   3
      Top             =   3240
      Width           =   2895
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Calculate"
      Height          =   855
      Left            =   1680
      TabIndex        =   2
      Top             =   1800
      Width           =   2055
   End
   Begin VB.TextBox txtnum1 
      Height          =   615
      Left            =   2400
      TabIndex        =   1
      Text            =   "5"
      Top             =   480
      Width           =   2775
   End
   Begin VB.Label Label2 
      Caption         =   "factorial of number is"
      Height          =   495
      Left            =   360
      TabIndex        =   4
      Top             =   3480
      Width           =   1935
   End
   Begin VB.Label Label1 
      Caption         =   "Enter a Number"
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Top             =   600
      Width           =   1575
   End
End
Attribute VB_Name = "frmfactorial"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim n As Integer
Dim ans As Integer
ans = 1
n = Val(txtnum1.Text)
If n = 1 Then
txtres.Text = 1
Else
While n > 0
ans = ans * n
n = n - 1
Wend
End If
txtres.Text = ans
End Sub

