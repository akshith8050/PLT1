VERSION 5.00
Begin VB.Form frmstudentdatabase 
   Caption         =   "sudentdatabase"
   ClientHeight    =   10170
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   15870
   LinkTopic       =   "Form1"
   ScaleHeight     =   10170
   ScaleWidth      =   15870
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   ">>"
      Height          =   495
      Left            =   9960
      TabIndex        =   18
      Top             =   2160
      Width           =   855
   End
   Begin VB.CommandButton Command1 
      Caption         =   "<<"
      Height          =   495
      Left            =   7560
      TabIndex        =   17
      Top             =   2160
      Width           =   855
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   375
      Left            =   4920
      TabIndex        =   15
      Top             =   2280
      Width           =   30
   End
   Begin VB.CommandButton cmdsave 
      Caption         =   "save"
      Height          =   495
      Left            =   8760
      TabIndex        =   14
      Top             =   2160
      Width           =   975
   End
   Begin VB.TextBox txttotal 
      Height          =   285
      Left            =   9000
      TabIndex        =   13
      Top             =   1080
      Width           =   1095
   End
   Begin VB.TextBox txtavg 
      Height          =   285
      Left            =   9000
      TabIndex        =   11
      Top             =   360
      Width           =   975
   End
   Begin VB.CommandButton cmdclear 
      Caption         =   "clear"
      Height          =   255
      Left            =   1320
      TabIndex        =   9
      Top             =   5160
      Width           =   975
   End
   Begin VB.Frame Frame1 
      Caption         =   "Frame1"
      Height          =   4095
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   3855
      Begin VB.TextBox txtsub3 
         Height          =   285
         Left            =   1680
         TabIndex        =   8
         Top             =   2520
         Width           =   1815
      End
      Begin VB.TextBox txtsub2 
         Height          =   285
         Left            =   1680
         TabIndex        =   7
         Top             =   1920
         Width           =   1575
      End
      Begin VB.TextBox txtsub1 
         Height          =   285
         Left            =   1680
         TabIndex        =   6
         Top             =   1200
         Width           =   1575
      End
      Begin VB.TextBox txtstname 
         Height          =   285
         Left            =   1680
         TabIndex        =   2
         Top             =   480
         Width           =   1455
      End
      Begin VB.Label lblsub3 
         Caption         =   "subject3"
         Height          =   495
         Left            =   360
         TabIndex        =   5
         Top             =   2520
         Width           =   615
      End
      Begin VB.Label lblsub2 
         Caption         =   "subject2"
         Height          =   375
         Left            =   360
         TabIndex        =   4
         Top             =   1800
         Width           =   855
      End
      Begin VB.Label lblsub1 
         Caption         =   "subject1"
         Height          =   375
         Left            =   360
         TabIndex        =   3
         Top             =   1200
         Width           =   975
      End
      Begin VB.Label lblstname 
         Caption         =   "Student name"
         Height          =   375
         Left            =   240
         TabIndex        =   1
         Top             =   480
         Width           =   1215
      End
   End
   Begin VB.Label lblresult 
      Caption         =   "result"
      Height          =   375
      Left            =   7800
      TabIndex        =   16
      Top             =   3000
      Width           =   975
   End
   Begin VB.Label lbltotal 
      Caption         =   "total"
      Height          =   255
      Left            =   7800
      TabIndex        =   12
      Top             =   1080
      Width           =   855
   End
   Begin VB.Label lblavg 
      Caption         =   "average"
      Height          =   255
      Left            =   7680
      TabIndex        =   10
      Top             =   360
      Width           =   975
   End
End
Attribute VB_Name = "frmstudentdatabase"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Type student
    stname As String
    sub1 As Integer
    sub2 As Integer
    sub3 As Integer
    total As Integer
    avg As Integer
    result As String
End Type
Dim s(20) As Integer
Dim index As Integer
Dim ci As Integer
Private Sub update(index As Integer)
s(index).stname = txtstname.Text
With s(index)
.sub1 = txtsub1.Text
.sub2 = txtsub2.Text
.sub3 = txtsub3.Text
.total = .sub1 + .sub2 + .sub3
.avg = (.total) / 3
txttotal.Text = .total

If (.avg) > 60 Then
    lblresult.Caption = "First Class"
ElseIf (.avg) > 50 Then
    lblresult.Caption = "Second Class"
ElseIf (.avg) > 35 Then
lblresult.Caption = "pass"
Else
    lblresult.Caption = "fail"
End If
End With

End Sub




Private Sub cmdclear_Click()
txtstname.Text = ""
txtsub1.Text = ""
txtsub2.Text = ""
txtsub3.Text = ""
txtavg.Text = ""
txttotal.Text = ""
lblresult.Caption = ""

End Sub
Private Sub getrecord(index As Integer)
With s(index)
txtstname.Text = .stname
txtsub1.Text = .sub1
txtsub2.Text = .sub2
txtsub3.Text = .sub3
txtavg.Text = .avg
txttotal.Text = .total

End Sub


Private Sub Command1_Click()
If ci < index Then
ci = ci + 1
getrecord ci
End If

End Sub

Private Sub Command2_Click()
If ci > 0 Then
ci = ci - 1
getrecord ci

End Sub
