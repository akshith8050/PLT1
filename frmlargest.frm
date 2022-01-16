VERSION 5.00
Begin VB.Form frmlargest 
   Caption         =   "1 and 2nd largest"
   ClientHeight    =   7635
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   11775
   LinkTopic       =   "Form2"
   ScaleHeight     =   7635
   ScaleWidth      =   11775
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "click"
      Height          =   855
      Left            =   840
      TabIndex        =   3
      Top             =   4800
      Width           =   3495
   End
   Begin VB.TextBox txtnum3 
      Height          =   975
      Left            =   3720
      TabIndex        =   2
      Top             =   2760
      Width           =   3015
   End
   Begin VB.TextBox txtnum2 
      Height          =   975
      Left            =   3720
      TabIndex        =   1
      Top             =   1560
      Width           =   2895
   End
   Begin VB.TextBox txtnum1 
      Height          =   855
      Left            =   3720
      TabIndex        =   0
      Top             =   360
      Width           =   3015
   End
   Begin VB.Label Label3 
      Caption         =   "Enter third number"
      Height          =   375
      Left            =   1080
      TabIndex        =   6
      Top             =   3000
      Width           =   2175
   End
   Begin VB.Label Label2 
      Caption         =   "Enter second number"
      Height          =   615
      Left            =   1080
      TabIndex        =   5
      Top             =   1680
      Width           =   2415
   End
   Begin VB.Label Label1 
      Caption         =   "Enter first number "
      Height          =   495
      Left            =   1080
      TabIndex        =   4
      Top             =   480
      Width           =   2055
   End
End
Attribute VB_Name = "frmlargest"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim n1, n2, n3 As Integer
n1 = Val(txtnum1.Text)
n2 = Val(txtnum2.Text)
n3 = Val(txtnum3.Text)
If n1 > n2 Then
    If n1 > n3 Then
        MsgBox n1 & " is largest"
    Else
        MsgBox n3 & " is largest"
    End If
Else
    If n2 > n3 Then
        MsgBox n2 & " is largest"
    Else
        MsgBox n3 & " is largest"
    End If
End If

End Sub

