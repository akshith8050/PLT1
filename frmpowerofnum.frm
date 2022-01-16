VERSION 5.00
Begin VB.Form frmpowerofnum 
   Caption         =   "power of a number"
   ClientHeight    =   10260
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   17175
   LinkTopic       =   "Form2"
   ScaleHeight     =   10260
   ScaleWidth      =   17175
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtnum2 
      Height          =   735
      Left            =   3480
      TabIndex        =   4
      Top             =   1800
      Width           =   2655
   End
   Begin VB.CommandButton Command1 
      Caption         =   "calculate"
      Height          =   975
      Left            =   2520
      TabIndex        =   2
      Top             =   3600
      Width           =   2175
   End
   Begin VB.TextBox txtnum1 
      Height          =   855
      Left            =   3480
      TabIndex        =   1
      Top             =   480
      Width           =   2535
   End
   Begin VB.Label Label2 
      Caption         =   "enter a exponential number"
      Height          =   735
      Left            =   480
      TabIndex        =   3
      Top             =   1800
      Width           =   2655
   End
   Begin VB.Label Label1 
      Caption         =   "enter a base number"
      Height          =   615
      Left            =   480
      TabIndex        =   0
      Top             =   600
      Width           =   2535
   End
End
Attribute VB_Name = "frmpowerofnum"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim base, expo As Integer
Dim i As Double
i = 1
base = Val(txtnum1.Text)
expo = Val(txtnum2.Text)

While expo <> 0
    i = i * base
    expo = expo - 1
Wend
MsgBox "power of a number is " & i
End Sub
