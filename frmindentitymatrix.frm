VERSION 5.00
Begin VB.Form frmidentitymatrix 
   Caption         =   "identity matrix"
   ClientHeight    =   8205
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   8280
   LinkTopic       =   "Form2"
   ScaleHeight     =   8205
   ScaleWidth      =   8280
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "add"
      Height          =   615
      Left            =   6480
      TabIndex        =   7
      Top             =   1080
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "check"
      Height          =   735
      Left            =   2280
      TabIndex        =   6
      Top             =   2640
      Width           =   2055
   End
   Begin VB.TextBox txtelements 
      Height          =   615
      Left            =   4560
      TabIndex        =   4
      Top             =   1080
      Width           =   1455
   End
   Begin VB.TextBox txtcolumns 
      Height          =   615
      Left            =   2640
      TabIndex        =   2
      Top             =   1080
      Width           =   1455
   End
   Begin VB.TextBox txtrows 
      Height          =   615
      Left            =   360
      TabIndex        =   0
      Top             =   1080
      Width           =   1575
   End
   Begin VB.Label Label3 
      Caption         =   "elements"
      Height          =   375
      Left            =   4800
      TabIndex        =   5
      Top             =   360
      Width           =   975
   End
   Begin VB.Label Label2 
      Caption         =   "columns"
      Height          =   375
      Left            =   2640
      TabIndex        =   3
      Top             =   360
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "rows"
      Height          =   375
      Left            =   600
      TabIndex        =   1
      Top             =   360
      Width           =   1215
   End
End
Attribute VB_Name = "frmidentitymatrix"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim arr(10, 10) As Integer
Dim i As Integer
Dim j As Integer

Private Sub Command2_Click()
Dim x As Integer
Dim y As Integer
Dim value As Integer

i = Val(txtrows.Text)
j = Val(txtcolumns.Text)

value = Val(txtelements.Text)
arr(i, j) = value

End Sub

Private Sub Command1_Click()
For x = 0 To i
    For y = 0 To j
        If arr(x, x) = 1 And arr(y, y) = 1 Then
        MsgBox "It is a identity matrix"
        Exit For
        End If
    Next
Next
End Sub

