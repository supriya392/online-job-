VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   12375
   ScaleWidth      =   22800
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "exit"
      Height          =   375
      Left            =   7920
      TabIndex        =   13
      Top             =   5400
      Width           =   1935
   End
   Begin VB.CommandButton Command2 
      Caption         =   "clear"
      Height          =   375
      Left            =   5280
      TabIndex        =   12
      Top             =   5400
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "save"
      Height          =   375
      Left            =   2880
      TabIndex        =   11
      Top             =   5400
      Width           =   1455
   End
   Begin VB.Frame Frame2 
      Caption         =   "total"
      Height          =   2295
      Left            =   7800
      TabIndex        =   2
      Top             =   2280
      Width           =   2775
      Begin VB.TextBox Text4 
         Height          =   285
         Left            =   1560
         TabIndex        =   10
         Top             =   600
         Width           =   975
      End
      Begin VB.Label Label5 
         Caption         =   "amount"
         Height          =   375
         Left            =   120
         TabIndex        =   6
         Top             =   600
         Width           =   1455
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "inventory"
      Height          =   2775
      Left            =   1080
      TabIndex        =   1
      Top             =   2160
      Width           =   4095
      Begin VB.TextBox Text3 
         Height          =   495
         Left            =   2280
         TabIndex        =   9
         Top             =   1920
         Width           =   1455
      End
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   2280
         TabIndex        =   8
         Top             =   1200
         Width           =   1335
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   2400
         TabIndex        =   7
         Top             =   480
         Width           =   1215
      End
      Begin VB.Label Label4 
         Caption         =   "rate"
         Height          =   615
         Left            =   240
         TabIndex        =   5
         Top             =   2040
         Width           =   1335
      End
      Begin VB.Label Label3 
         Caption         =   "quantity"
         Height          =   375
         Left            =   240
         TabIndex        =   4
         Top             =   1200
         Width           =   1095
      End
      Begin VB.Label Label2 
         Caption         =   "item"
         Height          =   375
         Left            =   360
         TabIndex        =   3
         Top             =   480
         Width           =   855
      End
   End
   Begin VB.Label Label1 
      Caption         =   "display inventory information"
      Height          =   375
      Left            =   3000
      TabIndex        =   0
      Top             =   600
      Width           =   5055
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim item As String
Dim quantity As Integer
Dim rate, total As Currency
item = Text1.Text
quantity = Val(Text2.Text)
rate = Val(Text3.Text)
total = quantity * rate
Text4.Text = total
Open "c:\ss.txt" For Append As #1
Write #1, item, quantity, rate, total
MsgBox "the information is added"
Close #1
End Sub

Private Sub Command2_Click()
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
Text4.Text = ""
End Sub

Private Sub Command3_Click()
End
End Sub

Private Sub Form_Load()

End Sub
