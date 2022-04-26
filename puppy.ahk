#Include system.ahk
#Include tc.ahk
#Include work.ahk
#Include overwatch.ahk
#Include browser.ahk
#Include external.ahk
#Include test.ahk

#Include _brightness.ahk
#Include _sleepsend.ahk
#Include _library.ahk

system_declare_variable()
tc_declare_variable()
overwatch_declare_variable()
work_declare_variable()
browser_declare_variable()
external_declare_variable()
test_declare_variable()

#MaxHotkeysPerInterval 2000 ; 单位时间内能接受的快捷键数量

; ■■■ 临时脚本区域 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

; WheelDown::Send {LButton down}
; WheelUp::Send {LButton up}
!1::ChangeColor1() ;
!2::ChangeColor2() ;
!3::ChangeColor3() ;


;`::
;	;SoundBeep, 800, 300
;	Loop
;	{
;		If (Stop)
;			Break
;		if WinActive("守望先锋")
;			Send f
;			sleep 100
;	}
;	Stop := 0
;Return
;` Up::
;	;SoundBeep, 400, 300
;	Stop := 1
;Return

; ■■■ 系统全局区域 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


; ─── 基础配置 ───────────────────────────────────────────────

; 额外锁的切换
AppsKey::toggle_apps_lock()
   RWin::toggle_rwin_lock()
  RCtrl::toggle_rctl_lock()
   RAlt::toggle_ralt_lock()
RShift::toggle_rsft_lock() ; 太常用了，先关掉吧

; ─── 常用配置 ───────────────────────────────────────────────

; 切换大小写和Control键
!Control::Capslock ; 因为Win+V的粘贴功能必须用到原生ctrl键
Capslock::Control

; 不常用的功能键，改成常用功能
F3::Media_Play_Pause
F4::ToggleProxy()
F8::
	Suspend
	SoundBeep, 600, 300
	return
F7::
	Reload
	SoundBeep, 600, 300
	return

; 固定切换输入法
^Space::shiftChinese()
+Space::shiftEnglish()

; 用Win+鼠标功能键来切换屏幕
; ^XButton1::#^Left
; ^XButton2::#^Right
; #WheelUp::#^Left 
; #WheelDown::#^Right
; ─── 扩展配置 ───────────────────────────────────────────────

; 罗技Master3 横轮方向等


; 多彩M618 用鼠标额外的按键当做功能键
#if (rctl_lock)
	; 确保原按键功能不受影响
	XButton2::Send {XButton2}
	XButton1::Send {XButton1}
	
	; --------------- XButton2 一般用作用户快捷键的入口 -----------------------------------------------
	
	; 调整亮度
	XButton2 & WheelUp::BS.SetBrightness(10)
	XButton2 & WheelDown::BS.SetBrightness(-10)

	; --------------- XButton1 一般用作系统快捷键的入口 -----------------------------------------------
	
	; 调节音量
	XButton1 & WheelUp::send {Volume_Up 1}
	XButton1 & WheelDown::send {Volume_Down 1}
	
	; 开关隐藏任务栏的功能
	XButton1 & LWin::ToggleTaskBar()
	
	; 功能键扩展功能键
	XButton1 &  F1::Send {F13}
	XButton1 &  F2::Send {F14}
	XButton1 &  F3::Send {F15}
	XButton1 &  F4::Send {F16}
	XButton1 &  F5::Send {F17}
	XButton1 &  F6::Send {F18}
	XButton1 &  F7::Send {F19}
	XButton1 &  F8::Send {F20}
	XButton1 &  F9::Send {F21}
	XButton1 & F10::Send {F22}
	XButton1 & F11::Send {F23}
	XButton1 & F12::Send {F24}
	
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
;RCtrl::AppsKey
;RAlt::MButton
;F24::Home

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



	F13::
		;BS.SetBrightness(100)
		JumpScare()
		;BS.SetBrightness(-100)
		return


; ■■■ 工作相关区域 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


#IfWinActive, ahk_class SunAwtFrame
	^!C::SeleteColumns() ; 用在 pycharm 或 webstorm 中，折叠内容后批量选择某列
	:R:ll::l = [1,2,3,4,5]
	:R:lll::l = [1,2,3,4,5,'a','b']
	:R:llll::l = [1,2,3,4,5,'a','b',['inner1','inner2']]
	:R:dd::d = {'a':1, 'b':2, 'c':3}
	:R:ddd::d = {'a':1, 'b':2, 'c':3, {'d1':'ddd1111', 'd2':'ddd222'}}
	:R:tm::from datetime import datetime as dt, time as t, timedelta as td
	:R:ts::from time import sleep
	:R:td::forceEnglish(" {#} todo: ")
	:R:fm::forceEnglish(" {#} fixme: ")
	:R:tt::forceEnglish(" {#} test: ")
	:R:nt::forceEnglish(" {#} note: ")
	:R:dl::forceEnglish(" {#} delete: ")
#IfWinActive

