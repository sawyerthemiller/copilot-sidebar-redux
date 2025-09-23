;  Sorry for the weird spacing in the file, tryna be transparent as with what it does  

#NoTrayIcon  ; Hide tray icon



; --- SETUP AND DL ICON PATH ---
iconPath := A_MyDocuments "\cop.png"

if !FileExist(iconPath)
{
    UrlDownloadToFile, https://i.ibb.co/bj5ZxnL1/cop-final.png, %iconPath%
}



; --- GUI SETUP ---
Gui, +AlwaysOnTop -Caption +ToolWindow   		; Always on top, no title bar, tool window
Gui, Color, 0x000000                    		; Background set to black
Gui, Add, Picture, w25 h24 gOpenCopilot, %iconPath%  	; Use the icon from Documents
WinSet, TransColor, 0x000000             		; Make black background transparent



; --- POSITION GUI IN LOWER-RIGHT CORNER ---
SysGet, MonitorWorkArea, MonitorWorkArea
x := MonitorWorkAreaRight - 55           ; 55px from right edge
y := MonitorWorkAreaBottom + 4           ; Slightly below bottom edge
Gui, Show, x%x% y%y% NoActivate          ; Show GUI without taking focus



; --- KEEP GUI ALWAYS ON TOP ---
SetTimer, KeepOnTop, 500
return

; Timer function: force always-on-top every 500ms
KeepOnTop:
    WinSet, AlwaysOnTop, On, ahk_class AutoHotkeyGUI
return



; --- OPEN / TOGGLE COPILOT IN EDGE ---
OpenCopilot:
    ; If Edge is already running
    IfWinExist, ahk_exe msedge.exe
    {
        WinGet, winState, MinMax, ahk_exe msedge.exe
        if (winState = -1)   ; Already MINIMISED
        {
            WinRestore, ahk_exe msedge.exe
            WinActivate, ahk_exe msedge.exe
        }
        else                 ; Already OPEN
        {
            WinMinimize, ahk_exe msedge.exe
        }
    }
    else
    {
        ; Launch Copilot in Edge app mode
        Run, "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" -app="https://www.copilot.com/"
    }
return



; Copyright American Computer Software Company
; Copilot Sidebar Redux FINAL

