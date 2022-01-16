VERSION 5.00
Begin VB.Form frmswapnumbers 
   Caption         =   "swapnumbers"
   ClientHeight    =   3015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   7110
   LinkTopic       =   "Form1"
   ScaleHeight     =   3015
   ScaleWidth      =   7110
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdswapandview 
      Caption         =   "swap and view"
      Height          =   435
      Left            =   2880
      TabIndex        =   8
      Top             =   1800
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      Height          =   405
      Left            =   4920
      TabIndex        =   7
      Top             =   960
      Width           =   1455
   End
   Begin VB.TextBox txtnum1 
      Height          =   405
      Index           =   1
      Left            =   4920
      TabIndex        =   6
      Top             =   240
      Width           =   1335
   End
   Begin VB.CommandButton cmdview 
      Caption         =   "view"
      Height          =   495
      Left            =   720
      TabIndex        =   4
      Top             =   1680
      Width           =   1215
   End
   Begin VB.TextBox txtnum2 
      Height          =   405
      Left            =   1440
      TabIndex        =   1
      Top             =   840
      Width           =   1095
   End
   Begin VB.TextBox txtnum1 
      Height          =   375
      Index           =   0
      Left            =   1440
      TabIndex        =   0
      Top             =   240
      Width           =   1095
   End
   Begin VB.Label Label2 
      Caption         =   "RESULT"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3120
      TabIndex        =   5
      Top             =   360
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "enter num2"
      Height          =   255
      Left            =   240
      TabIndex        =   3
      Top             =   960
      Width           =   975
   End
   Begin VB.Label lblnum1 
      Caption         =   "enter number1"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   360
      Width           =   1095
   End
End
Attribute VB_Name = "frmswapnumbers"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdview_Click()
Dim num1 As Integer
Dim num2 As Integer
num1 = Val(txtnum1.Text)
num2 = Val(txtnum2.Text)
txt

End Sub
