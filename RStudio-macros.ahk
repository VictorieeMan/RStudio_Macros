#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; For adding a code block in R markdown
^r::
SendInput, {Enter}
SendRaw, ``````{r}
SendInput, {Enter}
; SendRaw, print("Hello World")
SendInput, {Enter}
SendRaw, ``````
SendInput, {Enter}
;SendRaw, <!-- Code block comment: -->
return

; For adding a html comment in R markdown
^k::
SendRaw, <!-- Code block comment: -->
return

; For variable assignment
^<::
Send, <-
return