#If WinActive("ahk_exe PdShell16.exe") and (apps_lock = true)
	^r::GenerateReport()
	Numpad8::SleepSend("{Down}{50}{Up}{50}^c",0) ; 复制本格内容
	Numpad2::SleepSend("{Down}{50}^v",0) ; 向下粘贴刚才复制的内容
	Numpad5::KeepPasteDown("Numpad5") ; 按住不松手时，向下连续粘贴
	Numpad6::KeepPasteToRight("Numpad6") ; 按住不松手时，向下连续粘贴
#If

#IfWinActive, ahk_exe EXCEL.exe
	RButton::Send {RButton}
	RButton & e::+F2 ; 编辑批注
#IfWinActive

; ■■■ 游戏相关区域 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


#IfWinActive, ahk_exe Overwatch.exe
	;`::Send 哈瓦那练枪升级版（直接搜索111）
	
	;^LButton::SimpleLoopL()
	;^RButton::SimpleLoopR()
	;^MButton::SimpleLoopM()
	
	;^Q::SimpleLoopQ()
	;^E::SimpleLoopE()
	;^V::SimpleLoopV()
	;^X::SimpleLoopX()
	;^LShift::SimpleLoopS()
	
	;^1::MaoMei()
	;^2::MoYi()
	;^3::AnNa()
	
	;^Tab::ChangeGameFunc() ; 选择要循环执行的操作
	;XButton2::ToggleTimer() ; 开关无限循环连点器
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

#IfWinActive ahk_exe Valheim.exe ; 英灵神殿中，快捷键的快捷键
	!c::SleepSend("{F5}{200}/coords; /god; /farinteract; /infstam; imacheater; debugmode;{Enter}{200}{Esc}",1)
	!d::SleepSend("{F5}{200}/tod 0.5{100}{Enter}{100}{Esc}",1)
	!a::SleepSend("{F5}{200}/tod -1{100}{Enter}{100}{Esc}",1)
	!r::SleepSend("{F5}{200}/repair; /removedrops;{Enter}{200}{Esc}",1)
	!1::SleepSend("{F5}{200}{Up}{200}{Enter}{200}{Esc}",1)
	!MButton::ToggleTimer() ; 开关无限循环连点器
	!LButton::SimpleLoopL()
	!RButton::SimpleLoopR()
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

#If WinActive("Conan") ; 流放者柯南
	;LButton::
	;	Loop
	;	{
	;		If (Stop)
	;			Break
	;		Send {lbutton}
	;		sleep 200
	;	}
	;	Stop := 0
	;	Return
	;RButton::
	;	Stop := 1
	;	Return
	;  :R:le::DataCmd EE_AdminPanel
	;  k::SleepSend("{/}{200}fly{Enter}{200}",1)

	/::`
	`::Send +{Del} ; 快速删除
	Del::Send {Space}
#If

#if WinActive("Conan") and (rctl_lock)
	WheelUp::Send {LButton}
#if



#If WinActive("生火间") or WinActive("喧嚣小镇") or WinActive("漫漫尘途") or WinActive("荒芜世界") ; 小黑屋自动点击
	RButton::
		;SoundBeep, 800, 300
		Loop
		{
			If (Stop)
				Break
			if WinActive("生火间") or WinActive("喧嚣小镇") or WinActive("漫漫尘途") or WinActive("荒芜世界")
				Send {lbutton}
				sleep 100
		}
		Stop := 0
	Return
	RButton Up::
		;SoundBeep, 400, 300
		Stop := 1
	Return
#If


#If WinActive("鲁大师游戏库") ; 鲁大师自动老板键
	Esc::!x
#If


#If WinActive("GamezBD") ; 鲁大师自动老板键
	XButton1::f
	XButton2::q
	MButton::e
	v::t
	q::c
	f::r
	c::v
#If


#If WinActive("地下城与勇士") ; 鲁大师自动老板键
	;o::Send {Down} {Down} {Down} {Down} i
	;~s & o::SleepSend("{s down}{s up}{s down}{s up}{i down}{i up}",0)
	;~w & o::SleepSend("{w down}{w up}{w down}{w up}{i down}{i up}",0)
#If

; ■■■ 浏览器相关的 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


; #If WinActive("临时.xlsx") ; 表格页面中的快捷操作
; 	RCtrl::ToggleChangeMark()
; 	#if WinActive("临时.xlsx") && (change_mark = true)
; 		`;::change_cell_content_to____nothing()
; 		,::change_cell_content_to____comma()
; 		'::change_cell_content_to____quotation()
; 	#if
; #If

;#If WinActive("ahk_exe vivaldi.exe") and (A_Cursor != "IBeam") ; 流放者柯南
;	Tab::Send ^l
;	`::Send {F2}
;#If

; ■■■ 执行外部脚本 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


	; 都是系统级的东西，就放到系统分类里了


; ■■■ 测试相关区域 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


	!`::ExecuteTest() ; 执行测试代码