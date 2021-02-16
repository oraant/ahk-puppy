browser_declare_variable()
{
	change_mark := true
}


; --------------------------评分相关----------------------------------------------------------------------------------------


change_cell_content_to____nothing(){ ; 将第一个字母后面的字符删掉
	Send, {F2}{Home}{Right}{Delete}
	Send, {Tab}
}

change_cell_content_to____semicolon(){ ; 将第一个字母后面的字符删掉，并填写一个分号
	Send, {F2}{Home}{Right}{Delete}{text};
	Send, {Tab}
}

change_cell_content_to____comma(){ ; 将第一个字母后面的字符删掉，并填写一个逗号
	Send, {F2}{Home}{Right}{Delete}{text},
	Send, {Tab}
}

change_cell_content_to____quotation(){ ; 将第一个字母后面的字符删掉，并填写一个引号
	Send, {F2}{Home}{Right}{Delete}{text}'
	Send, {Tab}
}

--- 切换开关 -----------------------------------------------

ToggleChangeMark(){ ; 开关功能键重启脚本之类的功能
	global
	if (change_mark = true){
		change_mark := false
		SoundBeep, 400, 300
	}else{
		change_mark := true
		SoundBeep, 800, 300
	}
}