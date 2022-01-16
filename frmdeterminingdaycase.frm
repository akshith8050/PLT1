VERSION 5.00
Begin VB.Form frmdeterminingdaycase 
   Caption         =   "determing the day case"
   ClientHeight    =   9930
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   18465
   LinkTopic       =   "Form2"
   ScaleHeight     =   9930
   ScaleWidth      =   18465
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txttext2 
      Height          =   645
      Left            =   3000
      TabIndex        =   4
      Top             =   3480
      Width           =   2295
   End
   Begin VB.CommandButton Command1 
      Caption         =   "determine"
      Height          =   975
      Left            =   2160
      TabIndex        =   2
      Top             =   1800
      Width           =   2175
   End
   Begin VB.TextBox txttext1 
      Height          =   615
      Left            =   3000
      TabIndex        =   1
      Top             =   480
      Width           =   2535
   End
   Begin VB.Label Label2 
      Caption         =   "result"
      Height          =   495
      Left            =   480
      TabIndex        =   3
      Top             =   3600
      Width           =   1815
   End
   Begin VB.Label Label1 
      Caption         =   "enter a number "
      Height          =   495
      Left            =   480
      TabIndex        =   0
      Top             =   600
      Width           =   1935
   End
End
Attribute VB_Name = "frmdeterminingdaycase"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim i As Integer
i = Val(txttext1.Text)

Select Case i

Case 1
txttext2.Text = "Monday"

Case 2
txttext2.Text = "Tuesday"

Case 3
txttext2.Text = "Wednesday"

Case 4
txttext2.Text = "Thursday"

Case 5
txttext2.Text = "Friday"

Case 6
txttext2.Text = "Saturday"

Case 7
txttext2.Text = "Sunday"

Case Else
txttext2.Text = "enter a number btw 1 & 7"

End Select


End Sub
