.INCLUDE "constants/charmap/subtitle.asm"

intro_licensed_strings:
	.BYTE @end_1 - @start_1

	leftscreencoord 7, 10

@start_1:
	.BYTE $A3, "1988 CAPCOM CO.LTD"
@end_1:

	.BYTE @end_2 - @start_2

	leftscreencoord 1, 12

@start_2:
	.BYTE "TM AND ", $A3, "1989 CAPCOM U.S.A.,INC."
@end_2:

	.BYTE @end_3 - @start_3

	leftscreencoord 11, 14

@start_3:
	.BYTE "LICENSED BY"
@end_3:

	.BYTE @end_4 - @start_4

	leftscreencoord 4, 16

@start_4:
	.BYTE "NINTENDO OF AMERICA. INC."
@end_4:
