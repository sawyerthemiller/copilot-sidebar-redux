#NoTrayIcon
#SingleInstance


; ============================================================================================


; --- SETUP ---
iconPath := A_MyDocuments . "\cop.png"
if !FileExist(iconPath)
    UrlDownloadToFile, https://i.ibb.co/fdTg6p1k/cop.png, %iconPath%


; ============================================================================================


; --- SIZES ---
borderSize := 1           ; thickness of white border
innerW := 28              ; width of black box (and image)
innerH := 28              ; height of black box (and image)

guiW := innerW + 2*borderSize
guiH := innerH + 2*borderSize

; --- CREATE MAIN GUI (white border) ---
Gui, +AlwaysOnTop -Caption +ToolWindow
Gui, Color, FFFFFF        ; white border

; --- ADD INNER BLACK BOX ---
Gui, Add, Progress, x%borderSize% y%borderSize% w%innerW% h%innerH% Background000000 Disabled

; --- ADD CLICKABLE IMAGE ON TOP OF BLACK BOX ---
Gui, Add, Picture, x%borderSize% y%borderSize% w%innerW% h%innerH% BackgroundTrans gOpenCopilot, %iconPath%


; ============================================================================================


; --- SHOW GUI AT LOWER RIGHT ---
SysGet, MonitorWorkArea, MonitorWorkArea
x := MonitorWorkAreaRight - 97  ; Keep your offset; change to -guiW for true corner
y := MonitorWorkAreaBottom + 14  ; Corrected to align bottom
Gui, Show, x%x% y%y% w%guiW% h%guiH% NoActivate

; --- GET GUI ID FOR TARGETED ALWAYS ON TOP ---
Gui, +LastFound
guiID := WinExist()

; --- KEEP GUI ALWAYS ON TOP ---
SetTimer, KeepOnTop, 500
return

KeepOnTop:
    WinSet, AlwaysOnTop, On, ahk_id %guiID%
return


; ============================================================================================


; --- COPILOT APP LOGIC ---
OpenCopilot:
    IfWinExist, ahk_exe msedge.exe
    {
        WinGet, winState, MinMax, ahk_exe msedge.exe
        if (winState = -1)
        {
            WinRestore, ahk_exe msedge.exe
            WinActivate, ahk_exe msedge.exe
        }
        else
            WinMinimize, ahk_exe msedge.exe
    }
    else
        Run, "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" -app="https://www.copilot.com/"
return


; ============================================================================================


; Copilot Sidebar REDUX
; American Computer Software Company
