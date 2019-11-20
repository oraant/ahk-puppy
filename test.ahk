test_declare_variable()
{
}

F2::
bToggle := !bToggle
If bToggle
    SetTimer , TheLoop , 200 ; This is 200 ms
Else
    SetTimer , TheLoop , Off
Return

TheLoop:
	SoundBeep, game_func_cur*100, 300
Return