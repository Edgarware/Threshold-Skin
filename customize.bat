@echo off
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (goto UACPrompt) else (goto gotAdmin)
:UACPrompt
echo This script is provided for use at YOUR OWN RISK. In no case shall any person who is related in any way with this script could be held liable for any damage, claim or other liability that is directly or indirectly related to your use of this script.
echo If you do not want to continue, close this window.
pause
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
goto End
:GotAdmin
if exist "%temp%\getadmin.vbs" (
    del "%temp%\getadmin.vbs"
) ELSE (
    echo This script is provided for use at YOUR OWN RISK. In no case shall any person who is related in any way with this script could be held liable for any damage, claim or other liability that is directly or indirectly related to your use of this script.
    echo If you do not want to continue, close this window.
    pause
)
pushd "%CD%"
CD /D "%~dp0"
del .\config.ini
del .\graphics\avatarBorderGolden.tga
del .\graphics\avatarBorderInGame.tga
del .\graphics\avatarBorderOffline.tga
del .\graphics\avatarBorderOnline.tga
del .\resource\layout\steamrootdialog.layout
del .\resource\layout\uinavigatorpanel.layout
del .\resource\layout\uistatuspanel.layout
:Sidebar
cls
set /P Sidebar=(E)xpanded or (C)ollapsed sidebar?
set EntryValid=0
IF /I "%Sidebar%"=="e" set EntryValid=1
IF /I "%Sidebar%"=="c" set EntryValid=1
IF NOT DEFINED Sidebar set EntryValid=1
IF /I %EntryValid% EQU 0 (
    cls
    echo Your selection is not valid!
    pause
    goto Sidebar
)
IF /I "%Sidebar%"=="c" goto Avatar
:Account
cls
set /P Account=(S)how or (H)ide account name?
set EntryValid=0
IF /I "%Account%"=="s" set EntryValid=1
IF /I "%Account%"=="h" set EntryValid=1
IF NOT DEFINED Account set EntryValid=1
IF /I %EntryValid% EQU 0 (
    cls
    echo Your selection is not valid!
    pause
    goto Account
)
:Avatar
cls
set /P Avatar=(C)ircle or (S)quare avatars?
set EntryValid=0
IF /I "%Avatar%"=="c" set EntryValid=1
IF /I "%Avatar%"=="s" set EntryValid=1
IF NOT DEFINED Avatar set EntryValid=1
IF /I %EntryValid% EQU 0 (
    cls
    echo Your selection is not valid!
    pause
    goto Avatar
)
:Titlebar
cls
set /P Titlebar=(C)olored or (D)ark titlebar?
IF /I "%Titlebar%"=="c" set EntryValid=1
IF /I "%Titlebar%"=="d" set EntryValid=1
IF NOT DEFINED Titlebar set EntryValid=1
IF /I %EntryValid% EQU 0 (
    cls
    echo Your selection is not valid!
    pause
    goto Titlebar
)
:Color
cls
echo (C)obalt
echo (R)ed
echo (G)reen
echo C(Y)an
echo (O)range
echo (P)urple
echo.
set Color=c
set /P Color=What color do you want?
IF /I "%Color%"=="c" set EntryValid=1
IF /I "%Color%"=="r" set EntryValid=1
IF /I "%Color%"=="g" set EntryValid=1
IF /I "%Color%"=="y" set EntryValid=1
IF /I "%Color%"=="o" set EntryValid=1
IF /I "%Color%"=="p" set EntryValid=1
IF NOT DEFINED Color set EntryValid=1
IF /I %EntryValid% EQU 0 (
    cls
    echo Your selection is not valid!
    pause
    goto Color
)
:Outline
cls
set /P Outline=Do you want to enable outlines? (Y/N)
IF /I "%Outline%"=="n" set EntryValid=1
IF /I "%Outline%"=="y" set EntryValid=1
IF NOT DEFINED Outline set EntryValid=1
IF /I %EntryValid% EQU 0 (
    cls
    echo Your selection is not valid!
    pause
    goto Outline
)
:ApplySidebar
IF /I "%Sidebar%"=="c" (
    mklink /H .\resource\layout\steamrootdialog.layout ".\Customization\Sidebar Width\Collapsed Sidebar\resource\layout\steamrootdialog.layout" 
    mklink /H .\resource\layout\uinavigatorpanel.layout ".\Customization\Sidebar Width\Collapsed Sidebar\resource\layout\uinavigatorpanel.layout"
    mklink /H .\resource\layout\uistatuspanel.layout ".\Customization\Sidebar Width\Collapsed Sidebar\resource\layout\uistatuspanel.layout"
    goto ApplyAvatar
) ELSE (
    mklink /H .\resource\layout\uinavigatorpanel.layout ".\Customization\Sidebar Width\Expanded Sidebar\resource\layout\uinavigatorpanel.layout"
    mklink /H .\resource\layout\uistatuspanel.layout ".\Customization\Sidebar Width\Expanded Sidebar\resource\layout\uistatuspanel.layout"
)
:ApplyAccount
IF /I "%Account%"=="h" (
    mklink /H .\resource\layout\steamrootdialog.layout ".\Customization\Account Name\Hide Account Name\resource\layout\steamrootdialog.layout"
) ELSE (
    mklink /H .\resource\layout\steamrootdialog.layout ".\Customization\Account Name\Show Account Name\resource\layout\steamrootdialog.layout"
)
:ApplyAvatar
IF /I "%Avatar%"=="s" (
    mklink /H .\graphics\avatarBorderGolden.tga ".\Customization\Avatar Shape\Square\graphics\avatarBorderGolden.tga"
    mklink /H .\graphics\avatarBorderInGame.tga ".\Customization\Avatar Shape\Square\graphics\avatarBorderInGame.tga"
    mklink /H .\graphics\avatarBorderOffline.tga ".\Customization\Avatar Shape\Square\graphics\avatarBorderOffline.tga"
    mklink /H .\graphics\avatarBorderOnline.tga ".\Customization\Avatar Shape\Square\graphics\avatarBorderOnline.tga"
) ELSE (
    mklink /H .\graphics\avatarBorderGolden.tga ".\Customization\Avatar Shape\Circle\graphics\avatarBorderGolden.tga"
    mklink /H .\graphics\avatarBorderInGame.tga ".\Customization\Avatar Shape\Circle\graphics\avatarBorderInGame.tga"
    mklink /H .\graphics\avatarBorderOffline.tga ".\Customization\Avatar Shape\Circle\graphics\avatarBorderOffline.tga"
    mklink /H .\graphics\avatarBorderOnline.tga ".\Customization\Avatar Shape\Circle\graphics\avatarBorderOnline.tga"
)
:ApplyConfigIni
echo config.ini{ > .\config.ini
echo. >> .\config.ini
echo //Window Outlines >> .\config.ini
echo //Whether to include window outlines or not. >> .\config.ini
echo //Comment the next line to enable outlines >> .\config.ini
echo. >> .\config.ini
IF /I "%Outline%"=="y" (
    echo 	//include "resource/styles/colors/no_outline.styles" >> .\config.ini
) ELSE (
    echo 	include "resource/styles/colors/no_outline.styles" >> .\config.ini
)
echo. >> .\config.ini
echo //TitleBar Color >> .\config.ini
echo //Whether the Titlebar is Black or defined by your Accent color >> .\config.ini
echo //Comment the next line for Accent colored titlebars >> .\config.ini
echo. >> .\config.ini
IF /I "%Titlebar%"=="c" (
    echo 	//include "resource/styles/colors/titlebar_black.styles" >> .\config.ini
) ELSE (
    echo 	include "resource/styles/colors/titlebar_black.styles" >> .\config.ini
)
echo. >> .\config.ini
echo //Accent Color Selection >> .\config.ini
echo //Uncomment your choice of color. Make sure one and only one is uncommented! >> .\config.ini
echo. >> .\config.ini
IF /I "%Color%"=="c" (
    echo 	include "resource/styles/colors/cobalt.styles" >> .\config.ini
) ELSE (
    echo 	//include "resource/styles/colors/cobalt.styles" >> .\config.ini
)
IF /I "%Color%"=="r" (
    echo 	include "resource/styles/colors/red.styles" >> .\config.ini
) ELSE (
    echo 	//include "resource/styles/colors/red.styles" >> .\config.ini
)
IF /I "%Color%"=="g" (
    echo 	include "resource/styles/colors/green.styles" >> .\config.ini
) ELSE (
    echo 	//include "resource/styles/colors/green.styles" >> .\config.ini
)
IF /I "%Color%"=="y" (
    echo 	include "resource/styles/colors/cyan.styles" >> .\config.ini
) ELSE (
    echo 	//include "resource/styles/colors/cyan.styles" >> .\config.ini
)
IF /I "%Color%"=="o" (
    echo 	include "resource/styles/colors/orange.styles" >> .\config.ini
) ELSE (
    echo 	//include "resource/styles/colors/orange.styles" >> .\config.ini
)
IF /I "%Color%"=="p" (
    echo 	include "resource/styles/colors/purple.styles" >> .\config.ini
) ELSE (
    echo 	//include "resource/styles/colors/purple.styles" >> .\config.ini
)
echo. >> .\config.ini
echo } >> .\config.ini
cls
echo Done!
pause
:End