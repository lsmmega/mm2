.INCLUDE "constants/charmap/password_game_over.asm"

get_weapon_abbr_strings:
	.BYTE "H" ;atomic fire
	.BYTE "A" ;air shooter
	.BYTE "W" ;leaf shield
	.BYTE "B" ;bubble lead
	.BYTE "Q" ;quick boomerang
	.BYTE "F" ;time stopper
	.BYTE "M" ;metal blade
	.BYTE "C" ;crash bomber

get_weapon_strings:
	rightscreencoord 11, 12
	.BYTE "@@ATOMIC@FIRE@"
	
	rightscreencoord 11, 12
	.BYTE "@@AIR@SHOOTER@"
	
	rightscreencoord 11, 12
	.BYTE "@@LEAF@SHIELD@"
	
	rightscreencoord 11, 12
	.BYTE "@@BUBBLE-LEAD@"
	
	rightscreencoord 11, 12
	.BYTE "@@QUICK@@@@@@@"
	
	rightscreencoord 11, 12
	.BYTE "@@TIME-STOPPER"
	
	rightscreencoord 11, 12
	.BYTE "@@METAL-BLADE@"
	
	rightscreencoord 11, 12
	.BYTE "@@CRASH@BOMBER"
	
	rightscreencoord 11, 8
	.BYTE "@@GET@EQUIPPED"
	
	rightscreencoord 11, 10
	.BYTE "@@WITH@@@@@@@@"
	
	rightscreencoord 11, 9
	.BYTE "@MESSAGE@FROM@"
	
	rightscreencoord 11, 11
	.BYTE "@DR.LIGHT.@@@@"
	
	rightscreencoord 11, 9
	.BYTE "COMPLETED!@@@@"
	
	rightscreencoord 11, 11
	.BYTE "GET@YOUR@@@@@@"
	
	rightscreencoord 11, 13
	.BYTE "WEAPONS@READY!"
	
	rightscreencoord 11, 7
	.BYTE "ITEM-@@@@@@@@@"
	
	rightscreencoord 11, 12
	.BYTE "@@ITEM-1@@@@@@"
	
	rightscreencoord 11, 12
	.BYTE "@@ITEM-2@@@@@@"
	
	rightscreencoord 11, 12
	.BYTE "@@ITEM-3@@@@@@"
	
	rightscreencoord 11, 14
	.BYTE "@@-BOOMERANG@@"
