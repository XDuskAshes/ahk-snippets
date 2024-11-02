; Script restarter for AutoHotKey
; Made by XDuskAshes - <https://github.com/XDuskAshes/>
; MIT License

; Note: Make sure you have "#SingleInstance Force" defined before this.
^0::{
    ; MsgBox("Press ENTER/Click OK to refresh script. You may have to wait a moment.") ; OPTIONAL: Message box
    Run "" ; Your script path
}
