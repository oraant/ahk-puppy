; 网址：https://www.autohotkey.com/boards/viewtopic.php?t=392
; 案例：Send("Really,{2000} any sleep^v !fcould{3000}{Enter} go+{Tab 8} here {3.5s}and it {500}should work.",1)
; 语法：Syntax is as simple as any other key.
;       Parameters:
;       STRING = Any string-style Send you wish to preform.
;       RAW = Parameter to determine if modified keys are sent as modified, or as plain text. e.g. ^v,^c,^{Enter}
;       RAWKEYS = Parameter to determine if braced keys are sent as keys, or as plain text. e.g. {Enter},+#{Tab}


SleepSend(String, Raw:="", RawKeys:=""){
	D:="{",E="}",S:=String D,i=0,T=1,R=(Raw?1:(SubStr(S,1,5)="{RAW}"?1:0)),M="+,!,#,^",K=RawKeys
	While i:=InStr(S,D,V,i+1){
		Send,% (R?"{RAW}":"") SubStr(S,T,InStr(S,D,V,i)-T)
		B:=SubStr(S,InStr(S,D,V,i)+1,InStr(S,E,V,i)-StrLen(S)-1),A=SubStr(B,1,-1)
		If InStr(S,D,V,i+1)
			If(B&1=""){
				If(A&1!="")
					Sleep,% A*1000
				else{
					L:=(!R?(InStr(S,E,V,i)-StrLen(B)-2>4?4:InStr(S,E,V,i)-StrLen(B)-2):0)
					Loop,%L%{
					C:=SubStr(SubStr(S,InStr(S,D,V,i)-L,L),A_Index,1)
					If C in %M%
					{	C:=SubStr(S,InStr(S,D,V,i)-(L+1-A_Index),L+1-A_Index)
						break
					}else C:=""
				}Send,% (K?"{RAW}":"") C "{" B "}"
			}}else Sleep,%B%
		T:=InStr(S,E,V,i+1)+1
}}