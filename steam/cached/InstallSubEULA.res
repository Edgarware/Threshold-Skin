"steam/cached/InstallSubEULA.res"
{

	styles{
		
	}
	
	layout{
		region { name=body margin-top=20 margin-left=20 margin-right=20 width=max height=max }
		place { control=Label1 region=body width=max}
		place { control=HTMLEULA width=max height=max margin-top=70}
	}
	
	"InstallSubEULA"
	{
		"ControlName"		"CInstallSubEULA"
		"fieldName"		"InstallSubEULA"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"1"
		"paintbackground"		"1"
	}
	"HTMLEULA"
	{
		"ControlName"		"HTML"
		"fieldName"		"HTMLEULA"
		"xpos"		"0"
		"ypos"		"44"
		"wide"		"0"
		"tall"		"0"
		"AutoResize"		"3"
		"PinCorner"		"0"
		"UnpinnedCornerOffsetY" "0"
		"UnpinnedCornerOffsetX" "0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
	}
	"Label1"
	{
		"ControlName"		"Label"
		"fieldName"		"Label1"
		"xpos"		"10"
		"ypos"		"8"
		"wide"		"444"
		"tall"		"42"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Steam_LaunchEULA_Text"
		"textAlignment"		"west"
		"wrap"		"1"
	}
}
