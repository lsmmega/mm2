_difficulty_calc_bosses:
	LDA z:zdifficulty
	BNE @difficult
	ASL z:z00

@difficult:
	RTS
