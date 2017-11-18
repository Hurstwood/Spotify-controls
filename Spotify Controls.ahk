SetTitleMatchMode 2
#SingleInstance ignore
;#NoTrayIcon


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;								;
;	   Global Controls			;
;								;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;Global - Volume increase. "Win+Alt+Pg Up"
#!PgUp::Send {Volume_Up} 


;Global - Volume decrease. "Win+Alt+Pg Dn"
#!PgDn::Send {Volume_Down}	


;Global - Volume mute. "Win+Alt+Enter"
#!Enter::Send {Volume_Mute}



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;								;
;	Spotify Controls			;
;								;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;Spotify - Play/Pause track. "Win+Alt+Up"
#IfWinExists ahk_class SpotifyMainWindow
#!Up::Send {Media_Play_Pause}


;Spotify - Previous track. "Win+Alt+Left".
#IfWinExists ahk_class SpotifyMainWindow
#!Left:: Send {Media_Prev}


;Spotify - Next track. "Win+Alt+Right"
#IfWinExists ahk_class SpotifyMainWindow
#!Right:: Send {Media_Next}


;Spotify - Volume increase. "Win+Alt+Home"
#IfWinExists ahk_class SpotifyMainWindow
#!Home:: 
{ 
DetectHiddenWindows, On 
ControlSend, ahk_parent, ^{Up}, ahk_class SpotifyMainWindow 
DetectHiddenWindows, Off 
return 
} 


;Spotify - Volume decrease. "Win+Alt+End"
#IfWinExists ahk_class SpotifyMainWindow
#!End:: 
{ 
DetectHiddenWindows, On 
ControlSend, ahk_parent, ^{Down}, ahk_class SpotifyMainWindow 
DetectHiddenWindows, Off 
return 
} 


;Spotify - Track info. "Win+Alt+Down"
#IfWinExists ahk_class SpotifyMainWindow
#!Down:: 
{ 
DetectHiddenWindows, On
SetTitleMatchMode 2 
WinGetTitle, now_playing, ahk_class SpotifyMainWindow 
StringTrimLeft, playing, now_playing, 0 
DetectHiddenWindows, Off 
MsgBox,0,Playing now on Spotify, %playing%,1
return 
} 
