
;Working version
; getLatestReleaseInfo()
; {
; 	Process, Close, salesTrackerComs.exe
; 	FileDelete, C:\Users\Ben\Desktop\test git\salesTrackerComs.exe
; 	Sleep, 2000
; 	run git clone https://github.com/bennyboy743/OBandIBComsTracker.git
; 	Sleep, 2000
; 	FileMove, C:\Users\Ben\Desktop\test git\OBandIBComsTracker\salesTrackerComs.exe, C:\Users\Ben\Desktop\test git
; 	Sleep, 2000
; 	FileMove, C:\Users\Ben\Desktop\test git\tempfile\salesTrackerComs.exe, C:\Users\Ben\Desktop\test git
; 	Sleep, 2000
; 	FileRemoveDir, C:\Users\Ben\Desktop\test git\OBandIBComsTracker, 1
; 	FileRemoveDir, C:\Users\Ben\Desktop\test git\tempfile, 1
; 	run salesTrackerComs.exe

	
	
; }
; getLatestReleaseInfo()


;testing version
getLatestReleaseInfo()
{
	Process, Close, salesTrackerComs.exe
	FileDelete, %A_ScriptDir%\salesTrackerComs.exe
	Sleep, 2000
	run git clone https://github.com/bennyboy743/OBandIBComsTracker.git
	Sleep, 2000
	FileMove, %A_ScriptDir%\OBandIBComsTracker\salesTrackerComs.exe, %A_ScriptDir%
	FileMove, %A_ScriptDir%\OBandIBComsTracker\salesTrackerComs.ahk, %A_ScriptDir%
	Sleep, 2000
	FileRemoveDir, %A_ScriptDir%\OBandIBComsTracker, 1
	run salesTrackerComs.exe

	
	
}
getLatestReleaseInfo()

; run C:\Users\Ben\Desktop\test git\downloadrepo.bat 


