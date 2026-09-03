.INCLUDE "constants/charmap/password_game_over.asm"

password_game_over_strings:
password_game_over_strings_00:
	rightscreencoord 12, 12

	.BYTE @end - @start

@start:
	.BYTE "@START@@@"
@end:

password_game_over_strings_01:
	rightscreencoord 12, 14

	.BYTE @end - @start

@start:
	.BYTE "@PASSWORD@"
@end:

password_game_over_strings_02:
	rightscreencoord 12, 12

	.BYTE @end - @start

@start:
	.BYTE "PASSWORD@"
@end:

password_game_over_strings_03:
	rightscreencoord 12, 14

	.BYTE @end - @start

@start:
	.BYTE "ERROR@!@@@"
@end:

password_game_over_strings_04:
	rightscreencoord 11, 12

	.BYTE @end - @start

@start:
	.BYTE "CONTINUE"
@end:

password_game_over_strings_05:
	rightscreencoord 11, 14

	.BYTE @end - @start

@start:
	.BYTE "STAGE@SELECT"
@end:

password_game_over_strings_06:
	rightscreencoord 11, 16

	.BYTE @end - @start

@start:
	.BYTE "PASSWORD@"
@end:

password_game_over_strings_07:
	leftscreencoord 6, 19

	.BYTE @end - @start

@start:
	.BYTE "PRESS@A-BUTTON"
@end:

password_game_over_strings_08:
	rightscreencoord 10, 22

	.BYTE @end - @start

@start:
	.BYTE "PASSWORD@"
@end:

password_game_over_strings_09:
	rightscreencoord 10, 24

	.BYTE @end - @start

@start:
	.BYTE "STAGE@SELECT"
@end:

password_game_over_strings_index:
	.BYTE password_game_over_strings_00 - password_game_over_strings
	.BYTE password_game_over_strings_01 - password_game_over_strings
	.BYTE password_game_over_strings_02 - password_game_over_strings
	.BYTE password_game_over_strings_03 - password_game_over_strings
	.BYTE password_game_over_strings_04 - password_game_over_strings
	.BYTE password_game_over_strings_05 - password_game_over_strings
	.BYTE password_game_over_strings_06 - password_game_over_strings
	.BYTE password_game_over_strings_07 - password_game_over_strings
	.BYTE password_game_over_strings_08 - password_game_over_strings
	.BYTE password_game_over_strings_09 - password_game_over_strings
