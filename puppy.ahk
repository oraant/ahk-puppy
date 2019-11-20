#Include system.ahk
#Include work.ahk
#Include overwatch.ahk
#Include test.ahk

system_declare_variable()
overwatch_declare_variable()
work_declare_variable()
test_declare_variable()

; --------------------------------------------------------------------------------------
; ------- 系统相关区域
; --------------------------------------------------------------------------------------

	; 切换Suspend热键功能，因为有时候Win+V键、有道的双击Ctrl划词，都会和AHK冲突
	F6::Suspend

	; 切换大小写和Control键
	Control::Capslock
	Capslock::Control

	; 用Ctrl+鼠标功能键来切换屏幕
	^XButton1:: #^Left
	^XButton2:: #^Right

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


; --------------------------------------------------------------------------------------
; ------- 工作相关区域
; --------------------------------------------------------------------------------------

^!C::
if WinActive("ahk_exe webstorm64.exe") or WinActive("ahk_exe pycharm64.exe")
	SeleteColumns()
return

; --------------------------------------------------------------------------------------
; ------- 游戏相关区域
; --------------------------------------------------------------------------------------

F4::
if WinActive("ahk_exe Overwatch.exe")
	ChangeGameFunc()
return

R::
if WinActive("ahk_exe Overwatch.exe")
	ExecuteGameFunc()
return

; --------------------------------------------------------------------------------------
; ------- 测试相关区域
; --------------------------------------------------------------------------------------
