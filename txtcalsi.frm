VERSION 5.00
Begin VB.Form frmsimpleinterest 
   Caption         =   "simpleinterest"
   ClientHeight    =   3015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3015
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtres 
      Height          =   375
      Left            =   720
      TabIndex        =   5
      Text            =   "res"
      Top             =   2640
      Width           =   1455
   End
   Begin VB.CommandButton cmdcal 
      Caption         =   "cal"
      Height          =   375
      Left            =   1320
      TabIndex        =   4
      Top             =   1920
      Width           =   975
   End
   Begin VB.TextBox txtsi 
      Height          =   375
      Left            =   2400
      TabIndex        =   3
      Text            =   "si"
      Top             =   1080
      Width           =   1215
   End
   Begin VB.TextBox txtrate 
      Height          =   285
      Left            =   360
      TabIndex        =   2
      Text            =   "rate"
      Top             =   1200
      Width           =   1455
   End
   Begin VB.TextBox txttime 
      DataField       =   "Principle"
      Height          =   375
      Left            =   2400
      TabIndex        =   1
      Text            =   "time"
      Top             =   240
      Width           =   975
   End
   Begin VB.TextBox txtPrincipal 
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Text            =   "principal"
      Top             =   240
      Width           =   1455
   End
End
Attribute VB_Name = "frmsimpleinterest"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Text1_Change()

End Sub

Private Sub cmdcal_Click()
Dim p As Integer
Dim time As Integer
Dim rate As Integer
Dim si As Integer

p = Val(txtPrincipal.Text)
time = Val(txttime.Text)
rate = Val(txtrate.Text)
si = (p * time * rate) / 100
txtres.Text = si

End Sub

