getUpdateFromReleaseInfo(){
   ;if the old one is ther , remove it and add the new one
   FileDelete, %A_ScriptDir%\salesTrackerComs.exe

   FileCreateDir, pulledUpdate
   FileCreateDir newUpdate
   newUpdatePath := A_ScriptDir . "\newUpdate"
   oWhr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
   oWhr.Open("GET", "https://api.github.com/repos/bennyboy743/OBandIBComsTracker/releases/latest", false)
   oWhr.SetRequestHeader("Content-Type", "application/json")
   oWhr.Send()
   
   downloadNewUpdate := JsonToAHK(oWhr.ResponseText).zipball_url
   URLDownloadToFile, %downloadNewUpdate%, % FilePath := A_WorkingDir . "\pulledUpdate\temp.zip"
   Unz(FilePath,newUpdatePath)
   Sleep, 1000

   ;Checks to see if there is exe in the folder, then pulls it out
   Loop Files, %A_ScriptDir%\*.exe, R  ; Recurse into subfolders.
   {
   ;  MsgBox, 4, , Filename = %A_LoopFileFullPath%
    FileMove, %A_LoopFileFullPath%, %A_ScriptDir%
    
   }

   Sleep, 1500
   ;FileRemoveDir, %A_ScriptDir%\pulledUpdate, 1
   ;FileRemoveDir, %A_ScriptDir%\newUpdate, 1

   run, salesTrackerComs.exe



}
getUpdateFromReleaseInfo()

Unz(Source, Dest)
{
   psh := ComObjCreate("Shell.Application")
   psh.Namespace(Dest).CopyHere( psh.Namespace(Source).items, 4|16)
}

JsonToAHK(json, rec := false) { 
   static doc := ComObjCreate("htmlfile") 
         , __ := doc.write("<meta http-equiv=""X-UA-Compatible"" content=""IE=9"">") 
         , JS := doc.parentWindow 
   if !rec 
      obj := %A_ThisFunc%(JS.eval("(" . json . ")"), true) 
   else if !IsObject(json) 
      obj := json 
   else if JS.Object.prototype.toString.call(json) == "[object Array]" { 
      obj := [] 
      Loop % json.length 
         obj.Push( %A_ThisFunc%(json[A_Index - 1], true) ) 
   } 
   else { 
      obj := {} 
      keys := JS.Object.keys(json) 
      Loop % keys.length { 
         k := keys[A_Index - 1] 
         obj[k] := %A_ThisFunc%(json[k], true) 
      } 
   } 
   Return obj 
} 
