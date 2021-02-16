system_declare_variable()
{
	global
	
	apps_lock := true
	rwin_lock := true
	rctl_lock := true
	ralt_lock := true
	rsft_lock := true
	
	lock_number_bind_program := false
	
	lock_xxxx_1 := false
	lock_xxxx_2 := false
	lock_xxxx_3 := false
	lock_xxxx_4 := false
	lock_xxxx_5 := false
	lock_xxxx_6 := false
	lock_xxxx_7 := false
	lock_xxxx_8 := false
	lock_xxxx_9 := false
	lock_xxxx_0 := false
	
	VarSetCapacity(APPBARDATA, A_PtrSize=4 ? 36:48) ; 用于切换桌面是否全屏时的变量
}

; ■■■ 多加了五个锁，类似数字锁/大写锁之类的 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

toggle_apps_lock(){ ; 开关滚轮切换桌面的功能
	global
	if (apps_lock = true){
		apps_lock := false
		SoundBeep, 400, 300
	}else{
		apps_lock := true
		SoundBeep, 800, 300
	}
}
toggle_rwin_lock(){ ; 开关功能键重启脚本之类的功能
	global
	if (rwin_lock = true){
		rwin_lock := false
		SoundBeep, 400, 300
	}else{
		rwin_lock := true
		SoundBeep, 800, 300
	}
}
toggle_rctl_lock(){ ; 开关滚轮切换桌面的功能
	global
	if (rctl_lock = true){
		rctl_lock := false
		SoundBeep, 400, 300
	}else{
		rctl_lock := true
		SoundBeep, 800, 300
	}
}
toggle_ralt_lock(){ ; 开关滚轮切换桌面的功能
	global
	if (ralt_lock = true){
		ralt_lock := false
		SoundBeep, 400, 300
	}else{
		ralt_lock := true
		SoundBeep, 800, 300
	}
}
toggle_rsft_lock(){ ; 开关滚轮切换桌面的功能
	global
	if (rsft_lock = true){
		rsft_lock := false
		SoundBeep, 400, 300
	}else{
		rsft_lock := true
		SoundBeep, 800, 300
	}
}

; ■■■ 其他的自定义锁 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

toggle_lock_number_bind_program(){ ; 开关数字键打开程序的功能
	global
	if (lock_number_bind_program = true){
		lock_number_bind_program := false
		SoundBeep, 400, 300
	}else{
		lock_number_bind_program := true
		SoundBeep, 800, 300
	}
}

; ■■■ 备用的开关 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

toggle_lock_xxxx_1(){ ; 开关数字键打开程序的功能
	global
	if (lock_xxxx_1 = true){
		lock_xxxx_1 := false
		SoundBeep, 400, 300
	}else{
		lock_xxxx_1 := true
		SoundBeep, 800, 300
	}
}
toggle_lock_xxxx_2(){ ; 开关数字键打开程序的功能
	global
	if (lock_xxxx_2 = true){
		lock_xxxx_2 := false
		SoundBeep, 400, 300
	}else{
		lock_xxxx_2 := true
		SoundBeep, 800, 300
	}
}
toggle_lock_xxxx_3(){ ; 开关数字键打开程序的功能
	global
	if (lock_xxxx_3 = true){
		lock_xxxx_3 := false
		SoundBeep, 400, 300
	}else{
		lock_xxxx_3 := true
		SoundBeep, 800, 300
	}
}

; ■■■ 具体的系统级功能 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

ToggleTaskBar(){ ; 切换是否自动隐藏任务栏
	global
	NumPut(DllCall("Shell32\SHAppBarMessage", "UInt", 4 ; ABM_GETSTATE
										   , "Ptr", &APPBARDATA
										   , "Int")
	? 2:1, APPBARDATA, A_PtrSize=4 ? 32:40) ; 2 - ABS_ALWAYSONTOP, 1 - ABS_AUTOHIDE
	, DllCall("Shell32\SHAppBarMessage", "UInt", 10 ; ABM_SETSTATE
                                    , "Ptr", &APPBARDATA)
	KeyWait, % A_ThisHotkey
	Return
}

JumpScare(){ ; 突然调大声音吓你一跳
	SoundGet, master_volume
	SoundSet, 10
	SoundBeep, 800, 200
	Sleep, 300
	SoundSet, %master_volume%
}