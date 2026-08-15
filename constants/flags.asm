;got item flags
	no_item_got = 0
	got_item_1  = 1 << 0
	got_item_2  = 1 << 1
	got_item_3  = 1 << 2

;objects default flags zero set
	cant_collide_megaman        = 0
	cant_collide_megaman_bullet = 0
	objects_cant_recoiled       = 0
	objects_without_gravity     = 0
	not_objects_block           = 0
	objects_visible             = 0
	objects_left                = 0
	objects_hidden              = 0

;objects default flags set
	can_collide_megaman        = 1 << 0
	can_collide_megaman_bullet = 1 << 1
	objects_with_gravity       = 1 << 2
	objects_can_recoiled       = 1 << 3
	objects_block              = 1 << 4
	objects_invisible          = 1 << 5
	objects_right              = 1 << 6
	objects_exist              = 1 << 7

;weapon objects default flags set
	can_collide_enemies   = 1 << 0
	enemies_cant_recoiled = 1 << 1

;boss clear flags
	no_boss_clear        = 0
	boss_heatman_clear   = 1 << 0
	boss_airman_clear    = 1 << 1
	boss_woodman_clear   = 1 << 2
	boss_bubbleman_clear = 1 << 3
	boss_quickman_clear  = 1 << 4
	boss_flashman_clear  = 1 << 5
	boss_metalman_clear  = 1 << 6
	boss_crashman_clear  = 1 << 7

;boss clear in password
.ENUM
	boss_clear_yes
	boss_clear_no
.ENDENUM

;time stopper flags
	time_stopper_used  = 1 << 0
	not_megaman_frozen = 1 << 1
	megaman_frozen     = 1 << 2
