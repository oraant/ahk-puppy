system_declare_variable()
{
}


; --------------------------评分相关----------------------------------------------------------------------------------------

file_append_suffix_tag_Dot(){ ; 删除三个字符
	Send, {F2}{Right}{Backspace}{Backspace}{Backspace}{Return}
	SoundBeep, 900, 300
}
file_append_suffix_tag_0(){
	Send, {F2}{Right}{Space}{!}0{Return}
	SoundBeep, 300, 300
}
file_append_suffix_tag_1(){
	Send, {F2}{Right}{Space}{!}1{Return}
	SoundBeep, 300, 300
}
file_append_suffix_tag_2(){
	Send, {F2}{Right}{Space}{!}2{Return}
	SoundBeep, 300, 300
}
file_append_suffix_tag_3(){
	Send, {F2}{Right}{Space}{!}3{Return}
	SoundBeep, 300, 300
}

; --------------------------标签相关----------------------------------------------------------------------------------------

file_append_suffix_tag_Div(){ ; 删除四个字符
	Send, {F2}{Right}{Backspace}{Backspace}{Backspace}{Backspace}{Return}
	SoundBeep, 900, 300
}
file_append_suffix_tag_7(){
	Send, {F2}{Right}{Space}{#}转性{Return}
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

; --------------------------暂时无用----------------------------------------------------------------------------------------

file_append_suffix_tag_Mult(){
	SoundBeep, 200, 600
}
file_append_suffix_tag_Add(){
	SoundBeep, 200, 600
}
file_append_suffix_tag_Sub(){
	SoundBeep, 200, 600
}

file_append_suffix_tag_4(){
	SoundBeep, 200, 600
}
file_append_suffix_tag_5(){
	SoundBeep, 200, 600
}
file_append_suffix_tag_6(){
	SoundBeep, 200, 600
}