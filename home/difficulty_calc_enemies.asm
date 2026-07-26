_difficulty_calc_enemies:
	LDA z:zdifficulty
	BNE @difficult
	ASL z:z00

@difficult:
	RTS
