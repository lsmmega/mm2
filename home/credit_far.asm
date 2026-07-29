_home_ending_oam:
	farjsr _ending_oam_jmp

_credit_far_return:
	bankswitch $0D
	RTS

_home_staff_roll:
	farjsr _staff_roll_jmp
	JMP _credit_far_return

_home_credit_init:
	farjsr _credit_init_jmp
	JMP _credit_far_return

_home_credit:
	farjsr _credit_jmp
	JMP _credit_far_return
