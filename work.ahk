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