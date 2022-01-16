VERSION 5.00
Begin VB.Form frmpattern 
   Caption         =   "pattern programming"
   ClientHeight    =   9975
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   18045
   LinkTopic       =   "Form2"
   ScaleHeight     =   9975
   ScaleWidth      =   18045
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtRes1 
      Height          =   1335
      Left            =   600
      TabIndex        =   2
      Top             =   3360
      Width           =   2175
   End
   Begin VB.TextBox txtN 
      Height          =   615
      Left            =   360
      TabIndex        =   1
      Top             =   480
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "click"
      Height          =   615
      Left            =   480
      TabIndex        =   0
      Top             =   2040
      Width           =   1335
   End
End
Attribute VB_Name = "frmpattern"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim i, j, n As Integer
Dim s As String
Private Sub Command1_Click()
s = ""

For i = 1 To n
    For j = 0 To 4
        s = s & Str(i)
    Next
    s = s & vbCrLf
Next
txtRes1.Text = s
End Sub
