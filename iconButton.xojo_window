#tag DesktopWindow
Begin DesktopContainer iconButton
   AllowAutoDeactivate=   True
   AllowFocus      =   False
   AllowFocusRing  =   False
   AllowTabs       =   False
   Backdrop        =   0
   BackgroundColor =   &c00000000
   Composited      =   False
   Enabled         =   True
   HasBackgroundColor=   False
   Height          =   252
   Index           =   -2147483648
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Tooltip         =   ""
   Top             =   0
   Transparent     =   False
   Visible         =   True
   Width           =   372
   Begin DesktopCanvas canvasBtn
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      Enabled         =   True
      Height          =   252
      Index           =   -2147483648
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Visible         =   True
      Width           =   372
   End
   Begin DesktopLabel lblLogo
      AllowAutoDeactivate=   True
      Bold            =   True
      Enabled         =   True
      FontName        =   "V"
      FontSize        =   10.0
      FontUnit        =   0
      Height          =   252
      Index           =   -2147483648
      Italic          =   False
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Button"
      TextAlignment   =   2
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   0
      Transparent     =   True
      Underline       =   False
      Visible         =   False
      Width           =   372
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Opening()
		  canvasBtn.Width = Me.Width
		  canvasBtn.Height = Me.Height
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  canvasBtn.Width = Me.Width
		  canvasBtn.Height = Me.Height
		End Sub
	#tag EndEvent


	#tag Hook, Flags = &h0
		Event ButtonClicked()
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mBackColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mBackColor = value
			  'msgbox "mBackColor is " + mBackColor.ToString
			End Set
		#tag EndSetter
		BackColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mBold
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mBold = value
			End Set
		#tag EndSetter
		Bold As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return drawButtonBorder
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  drawButtonBorder = value
			End Set
		#tag EndSetter
		ButtonBorder As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mButtonStyle
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mButtonStyle = value
			End Set
		#tag EndSetter
		ButtonStyle As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mCaption
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mCaption = value
			End Set
		#tag EndSetter
		Caption As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mCaptionOffsetX
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mCaptionOffsetX = value
			End Set
		#tag EndSetter
		CaptionOffsetX As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mCaptionOffsetXPercent
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mCaptionOffsetXPercent = value
			End Set
		#tag EndSetter
		CaptionOffsetXPercent As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mCaptionOffsetY
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mCaptionOffsetY = value
			End Set
		#tag EndSetter
		CaptionOffsetY As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mCaptionOffsetYPercent
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mCaptionOffsetYPercent = value
			End Set
		#tag EndSetter
		CaptionOffsetYPercent As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mClickedBorderColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mClickedBorderColor = value
			End Set
		#tag EndSetter
		ClickedBorderColor As Color
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private drawButtonBorder As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private drawClickedBorder As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private drawHoverBorder As Boolean = False
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mFlatStyleBorderColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mFlatStyleBorderColor = value
			End Set
		#tag EndSetter
		FlatStyleBorderColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mFontName
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mFontName = value
			End Set
		#tag EndSetter
		FontName As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mHoverBackColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mHoverBackColor = value
			  
			End Set
		#tag EndSetter
		HoverBackColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mHoverBorderColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mHoverBorderColor = value
			  'msgbox "mBackColor is " + mBackColor.ToString
			End Set
		#tag EndSetter
		HoverBorderColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mHoverTextColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mHoverTextColor = value
			  
			End Set
		#tag EndSetter
		HoverTextColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mIcon
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mIcon = value
			End Set
		#tag EndSetter
		Icon As Picture
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mIconHeight
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mIconHeight = value
			End Set
		#tag EndSetter
		IconHeight As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mIconHeightPercent
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mIconHeightPercent = value
			End Set
		#tag EndSetter
		IconHeightPercent As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mIconOffsetX
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mIconOffsetX = value
			End Set
		#tag EndSetter
		IconOffsetX As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mIconOffsetXPercent
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mIconOffsetXPercent = value
			End Set
		#tag EndSetter
		IconOffsetXPercent As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mIconOffsetY
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mIconOffsetY = value
			End Set
		#tag EndSetter
		IconOffsetY As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mIconOffsetYPercent
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mIconOffsetYPercent = value
			End Set
		#tag EndSetter
		IconOffsetYPercent As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mIconWidth
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mIconWidth = value
			End Set
		#tag EndSetter
		IconWidth As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mIconWidthPercent
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mIconWidthPercent = value
			End Set
		#tag EndSetter
		IconWidthPercent As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		isClicked As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		isHovered As Boolean = False
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mItalic
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mItalic = value
			End Set
		#tag EndSetter
		Italic As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mBackColor As Color = &cD4D4D4
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mBold As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mButtonStyle As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mCaption As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mCaptionOffsetX As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mCaptionOffsetXPercent As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mCaptionOffsetY As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mCaptionOffsetYPercent As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mClickedBorderColor As Color = &c000000
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mFlatStyleBorderColor As Color = &c000000
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mFontName As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mHoverBackColor As Color = &cD4D4D4
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mHoverBorderColor As Color = &c0078D4
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mHoverTextColor As Color = &c000000
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mIcon As Picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mIconHeight As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mIconHeightPercent As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mIconOffsetX As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mIconOffsetXPercent As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mIconOffsetY As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mIconOffsetYPercent As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mIconWidth As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mIconWidthPercent As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mItalic As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mShowClickEffect As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mShowHoverBorder As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mShowIcon As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mStrokeColor As Color = &cffffff
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTextColor As Color
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTextSize As Integer = 12
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTextStyle As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTransparentBackground As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mUnderline As Boolean = False
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mShowClickEffect
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mShowClickEffect = value
			End Set
		#tag EndSetter
		ShowClickEffect As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mShowHoverBorder
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mShowHoverBorder = value
			End Set
		#tag EndSetter
		ShowHoverBorder As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mShowIcon
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mShowIcon = value
			End Set
		#tag EndSetter
		ShowIcon As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mStrokeColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mStrokeColor = value
			End Set
		#tag EndSetter
		StrokeColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mTextColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mTextColor = value
			End Set
		#tag EndSetter
		TextColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mTextSize
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mTextSize = value
			End Set
		#tag EndSetter
		TextSize As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mTextStyle
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mTextStyle  = value
			End Set
		#tag EndSetter
		TextStyle As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mTransparentBackground
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mTransparentBackground = value
			End Set
		#tag EndSetter
		TransparentBackground As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mUnderline
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mUnderline = value
			End Set
		#tag EndSetter
		Underline As Boolean
	#tag EndComputedProperty


