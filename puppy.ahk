#Include system.ahk
#Include tc.ahk
#Include work.ahk
#Include overwatch.ahk
#Include browser.ahk
#Include external.ahk
#Include test.ahk
#Include brightness.ahk

system_declare_variable()
tc_declare_variable()
overwatch_declare_variable()
work_declare_variable()
browser_declare_variable()
external_declare_variable()
test_declare_variable()

#MaxHotkeysPerInterval 2000 ; 单位时间内能接受的快捷键数量


; ■■■ 系统全局区域 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


	; ─── 基础配置 ───────────────────────────────────────────────
	
	; 额外锁的切换
	AppsKey::toggle_apps_lock()
	   RWin::toggle_rwin_lock()
	  RCtrl::toggle_rctl_lock()
	   RAlt::toggle_ralt_lock()
	;RShift::toggle_rsft_lock() ; 太常用了，先关掉吧

	; ─── 常用配置 ───────────────────────────────────────────────

	; 切换大小写和Control键
	!Control::Capslock ; 因为Win+V的粘贴功能必须用到原生ctrl键
	Capslock::Control
	
	
	; 不常用的功能键，改成常用功能
	F3::Media_Play_Pause
	F4::ToggleProxy()
	F6::
		Suspend
		SoundBeep, 600, 300
		return
	F7::
		Reload
		SoundBeep, 600, 300
		return
	
	
	; 用Win+鼠标功能键来切换屏幕
	^XButton1::#^Left
	^XButton2::#^Right
	#WheelUp::#^Left 
	#WheelDown::#^Right
	; ─── 扩展配置 ───────────────────────────────────────────────
	
	; 用鼠标额外的按键当做功能键
	#if (rwin_lock)
		; 确保原按键功能不受影响
		XButton2::Send {XButton2}
		XButton1::Send {XButton1}
		
		; 开关隐藏任务栏的功能
		XButton2 & LWin::ToggleTaskBar()
		
		; 调整亮度
		XButton2 & WheelUp::BS.SetBrightness(10)
		XButton2 & WheelDown::BS.SetBrightness(-10)
		
		; 调节音量
		XButton1 & WheelUp::send {Volume_Up 1}
		XButton1 & WheelDown::send {Volume_Down 1}
		
		; 数字键发送功能键（对接自律系统）
		XButton2 & 1::Send {F21}
		XButton2 & 2::Send {F22}
		XButton2 & 3::Send {F23}
		
		; 数字键切换应用程序
		XButton1 & 1::#1
		XButton1 & 2::#2
		XButton1 & 3::#3
		XButton1 & 4::#4
		XButton1 & 5::#5
		XButton1 & 6::#6
		XButton1 & 7::#7
		XButton1 & 8::#8
		XButton1 & Tab::
		XButton1 & 9::#9
		XButton1 & `::
		XButton1 & 0::#0
	#if
	

	; ─── 暗影精灵4Pro的按键修改（使用外接键盘时可以注释掉） ───────────────────────────────────────────────
	
	; 右侧功能键
	; RCtrl::AppsKey
	; RAlt::MButton
	; F24::Home

	; 小键盘改成鼠标
	; NumpadLeft::LButton
	; NumpadRight::RButton
	; NumpadClear::MButton
	; NumpadUp::WheelUp
	; NumpadDown::WheelDown


; ■■■ Total Commander 相关区域 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


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


; ■■■ 自律相关区域 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■



	F13::JumpScare()



; ■■■ 工作相关区域 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


#IfWinActive, ahk_class SunAwtFrame
	^!C::SeleteColumns() ; 用在 pycharm 或 webstorm 中，折叠内容后批量选择某列
#IfWinActive

#IfWinActive, ahk_exe PdShell16.exe
	XButton1::TempFunc1() ; 临时写的脚本1
	XButton2::TempFunc2() ; 临时写的脚本2
#IfWinActive

#IfWinActive, ahk_exe EXCEL.exe
	RButton::Send {RButton}
	RButton & e::+F2 ; 编辑批注
#IfWinActive


; ■■■ 游戏相关区域 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


#IfWinActive, ahk_exe Overwatch.exe
	`::Send 哈瓦那练枪升级版（直接搜索111）
	
	^LButton::SimpleLoopL()
	^RButton::SimpleLoopR()
	^MButton::SimpleLoopM()
	
	^Q::SimpleLoopQ()
	^E::SimpleLoopE()
	^V::SimpleLoopV()
	^X::SimpleLoopX()
	^LShift::SimpleLoopS()
	
	^1::MaoMei()
	^2::MoYi()
	^3::AnNa()
	
	^Tab::ChangeGameFunc() ; 选择要循环执行的操作
	XButton2::ToggleTimer() ; 开关无限循环连点器
#IfWinActive

#IfWinActive, ahk_class UnityWndClass ; AI里
	;^LButton::SimpleLoopL()
	;^RButton::SimpleLoopR()
	;^MButton::SimpleLoopM()
	;XButton1::m ; 切换地图开关
	;XButton2::ToggleTimer() ; 开关无限循环连点器
	XButton1::#^Left ; HS2里切换桌面
	XButton2::#^Right ; HS2里切换桌面
#IfWinActive

#IfWinActive, Horizon ; 地平线
	Capslock::Enter
#IfWinActive

#IfWinActive ahk_exe Warframe.x64.exe
	F1::Send, zexoANT123
	F2::Send, |{Space 100}
#IfWinActive

#IfWinActive ahk_exe NMS.exe ; 无人深空中，快捷键的快捷键
	b::0 ; 表情
	;12 切枪 34叫船 56 叫车 7 货船
	
	F1::8 ; 相机
	F2::9 ; 人称
	`::F12 ; Steam截屏
#IfWinActive

#IfWinActive Cyberpunk ; 赛博朋克中，快捷键的快捷键
	^LButton::AutoLoopL() ; 自动开关无限循环连点器
	Control::Control
	Capslock::Send {w down}{w up}{w down}{w up}
	`::Send {0 down}{0 up}{0 down}{0 up}
	
	;Capslock & w::Send {w down}{w up}{w down}{w up}
	;Capslock & s::Send {s down}{s up}{s down}{s up}
	;Capslock & a::Send {a down}{a up}{a down}{a up}
	;Capslock & d::Send {d down}{d up}{d down}{d up}
#IfWinActive


; ■■■ 浏览器相关的 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


; #If WinActive("临时.xlsx") ; 表格页面中的快捷操作
; 	RCtrl::ToggleChangeMark()
; 	#if WinActive("临时.xlsx") && (change_mark = true)
; 		`;::change_cell_content_to____nothing()
; 		,::change_cell_content_to____comma()
; 		'::change_cell_content_to____quotation()
; 	#if
; #If

#IfWinActive, ahk_exe vivaldi.exe
	Tab::Send ^l
	`::Send {F2}
#If


; ■■■ 执行外部脚本 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


	; 都是系统级的东西，就放到系统分类里了


; ■■■ 测试相关区域 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


	!`::ExecuteTest() ; 执行测试代码