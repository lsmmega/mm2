.SEGMENT "BANK0D"
.INCLUDE "constants/flags.asm"
.INCLUDE "engine/miscellaneous_jumptable.asm"
.INCLUDE "engine/stage_select.asm"
.INCLUDE "engine/flash_palettes.asm"
.INCLUDE "engine/stage_select_set.asm"
.INCLUDE "engine/stage_select_border.asm"
.INCLUDE "engine/load_boss_show_star_or_copipi.asm"
.INCLUDE "engine/load_boss_show_oam.asm"
.INCLUDE "engine/load_stage_select.asm"
.INCLUDE "engine/init_miscellaneous_xcoord.asm"
.INCLUDE "engine/init_miscellaneous_sprites.asm"
.INCLUDE "engine/init_miscellaneous_ram.asm"
.INCLUDE "data/stage_select/flash_palettes.asm"
.INCLUDE "data/boss_show/palettes.asm"
.INCLUDE "data/stage_select/stage_select_clear_ppu_address.asm"
.INCLUDE "data/stage_select/boss_oam.asm"
.INCLUDE "data/stage_select/border_oam.asm"
.INCLUDE "data/boss_show/screen.asm"
.INCLUDE "data/stage_select/check_border_boss_clear_flag_index.asm"
.INCLUDE "data/stage_select/load_boss_tiles.asm"
.INCLUDE "data/stage_select/clear_flag.asm"
.INCLUDE "data/boss_show/boss_name.asm"
.INCLUDE "data/boss_show/load_boss_show_star_or_copipi_coord.asm"
.INCLUDE "data/boss_show/oam_frameset.asm"
.INCLUDE "data/boss_show/oam_sprites_pointers.asm"
.INCLUDE "data/boss_show/oam_sprites.asm"
.INCLUDE "engine/menu.asm"
.INCLUDE "engine/wily_castle.asm"
.INCLUDE "data/wily_castle/upper_screen_set.asm"
.INCLUDE "data/wily_castle/palettes.asm"
.INCLUDE "data/wily_castle/ufo.asm"
.INCLUDE "data/wily_castle/wily_plate.asm"
.INCLUDE "data/wily_castle/ufo_oam_data.asm"
.INCLUDE "data/wily_castle/map.asm"
.INCLUDE "data/wily_castle/fade_out.asm"

_intro:
.INCBIN  "13/13_14.bin"

	track_queue track_opening

.INCBIN  "13/13_15.bin"

	track_queue track_title

.INCBIN  "13/13_16.bin"

	track_queue track_select

.INCBIN  "13/13_17.bin"

	track_queue track_teleport_out

.INCBIN  "13/13_18.bin"

	track_queue track_password

.INCBIN  "13/13_19.bin"

	track_queue track_select

.INCBIN  "13/13_20.bin"

	track_queue track_select

.INCBIN  "13/13_21.bin"

	track_queue track_1up

.INCBIN  "13/13_22_0.bin"
.INCLUDE "engine/nmi.asm"
.INCBIN  "13/13_22_1.bin"
.INCLUDE "data/password/password.asm"
.INCBIN  "13/13_23.bin"

_game_over:
.INCBIN  "13/13_24.bin"

	track_queue track_game_over

.INCBIN  "13/13_25.bin"

	track_queue track_password

.INCBIN  "13/13_26.bin"

	track_queue track_select

.INCBIN  "13/13_27.bin"

	track_queue track_1up

.INCBIN  "13/13_28.bin"
.INCLUDE "screen/title.asm"

_ending:
.INCBIN  "13/13_29.bin"

	track_queue track_ending

.INCBIN  "13/13_30.bin"

	track_queue track_title

.INCBIN  "13/13_31.bin"

	track_queue track_staff_roll

.INCBIN  "13/13_32.bin"

_get_weapon:
.INCBIN  "13/13_33.bin"

	track_queue track_get_weapon

.INCBIN  "13/13_34.bin"

	track_queue track_select

.INCBIN  "13/13_35.bin"
.INCLUDE "unused/unused_37f87.asm"
