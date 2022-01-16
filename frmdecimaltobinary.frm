VERSION 5.00
Begin VB.Form frmdecimaltobinary 
   Caption         =   "decimal to binary"
   ClientHeight    =   9795
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   18465
   LinkTopic       =   "Form2"
   ScaleHeight     =   9795
   ScaleWidth      =   18465
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtres 
      Height          =   735
      Left            =   3120
      TabIndex        =   4
      Top             =   3240
      Width           =   2415
   End
   Begin VB.CommandButton Command1 
      Caption         =   "solve"
      Height          =   735
      Left            =   1920
      TabIndex        =   2
      Top             =   1920
      Width           =   2055
   End
   Begin VB.TextBox txtnum1 
      Height          =   735
      Left            =   2880
      TabIndex        =   1
      Top             =   480
      Width           =   2175
   End
   Begin VB.Label Label2 
      Caption         =   "the binary number is"
      Height          =   375
      Left            =   360
      TabIndex        =   3
      Top             =   3360
      Width           =   2295
   End
   Begin VB.Label Label1 
      Caption         =   "enter a decimal number"
      Height          =   495
      Left            =   360
      TabIndex        =   0
      Top             =   600
      Width           =   2055
   End
End
Attribute VB_Name = "frmdecimaltobinary"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim a(10), n, i, j As Integer
n = Val(txtnum1.Text)
i = 0
While n > 0
    a(i) = n Mod 2
    n = n \ 2
    i = i + 1
Wend
j = i - 1
While j >= 0
    txtres.Text = a(j) & " " & txtres.Text
    j = j - 1
Wend

End Sub
