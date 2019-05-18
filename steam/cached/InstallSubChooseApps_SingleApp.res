"steam/cached/InstallSubChooseApps_SingleApp.res"
{
	styles{
		
	}
	
	layout{
		region { name=body margin-top=20 margin-left=20 margin-right=20 width=max height=max }
		place { control=Label1 region=body width=max}
		place { control=CreateShortcutCheck,CreateStartMenuShortcutCheck region=body start=Label1 dir=down margin-top=15}
		
		place { control=InstallSize,DriveSpace,DownloadTimeLabel region=body start=CreateStartMenuShortcutCheck dir=down margin-top=15 spacing=7}
		place { control=InstallSizeLabel,DriveSpaceLabel,DownloadTimeInfo region=body start=CreateStartMenuShortcutCheck dir=down margin-top=15 spacing=7 margin-left=200}

		place { control=InstallLanguageLabel start=DownloadTimeLabel region=body dir=down margin-top=15 width=max}
		place { control=LanguageCombo start=InstallLanguageLabel region=body dir=down margin-top=7 width=max}

		place { control=InstallFolderLabel start=InstallLanguageLabel region=body dir=down margin-top=15 width=max}
		place { control=InstallFolderCombo start=InstallFolderLabel region=body dir=down margin-top=7 width=max}
		
	}

	"InstallSubChooseApps"
	{
		"ControlName"		"CInstallSubChooseApps"
		"fieldName"		"InstallSubChooseApps"
		"xpos"		"8"
		"ypos"		"48"
		"wide"		"388"
		"tall"		"300"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"1"
		"paintbackground"		"1"
		"WizardWide"		"0"
		"WizardTall"		"0"
	}
	
	"Label1"
	{
		"ControlName"		"Label"
		"fieldName"		"Label1"
		"xpos"		"10"
		"ypos"		"24"
		"wide"		"340"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Steam_InstallGameInfo"
		"textAlignment"		"north-west"
		"wrap"		"1"
	}
	
	"CreateShortcutCheck"
	{
		"ControlName"		"CheckButton"
		"fieldName"		"CreateShortcutCheck"
		"xpos"		"16"
		"ypos"		"60"
		"wide"		"390"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Steam_Install_CreateDesktopShortcut"
		"textAlignment"		"west"
		"wrap"		"0"
		"Default"		"0"
	}
	
	"CreateStartMenuShortcutCheck"
	{
		"ControlName"		"CheckButton"
		"fieldName"		"CreateStartMenuShortcutCheck"
		"xpos"		"16"
		"ypos"		"84"
		"wide"		"390"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Steam_Install_CreateStartMenuShortcut"
		"textAlignment"		"west"
		"wrap"		"0"
		"Default"		"0"
	}
	
	"InstallSize"
	{
		"ControlName"		"Label"
		"fieldName"		"InstallSize"
		"xpos"		"10"
		"ypos"		"128"
		"wide"		"186"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Steam_ScanCDKey_SpaceRequired"
		"textAlignment"		"west"
		"wrap"		"0"
	}
	
	"InstallSizeLabel"
	{
		"ControlName"		"Label"
		"fieldName"		"InstallSizeLabel"
		"xpos"		"200"
		"ypos"		"128"
		"wide"		"80"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"42 MB"
		"textAlignment"		"west"
		"wrap"		"0"
	}
	
	"DriveSpace"
	{
		"ControlName"		"Label"
		"fieldName"		"DriveSpace"
		"xpos"		"10"
		"ypos"		"152"
		"wide"		"186"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Steam_ScanCDKey_SpaceAvailable"
		"textAlignment"		"west"
		"wrap"		"0"
	}
	
	"DriveSpaceLabel"
	{
		"ControlName"		"Label"
		"fieldName"		"DriveSpaceLabel"
		"xpos"		"200"
		"ypos"		"152"
		"wide"		"80"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"148805 MB"
		"textAlignment"		"west"
		"wrap"		"0"
	}
	
	"DownloadTimeLabel"
	{
		"ControlName"		"Label"
		"fieldName"		"DownloadTimeLabel"
		"xpos"		"10"
		"ypos"		"176"
		"wide"		"186"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Steam_InstallDownloadTime"
		"textAlignment"		"west"
		"wrap"		"0"
	}
		
	"DownloadTimeInfo"
	{
		"ControlName"		"Label"
		"fieldName"		"DownloadTimeInfo"
		"xpos"		"200"
		"ypos"		"176"
		"wide"		"200"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Steam_InstallDownloadTime_Info"
		"textAlignment"		"west"
		"wrap"		"0"
	}
		
	"InstallFolderLabel"
	{
		"ControlName"		"Label"
		"fieldName"		"InstallFolderLabel"
		"xpos"		"10"
		"ypos"		"232"
		"wide"		"186"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#SteamUI_ChooseInstallFolder"
		"textAlignment"		"west"
		"wrap"		"0"
	}
	
	"InstallFolderCombo"
	{
		"ControlName"		"ComboBox"
		"fieldName"		"InstallFolderCombo"
		"xpos"		"10"
		"ypos"		"264"
		"wide"		"432"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"textAlignment"		"west"
		"wrap"		"0"
	}
	
	"InstallLanguageLabel"
	{
		"ControlName"		"Label"
		"fieldName"		"InstallLanguageLabel"
		"xpos"		"10"
		"ypos"		"200"
		"wide"		"186"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Steam_Install_ChooseLanguage"
		"textAlignment"		"west"
		"wrap"		"0"
	}
	
	"LanguageCombo"
	{
		"ControlName"		"ComboBox"
		"fieldName"		"LanguageCombo"
		"xpos"		"200"
		"ypos"		"200"
		"wide"		"240"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"textAlignment"		"west"
		"wrap"		"0"
	}
}
