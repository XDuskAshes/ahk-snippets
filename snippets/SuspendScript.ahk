; Script suspender snippet(s) for AutoHotKey
; Made by XDuskAshes - <https://github.com/XDuskAshes/>
; MIT License

; This entire file is a bit annoying to explain, here's the basics.
; Imagine you have two scripts in a folder: 'UsefulBinds.ahk' and 'UsefulBindsSuspend.ahk'.
; 'UsefulBinds.ahk' just has a bunch of shortcuts you tend to use in certain settings, such as when
; you're filing your taxes or something. It would have this bit (amazing segue into a code segment,
; segue-er of the year right here (sarcasm))

^9::{
    MsgBox("Suspending your useful binds. Ctrl+9 to unsuspend.")
    Run "UsefulBindsSuspend.ahk"
    ExitApp
}

; You may have noticed something: I'm a filthy goddamn liar.
; "That isn't suspending the process! You're killing it and running the other one!"
; I'm *technically* not a liar. It's suspension in the sense of 'UsefulBinds.ahk' is
; a troublesome student and you are a principal suspending it for x number of days for...
; some reason. I dunno, take your pick. Regardless, it's 'suspension' is temporary,
; because 'UsefulBindsSuspend.ahk' does a lifting of the indefinite suspension.

MsgBox("Press Ctrl+9 at any time to restart UsefulBinds.")

^9::{
    MsgBox("Restarting UsefulBinds")
    Run "UsefulBinds.ahk"
    ExitApp
}

; These two working in tandem, and also having '#SingleInstance Force' defined at the top,
; gives the illusion of suspending hotkey functionality so you can game or whatever else
; you so please.