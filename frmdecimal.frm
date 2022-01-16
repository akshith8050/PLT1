VERSION 5.00
Begin VB.Form frmdecimal 
   Caption         =   "decimal"
   ClientHeight    =   7935
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   13380
   LinkTopic       =   "Form1"
   ScaleHeight     =   7935
   ScaleWidth      =   13380
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtnum3 
      Height          =   735
      Left            =   4200
      TabIndex        =   4
      Top             =   3600
      Width           =   2655
   End
   Begin VB.TextBox txtnum2 
      Height          =   855
      Left            =   600
      TabIndex        =   3
      Top             =   3600
      Width           =   2895
   End
   Begin VB.CommandButton Command1 
      Caption         =   "SOLVE"
      Height          =   855
      Left            =   1440
      TabIndex        =   2
      Top             =   1920
      Width           =   3975
   End
   Begin VB.TextBox txtnum1 
      Height          =   615
      Left            =   3240
      TabIndex        =   0
      Top             =   480
      Width           =   3495
   End
   Begin VB.Label Label1 
      Caption         =   "Enter a Floating point number"
      Height          =   375
      Left            =   240
      TabIndex        =   1
      Top             =   600
      Width           =   2295
   End
End
Attribute VB_Name = "frmdecimal"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim num As Integer
txtnum2.Text = Int(num)
txtnum3.Text = num - Int(num)

End Sub
