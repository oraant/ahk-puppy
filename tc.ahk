tc_declare_variable()
{
}


; --------------------------评分相关----------------------------------------------------------------------------------------

file_append_suffix_tag_Dot(){ ; 删除三个字符
	Send, {F2}{Right}{Backspace}{Backspace}{Backspace}{Return}
	SoundBeep, 900, 300
}
file_append_suffix_tag_0(){ ; 加上空格和退格，防止按出!!、!@之类的来
	Send, {F2}{Right}{Space}{!} {Backspace}0{Return}
	SoundBeep, 300, 300
}
file_append_suffix_tag_1(){
	Send, {F2}{Right}{Space}{!} {Backspace}1{Return}
	SoundBeep, 300, 300
}
file_append_suffix_tag_2(){
	Send, {F2}{Right}{Space}{!} {Backspace}2{Return}
	SoundBeep, 300, 300
}
file_append_suffix_tag_3(){
	Send, {F2}{Right}{Space}{!} {Backspace}3{Return}
	SoundBeep, 300, 300
}

; --------------------------标签相关----------------------------------------------------------------------------------------

file_append_suffix_tag_Mult(){ ; 删除三个字符
	Send, {F2}{Right}{Backspace}{Backspace}{Backspace}{Return}
	SoundBeep, 900, 300
}
file_append_suffix_tag_Div(){ ; 删除四个字符
	Send, {F2}{Right}{Backspace}{Backspace}{Backspace}{Backspace}{Return}
	SoundBeep, 900, 300
}
file_append_suffix_tag_4(){
	Send, {F2}{Right}{Space}{#}萝莉{Return}
	SoundBeep, 300, 300
}
file_append_suffix_tag_5(){
	Send, {F2}{Right}{Space}{#}御姐{Return}
	SoundBeep, 300, 300
}
file_append_suffix_tag_6(){
	Send, {F2}{Right}{Space}{#}高冷{Return}
	SoundBeep, 300, 300
}
file_append_suffix_tag_7(){
	Send, {F2}{Right}{Space}{#}异域{Return}
	SoundBeep, 300, 300
}
file_append_suffix_tag_8(){
	Send, {F2}{Right}{Space}{#}异形{Return}
	SoundBeep, 300, 300
}
file_append_suffix_tag_9(){
	Send, {F2}{Right}{Space}{#}还原{Return}
	SoundBeep, 300, 300
}

; --------------------------将文件名替换为剪贴板中的内容----------------------------------------------------------------------------------------

file_append_suffix_tag_Add(){ ; 增量粘贴
	Send, {F2}{Right}{Space}^v{Return}
	SoundBeep, 300, 300
}
file_append_suffix_tag_Sub(){ ; 替代粘贴
	Send, {F2}^v{Return}
	SoundBeep, 300, 300
}