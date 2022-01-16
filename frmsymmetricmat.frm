VERSION 5.00
Begin VB.Form frmsymmetricmat 
   Caption         =   "symmetric matrix"
   ClientHeight    =   10080
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   17805
   LinkTopic       =   "Form2"
   ScaleHeight     =   10080
   ScaleWidth      =   17805
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Check"
      Height          =   735
      Left            =   5040
      TabIndex        =   8
      Top             =   5040
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Add"
      Height          =   615
      Left            =   11160
      TabIndex        =   7
      Top             =   2280
      Width           =   1695
   End
   Begin VB.TextBox txtElem 
      Height          =   975
      Left            =   7920
      TabIndex        =   5
      Top             =   2280
      Width           =   2295
   End
   Begin VB.TextBox txtColumn 
      Height          =   975
      Left            =   4440
      TabIndex        =   3
      Top             =   2280
      Width           =   2415
   End
   Begin VB.TextBox txtRow 
      Height          =   975
      Left            =   720
      TabIndex        =   0
      Top             =   2280
      Width           =   2775
   End
   Begin VB.Label Label4 
      Caption         =   "elements"
      Height          =   375
      Left            =   8040
      TabIndex        =   6
      Top             =   1080
      Width           =   975
   End
   Begin VB.Label Label3 
      Caption         =   "columns"
      Height          =   375
      Left            =   4440
      TabIndex        =   4
      Top             =   1080
      Width           =   1455
   End
   Begin VB.Label Label2 
      Caption         =   "rows"
      Height          =   375
      Left            =   1080
      TabIndex        =   2
      Top             =   1080
      Width           =   1335
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   15
      Left            =   1560
      TabIndex        =   1
      Top             =   1680
      Width           =   135
   End
End
Attribute VB_Name = "frmsymmetricmat"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a(10, 10) As Integer
Dim i, j As Integer
Dim x, y As Integer
Dim m, n As Integer

Private Sub Command1_Click()
Dim v1 As Integer

i = Val(txtRow.Text)
j = Val(txtColumn.Text)

v1 = Val(txtElem.Text)

a(i, j) = v1

m = i

n = j
End Sub

Private Sub Command2_Click()
Dim t(10, 10) As Integer

For x = 0 To m
    For y = 0 To n
        t(y, x) = a(x, y)
    Next
Next

Dim f As Integer
f = 1

For x = 0 To m
    For y = 0 To n
        If a(x, y) <> t(x, y) Then
            f = 0
            Exit For
        End If
    Next
    If f = 0 Then
        MsgBox "Not Symmetric"
        Exit For
    Else
        MsgBox "Symmetric"
        Exit For
    End If
Next
End Sub
