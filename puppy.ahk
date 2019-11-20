; 切换大小写和Control键
Control::Capslock
Capslock::Control

^XButton1:: #^Left
^XButton2:: #^Right

; 切换Suspend热键功能，因为有时候Win+V键、有道的双击Ctrl划词，都会和AHK冲突
F6::Suspend

; 暗影精灵4Pro的按键修改
RCtrl::AppsKey
RAlt::MButton
F24::Home

; 小键盘改成鼠标
NumpadLeft::LButton
NumpadRight::RButton
NumpadClear::MButton
NumpadUp::WheelUp
NumpadDown::WheelDown

; 用在 pycharm 或 webstorm 中，折叠内容后批量选择某列
#^!p::
Loop, 640
{
    Send !{LButton}
    Sleep, 500
    Send ^{Down}
    Sleep, 500
}
return

; 守望先锋连点器
#^!r::
;r::
Loop, 100
{
    Sleep, 100
    Send e
}
return
#^!t::
Loop, 100
{
    Send e
    Sleep, 100
    Send {RButton}
    Sleep, 100
}
return