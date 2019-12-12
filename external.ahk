external_declare_variable()
{
}

SetProxy(){ ; 改变系统代理
	RunWait, set_system_proxy.py, D:\Program Portable\AHK Programme\python\, hide
	SoundBeep, 800, 300
}

CloseProxy(){ ; 关闭系统代理
	RunWait, close_system_proxy.py, D:\Program Portable\AHK Programme\python\, hide
	SoundBeep, 400, 300
}

ToggleProxy(){ ; 开关无限循环连点器
	global
	Close := !Close
	
	If Close
		CloseProxy()
	Else
		SetProxy()
	Return
}