

getLatestReleaseByGit()
{
	Process, Close, salesTrackerComs.exe
	FileDelete, %A_ScriptDir%\salesTrackerComs.exe
	Sleep, 2000
	run git clone https://github.com/bennyboy743/OBandIBComsTracker.git
	Sleep, 2000
	FileMove, %A_ScriptDir%\OBandIBComsTracker\salesTrackerComs.exe, %A_ScriptDir%
	sleep,2000
	FileMove, %A_ScriptDir%\OBandIBComsTracker\salesTrackerComs.ahk, %A_ScriptDir%
	Sleep, 2000
	FileRemoveDir, %A_ScriptDir%\OBandIBComsTracker, 1
	run salesTrackerComs.exe

	
	
}
;getLatestReleaseInfo()

getUpdateFromReleaseInfo(){
	;if the old one is ther , remove it and add the new one
FileDelete, %A_ScriptDir%\salesTrackerComs.exe

FileCreateDir, pulledUpdate
FileCreateDir newUpdate
newUpdatePath := A_ScriptDir . "\newUpdate"
URLDownloadToFile, https://github.com/bennyboy743/OBandIBComsTracker/archive/refs/tags/testing.zip, % FilePath := A_WorkingDir . "\pulledUpdate\temp.zip"
Unz(FilePath,newUpdatePath)
Sleep, 1000
FileMove, %A_ScriptDir%\newUpdate\OBandIBComsTracker-testing\salesTrackerComs.exe, %A_ScriptDir%

Sleep, 1500
FileRemoveDir, %A_ScriptDir%\pulledUpdate, 1
FileRemoveDir, %A_ScriptDir%\newUpdate, 1







}
getUpdateFromReleaseInfo()

Unz(Source, Dest)
{
   psh := ComObjCreate("Shell.Application")
   psh.Namespace(Dest).CopyHere( psh.Namespace(Source).items, 4|16)
}