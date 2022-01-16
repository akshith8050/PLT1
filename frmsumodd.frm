VERSION 5.00
Begin VB.Form frmsumodd 
   Caption         =   "sum of all odd number"
   ClientHeight    =   9105
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   16170
   LinkTopic       =   "Form2"
   ScaleHeight     =   9105
   ScaleWidth      =   16170
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "click"
      Height          =   855
      Left            =   2520
      TabIndex        =   1
      Top             =   2640
      Width           =   2055
   End
   Begin VB.TextBox txtnum1 
      Height          =   645
      Left            =   3960
      TabIndex        =   0
      Top             =   480
      Width           =   1935
   End
   Begin VB.Label Label1 
      Caption         =   "Enter a Number"
      Height          =   375
      Left            =   840
      TabIndex        =   2
      Top             =   720
      Width           =   1815
   End
End
Attribute VB_Name = "frmsumodd"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim n, sum, i As Integer
n = Val(txtnum1.Text)
sum = 0
For i = 1 To n
    If i Mod 2 <> 0 Then
    sum = sum + i
    End If
Next
MsgBox " sum of all odd numbers " & sum

End Sub
