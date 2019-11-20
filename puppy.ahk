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

#IfWinActive, ahk_class SunAwtFrame
	^!C::SeleteColumns() ; 用在 pycharm 或 webstorm 中，折叠内容后批量选择某列
#IfWinActive

; --------------------------------------------------------------------------------------
; ------- 游戏相关区域
; --------------------------------------------------------------------------------------

#IfWinActive, ahk_exe Overwatch.exe
	F4::ChangeGameFunc() ; 选择要循环执行的操作
	R::ToggleTimer() ; 开关无限循环连点器
#IfWinActive

; --------------------------------------------------------------------------------------
; ------- 测试相关区域
; --------------------------------------------------------------------------------------