#tag EndWindowCode

#tag Events canvasBtn
	#tag Event
		Sub Paint(g As Graphics, areas() As Rect)
		  
		  If isClicked = True Then
		    g.ForeColor = mHoverBackColor
		    
		  Else
		    g.ForeColor = mBackColor
		  End If
		  
		  If mTransparentBackground = True Then
		    g.DrawingColor = Color.Clear
		  End If
		  
		  g.FillRect 0,0,g.Width,g.Height
		  
		  g.DrawingColor = mTextColor
		  g.FontName = mFontName
		  g.FontUnit = FontUnits.Point
		  g.FontSize = mTextSize
		  g.Italic = mItalic
		  g.Bold = mBold
		  g.Underline = mUnderline
		  
		  Dim cleanCaption As String
		  
		  cleanCaption = mCaption
		  cleanCaption = cleanCaption.ReplaceAll("_","")
		  //remove inline styling token _ from caption before drawing it
		  
		  Dim dblWidth As Double = g.TextWidth(cleanCaption)
		  Dim dblHeight As Double = g.TextHeight( cleanCaption, dblWidth )
		  
		  Dim dblX As Double = (g.Width / 2) - (dblWidth / 2) + mCaptionOffsetX
		  
		  dblX = dblX + (dblX * (mCaptionOffsetXPercent / 100))
		  
		  Dim dblY As Double = (g.Height / 2) - (dblHeight / 2) + g.TextAscent + mCaptionOffsetY
		  
		  
		  dblY = dblY + (dblY * (mCaptionOffsetYPercent / 100))
		  
		  If mTextStyle = 1 Then
		    //inset
		    
		    g.DrawingColor = mStrokeColor
		    
		    g.DrawText( cleanCaption, dblX, dblY+1, dblWidth )
		    g.DrawText( cleanCaption, dblX+1, dblY+1, dblWidth )
		  ElseIf mTextStyle = 2 Then
		    //stroke
		    
		    g.DrawingColor = mStrokeColor
		    g.DrawText( cleanCaption, dblX-1, dblY-1, dblWidth )
		    g.DrawText( cleanCaption, dblX+1, dblY+1, dblWidth )
		    g.DrawText( cleanCaption, dblX-1, dblY+1, dblWidth )
		    g.DrawText( cleanCaption, dblX+1, dblY-1, dblWidth )
		  End If
		  
		  If isHovered = True Then
		    //hovering, use hover text color
		    
		    g.DrawingColor = mHoverTextColor
		  Else
		    
		    g.DrawingColor = mTextColor
		  End If
		  
		  g.DrawText( cleanCaption, dblX, dblY, dblWidth )
		  
		  
		  
		  // add and underscore under characters prefixed with _
		  g.DrawingColor = mTextColor
		  //add _ to first character of caption
		  
		  If InStr(mCaption, "_")  > 0 Then
		    
		    Dim chars() As String = mCaption.Split("")
		    
		    Dim drawUnderline as Boolean = False
		    Dim partWidth As Double = 0
		    For Each c As String In chars
		      
		      If drawUnderline = True Then
		        drawUnderline = False
		        
		        g.DrawLine dblX + partWidth ,dblY + 2,dblX + partWidth + g.TextWidth(c) - 1,dblY + 2
		        
		        //attempt to position underscore under the appropriate character
		      End if
		      
		      If c = "_" Then
		        drawUnderline = True
		        
		      Else
		        partWidth = partWidth + g.TextWidth(c)
		      End If
		    Next
		    chars = Nil 
		    
		  End if
		  
		  
		  Dim savedButtonStyle As Integer
		  savedButtonStyle = mButtonStyle //save button style in case we have to restore it
		  If isClicked = True And mShowClickEffect = True Then
		    // create button press effect by changing mbuttonstyle to 2
		    mButtonStyle = 2
		  End If
		  
		  
		  Select Case mButtonStyle
		    
		    
		  Case 0 //default button style, mimicks bevelbutton sort of
		    
		    If isClicked = True And mShowClickEffect = False Then 
		      g.DrawingColor = mClickedBorderColor
		    Else
		      g.DrawingColor = mBackColor
		    End If
		    
		    g.DrawLine (0,0, 0, g.Height) // left side
		    g.DrawingColor = Color.White
		    g.DrawLine (1,0, 1, g.Height) // left side, right one pixel
		    '
		    If isClicked = True And mShowClickEffect = False Then 
		      g.DrawingColor = mClickedBorderColor
		    Else
		      g.DrawingColor = mBackColor
		    End If
		    
		    
		    g.DrawLine (0,0, g.Height, 0) // top
		    g.DrawingColor = Color.White
		    g.DrawLine (0,1, g.Width, 1) // top, down one pixel
		    
		    If isClicked = True And mShowClickEffect = False Then 
		      g.DrawingColor = mClickedBorderColor
		    Else
		      g.DrawingColor = mBackColor
		    End If
		    
		    g.DrawLine (0,g.Height-1, g.Width,g.Height -1) //bottom 
		    g.DrawingColor = Color.White
		    g.DrawLine (0,g.Height-2, g.Width,g.Height-2) //bottom, up one pixel
		    
		    If isClicked = True And mShowClickEffect = False Then 
		      g.DrawingColor = mClickedBorderColor
		    Else
		      g.DrawingColor = mBackColor
		    End If
		    
		    g.DrawLine(g.Width -1 ,0,g.Width- 1,g.Height) // right side
		    g.DrawingColor = Color.White
		    g.DrawLine(g.Width -2 ,0,g.Width- 2,g.Height) // right side, left one pixel
		    
		    g.ClearRectangle(0, 0, 1, 1)
		    
		    g.ClearRectangle(g.Width -1, 0, 1, 1)
		    
		    g.ClearRectangle( 0, g.Height -1 , 1, 1)
		    
		    g.ClearRectangle( g.Width -1, g.Height -1 , 1, 1)
		  Case 1 //flat style
		    
		    if isClicked = True And mShowClickEffect = False Then
		      g.DrawingColor = mClickedBorderColor
		    Else
		      g.DrawingColor = mFlatStyleBorderColor
		    End if
		    g.DrawRectangle(0,0,g.Width ,g.Height)
		    
		  Case 2 //inset style
		    
		    
		    If isClicked = True And mShowClickEffect = False Then 
		      g.DrawingColor = mClickedBorderColor
		    Else
		      g.DrawingColor = Color.Black
		    End If
		    
		    g.DrawRectangle(1,1,g.Width - 1,g.Height- 1)
		    g.DrawingColor = Color.White
		    g.DrawRectangle(2,2,g.Width - 2,g.Height- 2)
		  Case 3 //outset style
		    If isClicked = True And mShowClickEffect = False Then 
		      g.DrawingColor = mClickedBorderColor
		    Else
		      g.DrawingColor = Color.Black
		    End If
		    g.DrawRectangle(0,0,g.Width - 1,g.Height- 1)
		    g.DrawingColor = Color.White
		    g.DrawRectangle(0,0,g.Width - 2,g.Height- 2)
		    
		  End Select
		  
		  //restore saved button style
		  mButtonStyle = savedButtonStyle
		  
		  
		  If isHovered = True And mShowHoverBorder = True Then
		    g.DrawingColor = mHoverBorderColor
		    
		    g.DrawRectangle(1,1,g.Width-2 ,g.Height-2)
		  End If
		  
		  
		  //icon
		  
		  if mShowIcon = True Then
		    
		    Dim sWidth As Integer = mIconWidth
		    Dim sHeight As Integer = mIconHeight
		    Dim sWidthPercent As Integer = mIconWidthPercent
		    Dim sHeightPercent As Integer = mIconHeightPercent
		    
		    Dim sOffsetX As Integer = mIconOffsetX
		    Dim sOffsetY As Integer= mIconOffsetY
		    
		    Dim sOffsetXPercent As Integer = mIconOffsetXPercent
		    Dim sOffsetYPercent As Integer = mIconOffsetYPercent
		    
		    sWidth =  sWidth + (Me.Width * (mIconWidthPercent / 100))
		    sHeight =  sHeight + (Me.Height * (mIconWidthPercent / 100))
		    
		    Dim p as New Picture (sWidth,sHeight)
		    
		    
		    Dim sCenterX As Double = (g.Width / 2) - (sWidth / 2) + sOffsetX
		    Dim sCenterY As Double = (g.Height / 2) - (sHeight / 2)  + sOffsetY
		    //centerX and Y + offsets
		    
		    g.Drawpicture(mIcon,sCenterX,sCenterY,sWidth,sHeight,0,0,mIcon.Width,mIcon.Height)
		  End If
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  isHovered = True
		  canvasBtn.Refresh
		  Me.MouseCursor = REALBasic.System.Cursors.FingerPointer
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  isHovered = False
		  canvasBtn.Refresh
		  Me.MouseCursor = REALBasic.System.Cursors.StandardPointer
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  isClicked = True
		  canvasBtn.Refresh
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseUp(x As Integer, y As Integer)
		  isClicked = False
		  canvasBtn.Refresh
		  RaiseEvent ButtonClicked
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Position"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Position"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabStop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowAutoDeactivate"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Tooltip"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowFocusRing"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowFocus"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowTabs"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="isClicked"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="isHovered"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ButtonStyle"
		Visible=true
		Group="Button Behavior And Basic Appearance"
		InitialValue=""
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default Style"
			"1 - Flat"
			"2 - Inset"
			"3 - Outset"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Button Behavior And Basic Appearance"
		InitialValue="&cd4d4d4"
		Type="Color"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TransparentBackground"
		Visible=true
		Group="Button Behavior And Basic Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FlatStyleBorderColor"
		Visible=true
		Group="Button Behavior And Basic Appearance"
		InitialValue="&c000000"
		Type="Color"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ShowHoverBorder"
		Visible=true
		Group="Button Behavior And Basic Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HoverBorderColor"
		Visible=true
		Group="Button Behavior And Basic Appearance"
		InitialValue="&c000000"
		Type="Color"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HoverBackColor"
		Visible=true
		Group="Button Behavior And Basic Appearance"
		InitialValue="&cd4d4d4"
		Type="Color"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HoverTextColor"
		Visible=true
		Group="Button Behavior And Basic Appearance"
		InitialValue="&c000000"
		Type="Color"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ShowClickEffect"
		Visible=true
		Group="Button Behavior And Basic Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ClickedBorderColor"
		Visible=true
		Group="Button Behavior And Basic Appearance"
		InitialValue="&c000000"
		Type="Color"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Caption"
		Visible=true
		Group="Caption Appearance And Positioning"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TextStyle"
		Visible=true
		Group="Caption Appearance And Positioning"
		InitialValue="1"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Flat"
			"1 - Inset"
			"2 - Stroke"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="TextColor"
		Visible=true
		Group="Caption Appearance And Positioning"
		InitialValue="&c000000"
		Type="Color"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="StrokeColor"
		Visible=true
		Group="Caption Appearance And Positioning"
		InitialValue="&cffffff"
		Type="Color"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TextSize"
		Visible=true
		Group="Caption Appearance And Positioning"
		InitialValue="12"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FontName"
		Visible=true
		Group="Caption Appearance And Positioning"
		InitialValue="Verdana"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Bold"
		Visible=true
		Group="Caption Appearance And Positioning"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Italic"
		Visible=true
		Group="Caption Appearance And Positioning"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Underline"
		Visible=true
		Group="Caption Appearance And Positioning"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ButtonBorder"
		Visible=false
		Group="Caption Appearance And Positioning"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="CaptionOffsetX"
		Visible=true
		Group="Caption Appearance And Positioning"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="CaptionOffsetY"
		Visible=true
		Group="Caption Appearance And Positioning"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="CaptionOffsetXPercent"
		Visible=true
		Group="Caption Appearance And Positioning"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="CaptionOffsetYPercent"
		Visible=true
		Group="Caption Appearance And Positioning"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ShowIcon"
		Visible=true
		Group="Icon Settings And Positioning"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Icon"
		Visible=true
		Group="Icon Settings And Positioning"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="IconOffsetX"
		Visible=true
		Group="Icon Settings And Positioning"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="IconOffsetY"
		Visible=true
		Group="Icon Settings And Positioning"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="IconOffsetXPercent"
		Visible=true
		Group="Icon Settings And Positioning"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="IconOffsetYPercent"
		Visible=true
		Group="Icon Settings And Positioning"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="IconWidth"
		Visible=true
		Group="Icon Settings And Positioning"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="IconHeight"
		Visible=true
		Group="Icon Settings And Positioning"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="IconWidthPercent"
		Visible=true
		Group="Icon Settings And Positioning"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="IconHeightPercent"
		Visible=true
		Group="Icon Settings And Positioning"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Transparent"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=false
		Group="Background"
		InitialValue=""
		Type="ColorGroup"
		EditorType="ColorGroup"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=false
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=false
		Group="Background"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composited"
		Visible=false
		Group="Window Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Visible=false
		Group="Position"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabPanelIndex"
		Visible=false
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
