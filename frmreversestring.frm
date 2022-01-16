VERSION 5.00
Begin VB.Form frmreversestring 
   Caption         =   "to reverse a given string"
   ClientHeight    =   9180
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   17010
   LinkTopic       =   "Form2"
   ScaleHeight     =   9180
   ScaleWidth      =   17010
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtrev 
      Height          =   975
      Left            =   3120
      TabIndex        =   3
      Top             =   3360
      Width           =   2895
   End
   Begin VB.CommandButton Command1 
      Caption         =   "REVERSE"
      Height          =   735
      Left            =   2160
      TabIndex        =   2
      Top             =   1920
      Width           =   2175
   End
   Begin VB.TextBox txtstr 
      Height          =   855
      Left            =   3000
      TabIndex        =   1
      Top             =   360
      Width           =   2655
   End
   Begin VB.Label Label2 
      Caption         =   "The reversed string is"
      Height          =   855
      Left            =   480
      TabIndex        =   4
      Top             =   3360
      Width           =   2175
   End
   Begin VB.Label Label1 
      Caption         =   "Enter a string"
      Height          =   615
      Left            =   600
      TabIndex        =   0
      Top             =   360
      Width           =   2055
   End
End
Attribute VB_Name = "frmreversestring"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim s, res As String
Dim len1 As Integer
Dim i As Integer

len1 = Len(txtstr.Text)

For i = len1 To 1 Step -1
    s = Mid(txtstr.Text, i, 1)
    res = res & s
Next
txtrev.Text = res
End Sub
