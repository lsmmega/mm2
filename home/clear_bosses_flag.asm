_clear_bosses_flag:
	LDA #$00
	STA aregular_boss_defeated_flag
	STA aboss_defeated_timer_1
	STA aboss_defeated_timer_2
	STA aboss_invincibility_time
	STA z:ztime_stopper_flag
	LDA #$FE
	STA z:zboss_ai_pointer
	RTS
