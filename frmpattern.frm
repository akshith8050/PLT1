VERSION 5.00
Begin VB.Form frmfibonaccipattern 
   Caption         =   "fibonaccipattern"
   ClientHeight    =   7920
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   7320
   LinkTopic       =   "Form1"
   ScaleHeight     =   7920
   ScaleWidth      =   7320
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtres 
      Height          =   4095
      Left            =   600
      MultiLine       =   -1  'True
      TabIndex        =   2
      Top             =   2160
      Width           =   6135
   End
   Begin VB.TextBox txtnumber 
      Height          =   735
      Left            =   480
      TabIndex        =   1
      Top             =   600
      Width           =   2175
   End
   Begin VB.CommandButton Command1 
      Caption         =   "start"
      Height          =   615
      Left            =   4440
      TabIndex        =   0
      Top             =   600
      Width           =   1575
   End
End
Attribute VB_Name = "frmfibonaccipattern"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
Dim num1 As Integer
Dim num2 As Integer
Dim num3 As Integer

Dim j As Integer
Dim i As Integer
Dim range As Integer
Dim s As String

range = Val(txtnumber.Text)

num1 = 0
num2 = 1

txtres.Text = Str(num2) & vbCrLf

For i = 2 To range
For j = 1 To i
    num3 = num1 + num2
    If num3 <= range Then
    s = s & Str(num3)
    num1 = num2
    num2 = num3
    End If
    Next
    txtres.Text = txtres.Text & vbCrLf & s & vbCrLf
    s = ""

Next
End Sub
