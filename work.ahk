work_declare_variable()
{
}

SeleteColumns() ; 用在 pycharm 或 webstorm 中，折叠内容后批量选择某列
{
	Loop, 3
		Send !{LButton}
		Sleep, 500
		Send ^{Down}
		Sleep, 500
}

; ■■■ SeaTable ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

ChangeColor1() ; 自动更改单文本列为深灰色
{
	Send, {LButton}
	MouseGetPos, x, y
	Sleep, 100

	Mousemove, x+100, y+200 ; 单元格着色
	Send, {LButton}
	Sleep, 100

	Mousemove, x+100, y+50 ; 按照规则
	Send, {LButton}
	Sleep, 100

	Mousemove, x+100, y+100 ; 增加规则
	Send, {LButton}
	Sleep, 100

	Mousemove, x+15, y+55 ; 选择颜色
	Send, {LButton}
	Sleep, 100

	Mousemove, x+310, y+120 ; 确定颜色
	Send, {LButton}
	Sleep, 100

	Mousemove, x+100, y+50 ; 定义规则
	Send, {LButton}
	Sleep, 100

	Mousemove, x+260, y+90 ; 弹出条件
	Send, {LButton}
	Sleep, 100

	Mousemove, x+275, y+260 ; 设置条件
	Send, {LButton}
	Sleep, 100

	Mousemove, x+50, y-20 ; 关闭弹窗
	Send, {LButton}
}

ChangeColor2() ; 自动更改公式列为浅灰色
{
	Send, {LButton}
	MouseGetPos, x, y
	Sleep, 100

	Mousemove, x+100, y+260 ; 单元格着色（220为vlookup，260为普通公式）
	Send, {LButton}
	Sleep, 100

	Mousemove, x+100, y+50 ; 按照规则	
	Send, {LButton}
	Sleep, 100

	Mousemove, x+100, y+100 ; 增加规则
	Send, {LButton}
	Sleep, 100

	Mousemove, x+15, y+55 ; 选择颜色
	Send, {LButton}
	Sleep, 100

	Mousemove, x+310, y+90 ; 确定颜色
	Send, {LButton}
	Sleep, 100

	Mousemove, x+100, y+50 ; 定义规则
	Send, {LButton}
	Sleep, 100

	Mousemove, x+260, y+90 ; 弹出条件
	Send, {LButton}
	Sleep, 100

	Mousemove, x+275, y+160 ; 设置条件
	Send, {LButton}
	Sleep, 100

	Mousemove, x+400, y+90 ; 点输入框
	Send, {LButton}
	Sleep, 100

	Send, 999999999
	Mousemove, x+50, y-20 ; 关闭弹窗
	Send, {LButton}
	Sleep, 100
}

ChangeColor3() ; 自动更改引用列为浅灰色
{
	Send, {LButton}
	MouseGetPos, x, y
	Sleep, 100

	Mousemove, x+100, y+220 ; 单元格着色（220为vlookup，260为普通公式）
	Send, {LButton}
	Sleep, 100

	Mousemove, x+100, y+50 ; 按照规则
	Send, {LButton}
	Sleep, 100

	Mousemove, x+100, y+100 ; 增加规则
	Send, {LButton}
	Sleep, 100

	Mousemove, x+15, y+55 ; 选择颜色
	Send, {LButton}
	Sleep, 100

	Mousemove, x+310, y+90 ; 确定颜色
	Send, {LButton}
	Sleep, 100

	Mousemove, x+100, y+50 ; 定义规则
	Send, {LButton}
	Sleep, 100

	Mousemove, x+260, y+90 ; 弹出条件
	Send, {LButton}
	Sleep, 100

	Mousemove, x+275, y+160 ; 设置条件
	Send, {LButton}
	Sleep, 100

	Mousemove, x+400, y+90 ; 点输入框
	Send, {LButton}
	Sleep, 100

	Send, 999999999
	Mousemove, x+50, y-20 ; 关闭弹窗
	Send, {LButton}
	Sleep, 100
}

; ■■■ PowerDesigner ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

KeepPasteDown(key) ; 按住不松手时，向下连续粘贴
{
	While GetKeyState(key)
		Sleep, 100
		Send, {Down}
		Sleep, 100
		Send, ^v
	Return
}
KeepPasteToRight(key) ; 用于左右粘贴复制
{
	While GetKeyState(key)
		Sleep, 100
		Send, ^c
		Sleep, 100
		Send, {Right}
		Sleep, 10
		Send, {Right}
		Sleep, 50
		Send, ^v
		Sleep, 100
		Send, {Down}
		Sleep, 10
		Send, {Left}
	Return
}

GenerateReport() ; 在报告页面，直接为当前报告生成HTML
{
	Beep3()
	SleepSend("{Click, 650, 60}{1500}{Enter}{200}{Left}{200}{Enter}{2000}{Enter}",0)
	Beep1()
	return
}

TempFunc1() ; 用在PowerDesigner中，选择自增列
{
	Loop, 0 ; 改为0既可封印此循环
	{
		Click
		Sleep, 100
		Send, _
		Sleep, 100
	}
}

TempFunc2() ; 用在PowerDesigner中，将某一表中，将当前列复制到下一列，然后跳转到下一行。
{
	Loop, 0 ; 改为0既可封印此循环
	{
		; 复制并移动至目标列
		Send ^c
		Sleep, 30
		Send {Tab 2}
		Sleep, 30
		
		
		; 执行粘贴操作（含前缀、后缀）
		Send {}fk_
		Sleep, 30
		
		Send ^v
		Sleep, 30
		
		Send {}
		Sleep, 30
		
		
		; 移动回原列，并切换到下一行
		Send +{Tab 2}
		Sleep, 30
		Send {Down}
		Sleep, 30
	}
}