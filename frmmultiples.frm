VERSION 5.00
Begin VB.Form frmmultiples 
   Caption         =   "Form1"
   ClientHeight    =   9900
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   17415
   LinkTopic       =   "Form1"
   ScaleHeight     =   9900
   ScaleWidth      =   17415
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtres 
      Height          =   1335
      Left            =   1800
      TabIndex        =   1
      Top             =   2640
      Width           =   4335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Start"
      Height          =   735
      Left            =   3000
      TabIndex        =   0
      Top             =   600
      Width           =   1695
   End
End
Attribute VB_Name = "frmmultiples"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim n, i, j, c As Integer
c = 0
For i = 1 To 10
    n = 7 * i
    For j = 2 To 7
        If (n Mod j = 1) Then
        c = c + 1
        If c = 1 Or c = 2 Or c = 4 Then
        txtres.Text = txtres.Text & " " & n
        End If
        Exit For
        End If
    Next
Next

        
        
End Sub
