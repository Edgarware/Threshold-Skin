"friends/ChatRoomDlg.res"
{
	controls
	{
		"ChatRoomDlg"
		{
			"ControlName"		"CChatRoomDlg"
			"title"		"#Friends_Chat_Group_Title"
		}
		"TextEntry"
		{
			"ControlName"		"TextEntry"
			"tabPosition"		"1"
			"editable"		"1"
			"maxchars"		"2048"
			"unicode"		"1"
			style="Textentryfocus_chat"
		}
		"ChatHistory"
		{
			"ControlName"		"RichText"
			"maxchars"		"-1"
			"ScrollBar"		"1"
			style="chatlistpanel"
		}
		"SendButton"
		{
			"ControlName"		"Button"
			"labelText"		"#Friends_Chat_Send"
			"Default"		"1"
		}
		"StatusLabel"
		{
			"ControlName"		"Label"
			"wrap"		"0"
		}
		"VoiceBar"
		{
			"ControlName"		"CVoiceBar"
		}
		"TitlePanel"
		{
			"ControlName"		"CChatTitlePanel"
			"zpos"		"-2"
			width=400
		}
		"UserList"
		{
			"ControlName"		"CFriendsListSubPanel"
			style="FriendsList"
			"linespacing"		"50"
			wide=200
		}
		"Splitter"
		{
			"ControlName"		"CChatSplitter"
			resizepanel="UserList"
			zpos=1
		}
		"VoiceChat"
		{
			"ControlName"		"Button"
			style="Chat_MenuButton_withChrome"
			
		}
		"EmoticonButton"
		{
			"ControlName"		"CEmoticonButton"
		}
	}
		
	styles
	{
		CChatRoomDlg
		{			
			bgcolor=DefaultBackground

			render_bg
			{

			}
			render
			{
		
				//gradient to obscure content at bottom of scrolling region 
				//2="gradient( x0+9, y1 -88, x1-230, y1-74, none, almostblack )"
			}
		}
		
		"Textentryfocus_chat"
		{
			render
			{
				// lines around
				//0="fill( x0, y0, x0 + 1, y1, ButtonBorderDisabled )"
				//1="fill(  x1 - 1, y0, x1, y1, ButtonBorderDisabled )"
				//2="fill( x0 + 1, y0, x1 - 1, y0 + 1, ButtonBorderDisabled )"
				//3="fill( x0 + 1, y1 - 1, x1 - 1, y1, ButtonBorderDisabled )"
				
			}
			font-size=16
		}	

		CEmoticonButton
		{
			inset="5 0 0 0"
			image="graphics/icon_emoticon_hover"
			render_bg
			{
				0="fill(x0, y0, x1, y1, Chat.Back)"
				// lines around
				1="fill( x0, y0, x1, y0 + 1, DefaultBackground )"  // top
			}
		}

		CEmoticonButton:hover
		{
			render_bg
			{
				0="fill(x0, y0, x1, y1, Menu.Hover)"
				// lines around
				1="fill( x0, y0, x1, y0 + 1, DefaultBackground )"  // top
			}
		}

		CEmoticonButton:selected
		{
			render_bg
			{
				0="fill(x0, y0, x1, y1, Accent)"
				// lines around
				1="fill( x0, y0, x1, y0 + 1, DefaultBackground )"  // top
			}
		}

		EmoticonMenuItemStyle
		{
			inset="-5 0 0 0"
			padding=0
			font-size=24
			bgcolor=none
		}
		
		EmoticonMenuItemStyle:hover
		{
			textcolor=white
			bgcolor=none
		}
		
		EmoticonMenuItemStyle:selected
		{
			textcolor=white
			bgcolor=none
		}
		
		CChatActionsButton
		{
			inset="2 0 0 0"
			image="graphics/custom/dots"
		}
		
		CChatActionsButton:hover
		{
			image="graphics/custom/dots"
			bgcolor=Menu.Hover
		}

		CChatActionsButton:selected
		{
			image="graphics/custom/dots"
			bgcolor=Accent
		}

		GridMenu
		{
			font-size=16
		}
		
		TextEntry
		{
			textcolor=TextBox.Hover.Text //TextBox.Text is the empty text color, we want hover
			selectedtextcolor=TextBox.Hover.Text
			selectedbgcolor=DefaultText.Back
			shadowtextcolor=DefaultCursor  // this is the cursor color
			render_bg
			{
				0="fill(x0, y0, x1, y1, Chat.Back)"
				// lines around
				1="fill( x0, y0, x1, y0 + 1, DefaultBackground )"  // top
			} 
		}
		
		TextEntry:hover
		{
			textcolor=TextBox.Hover.Text 
			selectedtextcolor=TextBox.Hover.Text
			selectedbgcolor=DefaultText.Back
			shadowtextcolor=DefaultCursor  
			render_bg
			{
				0="fill(x0, y0, x1, y1, Chat.Back)"
				// lines around
				1="fill( x0, y0, x1, y0 + 1, DefaultBackground )"  // top
			} 
		}
		
		TextEntry:focus
		{
			textcolor=TextBox.Hover.Text 
			selectedtextcolor=TextBox.Hover.Text
			selectedbgcolor=DefaultText.Back
			shadowtextcolor=DefaultCursor  
			render_bg
			{
				0="fill(x0, y0, x1, y1, Chat.Back)"
				// lines around
				1="fill( x0, y0, x1, y0 + 1, DefaultBackground )"  // top
			}
		}
		
	}
	
	layout
	{
		region { name="hidden" width=0 height=0}
		place { control="SendButton" region=hidden height=30 width=40 align=right} //if only you could have individual styling
		place { control="Splitter" width=6 region=hidden} //maybe bring him back if we figure it out
		
		region { name=list width=200 height=max }
		place { control="UserList" region=list align=left height=max margin-right=0}
		
		region { name=chat width=max height=max margin-bottom=42 margin-left=200}
		place { control="TitlePanel" region=chat margin-left=6 y=2 height=50 width=max margin-right=6}
		place { control="VoiceBar" region=chat y=34 height=24 width=max margin-left=8 margin-right=52 }
		place { control="ChatHistory" region=chat width=max height=max margin-bottom=42 margin-top=55}
		place { control="EmoticonButton" region=chat height=42 align=bottom-right }
		place { control="TextEntry" align=bottom region=chat end-right="EmoticonButton" height=42 width=max }
		
		region { name=bottomrow align=bottom height=42 margin-left=200}
		place { control="StatusLabel" region=bottomrow width=max margin-left=10 height=40 end-right="VoiceChat"}
		place { control="VoiceChat,ChatActionsButton" region=bottomrow width=42 height=42 margin-right=1 align=right spacing=0 dir=right }
	}
}
