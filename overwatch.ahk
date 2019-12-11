; 注意！添加完新方法后，更改最大值
; 之所以这么麻烦，是因为AHK的很多文档都是在扯蛋，官网关于对象和数组的例子都是不能用的。
; 甚至A:=[1,2,3]之类的数组，用A[0]去读都读不到数！！
; "onew"能识别成number，你说气不气人。
; 有的时候对象赋值都特么得读两遍才行。读出来还是不完整的，真特么神了。

overwatch_declare_variable()
{
	global 
	game_func_max := 6 ; 功能编号的最大值
	game_func_cur := 0 ; 当前快捷键想要执行的功能编号
}

PrintCurrent(){ ; 打印当前的内容
	global
	ToolTip, % "【" operation[1] "】 " operation[2] " , " operation[3] "ms", 0, 0
	SoundBeep, 300, 300
}

; ------------------------------------------------------------------------------------------------------------------
; ------------------ 循环列表与单独指定
; ------------------------------------------------------------------------------------------------------------------

ChangeGameFunc(){ ; 切换功能编号，方便他人直接调用
	global
	
	if (game_func_cur < game_func_max) 
		game_func_cur := game_func_cur + 1
	else 
		game_func_cur := 1
	
	Switch game_func_cur
	{
		Case 1:
			operation := ["通用英雄 Q", "持续大招", 100, 200, "q"]
		Case 2:
			operation := ["通用英雄 S", "持续移动", 100, 200, "{LShift}"]
		Case 3:
			operation := ["通用英雄 E", "持续技能", 100, 200, "e"]
		Case 4:
			operation := ["莫伊拉", "无限球", 100, 100, "e", 100, "{RButton}"]
		Case 5:
			operation := ["毛妹", "盾+大招", 100, 100, "{LShift}", 100, "q"]
		Case 6:
			operation := ["安娜", "睡针药瓶", 100, 100, "{LShift}", 200, "e"]
		Default:
			operation := ["英雄名称", "效果描述", 重复间隔, 按键间隔, "按键"]
	}
	
	PrintCurrent()
}


SimpleLoopQ(){
	global
	operation := ["通用", "Q", 100, 100, "q"]
	PrintCurrent()
}
SimpleLoopE(){
	global
	operation := ["通用", "E", 100, 100, "e"]
	PrintCurrent()
}
SimpleLoopS(){
	global
	operation := ["通用", "Shift", 100, 100, "{LShift}"]
	PrintCurrent()
}
SimpleLoopV(){
	global
	operation := ["通用", "XButton1", 100, 100, "{XButton1}"]
	PrintCurrent()
}
MaoMei(){
	global
	operation := ["毛妹", "盾+大招", 100, 100, "{LShift}", 100, "q"]
	PrintCurrent()
}
AnNa(){
	global
	operation := ["安娜", "睡针药瓶", 100, 100, "{LShift}", 300, "e"]
	PrintCurrent()
}
MoYi(){
	global
	operation := ["莫伊拉", "无限球", 100, 100, "e", 100, "{RButton}"]
	PrintCurrent()
}


; ------------------------------------------------------------------------------------------------------------------
; ------------------ 实际执行与执行开关
; ------------------------------------------------------------------------------------------------------------------

ExecuteOperation(){ ; 执行一次操作命令，把数组里的按键按照间隔全部按一遍 ; 这个傻逼语言，把我逼到这个份上，也是绝了
	global
	if(operation.length() > 4)
	{
		delay := operation[4]
		char := operation[5]
		
		Sleep, %delay%
		Send %char%
	}
	if(operation.length() > 6)
	{
		delay := operation[6]
		char := operation[7]
		
		Sleep, %delay%
		Send %char%
	}
	if(operation.length() > 8)
	{
		delay := operation[8]
		char := operation[9]
		
		Sleep, %delay%
		Send %char%
	}
	if(operation.length() > 10)
	{
		delay := operation[10]
		char := operation[11]
		
		Sleep, %delay%
		Send %char%
	}
}

ToggleTimer(){ ; 开关无限循环连点器
	global
	gap := operation[3]
	Toggle := !Toggle
	ToolTip
	
	If Toggle
		SetTimer , TheLoop2 , %gap%
	Else
		SetTimer , TheLoop2 , Off
	Return

	TheLoop2:
		ExecuteOperation()
	Return
}