#Include system.ahk
#Include tc.ahk
#Include work.ahk
#Include overwatch.ahk
#Include external.ahk
#Include test.ahk

system_declare_variable()
tc_declare_variable()
overwatch_declare_variable()
work_declare_variable()
external_declare_variable()
test_declare_variable()

; --------------------------------------------------------------------------------------
; ------- 系统全局区域
; --------------------------------------------------------------------------------------

	; 切换Suspend热键功能，因为有时候Win+V键、有道的双击Ctrl划词，都会和AHK冲突
	F6::Suspend

	; 切换大小写和Control键
	~Control::Capslock ; 这里用~保留Ctrl的功能，是为了给Win+V的粘贴功能保留余地（至于动态开关映射之类的，AHK不支持）
	Capslock::Control

	; 用Ctrl+鼠标功能键来切换屏幕
	#IfWinNotActive ahk_exe Warframe.x64.exe
		^XButton1:: #^Left
		^XButton2:: #^Right
	#IfWinNotActive

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
; ------- Total Commander 相关区域
; --------------------------------------------------------------------------------------

#IfWinActive, ahk_class TTOTAL_CMD
	NumpadMult::file_append_suffix_tag_Mult()
	NumpadDiv::file_append_suffix_tag_Div()
	NumpadAdd::file_append_suffix_tag_Add()
	NumpadSub::file_append_suffix_tag_Sub()
	NumpadDot::file_append_suffix_tag_Dot()
	Numpad0::file_append_suffix_tag_0()
	Numpad1::file_append_suffix_tag_1()
	Numpad2::file_append_suffix_tag_2()
	Numpad3::file_append_suffix_tag_3()
	Numpad4::file_append_suffix_tag_4()
	Numpad5::file_append_suffix_tag_5()
	Numpad6::file_append_suffix_tag_6()
	Numpad7::file_append_suffix_tag_7()
	Numpad8::file_append_suffix_tag_8()
	Numpad9::file_append_suffix_tag_9()
#IfWinActive

; --------------------------------------------------------------------------------------
; ------- 工作相关区域
; --------------------------------------------------------------------------------------

#IfWinActive, ahk_class SunAwtFrame
	^!C::SeleteColumns() ; 用在 pycharm 或 webstorm 中，折叠内容后批量选择某列
#IfWinActive

#IfWinActive, ahk_exe PdShell16.exe
	XButton1::TempFunc1() ; 临时写的脚本1
	XButton2::TempFunc2() ; 临时写的脚本2
#IfWinActive

; --------------------------------------------------------------------------------------
; ------- 游戏相关区域
; --------------------------------------------------------------------------------------

#IfWinActive, ahk_exe Overwatch.exe
	^LButton::SimpleLoopL()
	^RButton::SimpleLoopR()
	^MButton::SimpleLoopM()
	
	^Q::SimpleLoopQ()
	^E::SimpleLoopE()
	^V::SimpleLoopV()
	^LShift::SimpleLoopS()
	
	^1::MaoMei()
	^2::MoYi()
	^3::AnNa()
	
	^Tab::ChangeGameFunc() ; 选择要循环执行的操作
	XButton2::ToggleTimer() ; 开关无限循环连点器
#IfWinActive

#IfWinActive, ahk_class UnityWndClass ; AI里
	^LButton::SimpleLoopL()
	^RButton::SimpleLoopR()
	^MButton::SimpleLoopM()
	XButton1::m ; 切换地图开关
	XButton2::ToggleTimer() ; 开关无限循环连点器
#IfWinActive

#IfWinActive, ahk_exe ApplicationFrameHost.exe ; 地平线
	Capslock::Enter
#IfWinActive

#IfWinActive ahk_exe Warframe.x64.exe
	F1::Send, zexoANT123
	F2::Send, |{Space 100}
#IfWinActive

; --------------------------------------------------------------------------------------
; ------- 执行外部脚本
; --------------------------------------------------------------------------------------

	F7::ToggleProxy()

; --------------------------------------------------------------------------------------
; ------- 测试相关区域
; --------------------------------------------------------------------------------------

	!`::ExecuteTest() ; 执行测试代码