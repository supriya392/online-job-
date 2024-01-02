VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "True"
   ClientHeight    =   3015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   3015
   ScaleWidth      =   4560
   Begin VB.Menu color 
      Caption         =   "color"
      Begin VB.Menu red 
         Caption         =   "red"
      End
      Begin VB.Menu blue 
         Caption         =   "blue"
      End
      Begin VB.Menu black 
         Caption         =   "black"
      End
   End
   Begin VB.Menu window 
      Caption         =   "window"
      Begin VB.Menu new 
         Caption         =   "new"
      End
      Begin VB.Menu exit 
         Caption         =   "exit"
      End
   End
   Begin VB.Menu arrange 
      Caption         =   "arrange"
      Begin VB.Menu horizontal 
         Caption         =   "horizontal"
      End
      Begin VB.Menu cascade 
         Caption         =   "cascade"
      End
      Begin VB.Menu vertical 
         Caption         =   "vertical"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub black_Click()
Me.BackColor = vbBlack
End Sub

Private Sub blue_Click()
Me.BackColor = vbBlue
End Sub

Private Sub cascade_Click()
MDIForm1.arrange0
End Sub


Private Sub exit_Click()
Unload Me
End Sub
Private Sub horizontal_Click()
MDIForm1.arrange1
End Sub

Private Sub new_Click()
Set Form1 = New Form1
Form1.Show
Form1.Caption = "new form1"
End Sub

Private Sub red_Click()
Me.BackColor = vbRed
End Sub

Private Sub vertical_Click()
MDIForm1.arrange2
End Sub
