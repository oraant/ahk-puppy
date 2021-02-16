; ■■■ 恶心的地方 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

变量必须在::之前定义，否则无效
调用某类的方法，必须在::中调用，在方法中调用就无效了

; ■■■ 主要存放一些乱七八糟的旧代码，虽然不用了，但写新代码时依然有很高的参考价值 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


; --------------------------用不同的方法切换滚屏开关----------------------------------------------------------------------------------------

ToggleSwitchDesktopWithDoubleClick(){
	global
	local intInterval := 500 ; 若两次连击在这个时间间隔中，则视为双击。
	if (A_PriorHotkey <> "~MButton" or A_TimeSincePriorHotkey > intInterval){
		KeyWait, MButton
		return
	}
	SoundBeep, 600, 300
	switch_desktop := !switch_desktop
}

ToggleSwitchDesktopWithLongClick(){
	global
	KeyWait,MButton,T0.4
		if (ErrorLevel){
			SoundBeep, 600, 300
			switch_desktop := !switch_desktop
		}
}

; --------------------------鼠标手势----------------------------------------------------------------------------------------

MouseGesture(){    
	minGap  = 30 ; 设定的识别阈值，大于此阈值，说明在某方向上有移动
	mousegetpos xpos1,ypos1
	Keywait, Control, U
	mousegetpos xpos2, ypos2
	;if (abs(xpos1-xpos2) < minGap and abs(ypos1-ypos2)<minGap) ; nothing 没有运动，直接输出rbutton 
	;	send, {rbutton}
	;else if (xpos1-xpos2 > minGap and abs(ypos1-ypos2)<minGap) ; left  delete(对于文件或选定的字符有效)
	;	send, {delete}
	;else if (xpos2-xpos1 > minGap and abs(ypos1-ypos2)<minGap) ; right ctrl+z 恢复  
	;	send, ^z
	;else if (abs(xpos1-xpos2)< minGap and (ypos1-ypos2)>minGap) ; up 最大化窗口， win+up
	;	send, #{up}
	;else if (abs(xpos1-xpos2)< minGap and (ypos2-ypos1)>minGap) ; down 显示桌面， win+d
	;	send, #d
	;else if (ypos2-ypos1 > minGap and (xpos1-xpos2) > minGap) ; down and left , ctrl+shift+T
	;	send, ^+t
	;else if (ypos2-ypos1 > minGap and (xpos2-xpos1) > minGap) ; down and right, ctrl+w
	;	send, ^w
	;else if (ypos1-ypos2 > minGap and (xpos2-xpos1) > minGap) ; up and right alt+f4
	;	send, !{F4}
	;else if (ypos1-ypos2 > minGap and (xpos1-xpos2) > minGap) ; up and left nothing
	;	send, {rbutton}
	;else  
	;	send, {rbutton}
}

; --- 窗口置顶与鼠标穿透 -----------------------------------------------

;#j::
;	WinSet,AlwaysOnTop,On,A
;	WinSet, Transparent, 249,A
;	WinSet, ExStyle, +0x20,A
;return