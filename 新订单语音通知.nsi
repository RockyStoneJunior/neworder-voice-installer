# define installer name
OutFile "新订单语音通知.exe"
 
# set desktop as install directory
InstallDir $PROGRAMFILES\YuKang
 
# default section start
Section
 
# define output path
SetOutPath $INSTDIR
 
# specify file to go in output path
File libgcc_s_dw2-1.dll
File libstdc++-6.dll
File libwinpthread-1.dll
File Qt5Gui.dll
File Qt5Core.dll
File Qt5Multimedia.dll
File Qt5Network.dll
File Qt5Widgets.dll
File 愉康大药房新订单语音通知.exe

SetOutPath $INSTDIR\audio
File audio\qtaudio_windows.dll

SetOutPath $INSTDIR\imageformats
File imageformats\qjpeg.dll

SetOutPath $INSTDIR\platforms
File platforms\qminimal.dll
File platforms\qwindows.dll
 
# define uninstaller name
WriteUninstaller $INSTDIR\卸载.exe
 
 
#-------
# default section end
SectionEnd

Section "Desktop Shortcut" SectionX
    SetShellVarContext current
    CreateShortCut "$DESKTOP\愉康大药房新订单语音通知.lnk" "$INSTDIR\愉康大药房新订单语音通知.exe"
SectionEnd
 
# create a section to define what the uninstaller does.
# the section will always be named "Uninstall"
Section "Uninstall"
 
# Always delete uninstaller first
Delete $INSTDIR\卸载.exe
 
# now delete installed file
RMDir /r $INSTDIR\audio
RMDir /r $INSTDIR\imageformats
RMDir /r $INSTDIR\platforms

#Delete $INSTDIR\libgcc_s_dw2-1.dll
#Delete $INSTDIR\libstdc++-6.dll
#Delete $INSTDIR\libwinpthread-1.dll
#Delete $INSTDIR\Qt5Gui.dll
#Delete $INSTDIR\Qt5Core.dll
#Delete $INSTDIR\Qt5Network.dll
#Delete $INSTDIR\Qt5Widgets.dll
#Delete $INSTDIR\愉康大药房新订单语音通知.exe
Delete $INSTDIR\*.*

Delete $DESKTOP\愉康大药房新订单语音通知.lnk
 
SectionEnd