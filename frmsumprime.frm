VERSION 5.00
Begin VB.Form frmsumprime 
   Caption         =   "sum of all prime numbers"
   ClientHeight    =   10050
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   17955
   LinkTopic       =   "Form1"
   ScaleHeight     =   10050
   ScaleWidth      =   17955
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtnum1 
      Height          =   615
      Left            =   3000
      TabIndex        =   5
      Top             =   720
      Width           =   2415
   End
   Begin VB.TextBox txtnum2 
      Height          =   615
      Left            =   3120
      TabIndex        =   3
      Top             =   1680
      Width           =   2295
   End
   Begin VB.TextBox txtres 
      Height          =   495
      Left            =   3480
      TabIndex        =   1
      Top             =   5040
      Width           =   2655
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Calculate"
      Height          =   615
      Left            =   2040
      TabIndex        =   0
      Top             =   3120
      Width           =   2175
   End
   Begin VB.Label Label2 
      Caption         =   "enter first number"
      Height          =   495
      Left            =   240
      TabIndex        =   6
      Top             =   720
      Width           =   2055
   End
   Begin VB.Label Label1 
      Caption         =   "enter second number"
      Height          =   375
      Left            =   240
      TabIndex        =   4
      Top             =   1800
      Width           =   2055
   End
   Begin VB.Label Label3 
      Caption         =   "sum of all prime number in the range are"
      Height          =   495
      Left            =   360
      TabIndex        =   2
      Top             =   4920
      Width           =   2295
   End
End
Attribute VB_Name = "frmsumprime"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim m, n, i, f, j, sum As Integer
m = Val(txtnum1.Text)
n = Val(txtnum2.Text)
sum = 0
f = 1

For i = m To n
    For j = 2 To i \ 2
        If i Mod j = 0 Then
            f = 0
            Exit For
        Else
            f = 1
        End If
    Next
    
    If f = 1 Then
        txtres.Text = txtres.Text & " " & i
        sum = sum + i
    End If
    Next
    txtres.Text = sum

End Sub
