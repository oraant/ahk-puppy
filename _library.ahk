; ■■■ 几种常用的声音 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
Beep1(){
	SoundBeep, 400, 300
}

Beep2(){
	SoundBeep, 600, 300
}

Beep3(){
	SoundBeep, 800, 300
}

; ■■■ 强制切换输入法 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
; 参考：https://www.autoahk.com/archives/11689
; 参考：https://www.autoahk.com/archives/11488
; 参考：http://www.autoahk.com/archives/3278

; 环境：win10+搜狗输入法，输入法状态切换用默认的shift键。
; 作者：kazhafeizhale
; 时间：2018年9月8日

shiftChinese(){
	DllCall("SendMessage", UInt, WinActive("A"), UInt, 80, UInt, 1, UInt, DllCall("LoadKeyboardLayout", Str,"00000804", UInt, 1))
}

shiftEnglish(){
	DllCall("SendMessage", UInt, WinActive("A"), UInt, 80, UInt, 1, UInt, DllCall("LoadKeyboardLayout", Str,, UInt, 1))
}

forceEnglish(msg){
	shiftEnglish()
	sleep 200
	Send % msg
}

Add(x, y) {
    return x + y
}