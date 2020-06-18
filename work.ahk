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