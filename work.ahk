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

FormatAngleLine() ; 用在PowerDesigner中，将某一关系的线段改为自由折角线（自由拉伸，新建实体不会导致重新排版）
{
	Send ^t
	Sleep, 500
	Send {Tab}
	Sleep, 100
	Send {Tab}
	Sleep, 100
	Send {Tab}
	Sleep, 100
	Send {Home}
	Sleep, 100
	Send {Enter}
}

FormatRoundLine() ; 用在PowerDesigner中，将某一关系的线段改为被动圆角线（自由拉伸，但新建实体会导致重新排版）
{
	Send ^t
	Sleep, 500
	Send {Tab}
	Sleep, 100
	Send {Tab}
	Sleep, 100
	Send {Tab}
	Sleep, 100
	Send {Home}
	Sleep, 100
	Send {Down}
	Sleep, 100
	Send {Down}
	Sleep, 100
	Send {Enter}
}