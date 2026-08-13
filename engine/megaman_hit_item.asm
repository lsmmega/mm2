_megaman_hit_item:
	SEC
	LDA z:zitem
	SBC #objects_large_life_capsule
	TAY
	LDA #$00
	STA z:zitem
	LDA @lo_jumptable, Y
	STA z:z08
	LDA @hi_jumptable, Y
	STA z:z09
	JMP (z08)

@large_life_capsule:
	LDA #$0A
	BNE @life_capsule

@small_life_capsule:
	LDA #$02

@life_capsule:
	STA z:zFD
	LDA aobject_hp
	CMP #$1C
	BCS @skip_1
	LDA #$07
	STA z:ztime_stopper_flag

@loop_1:
	LDX z:zcurrent_weapon
	LDA aobject_hp
	CMP #$1C
	BCS @done_1
	LDA z:znmi_frame
	AND #%00000111
	BNE @8_frames_1
	DEC z:zFD
	BMI @done_1
	INC aobject_hp
	track_queue track_refill

@8_frames_1:
	JSR _sprites
	JSR _nmi_wait_0e
	JMP @loop_1

@done_1:
	JMP @done_common

@skip_1:
	RTS

@large_weapon_capsule:
	LDA #$0A
	BNE @weapon_capsule

@small_weapon_capsule:
	LDA #$02

@weapon_capsule:
	STA z:zFD
	LDA z:zcurrent_weapon
	BEQ @skip_2
	LDX z:zcurrent_weapon
	LDA z:zweapon_energy - 1, X
	CMP #$1C
	BEQ @skip_2
	LDA #$07
	STA z:ztime_stopper_flag

@loop_2:
	LDX z:zcurrent_weapon
	LDA z:zweapon_energy - 1, X
	CMP #$1C
	BCS @done_2
	LDA z:znmi_frame
	AND #%00000111
	BNE @8_frames_2
	DEC z:zFD
	BMI @done_2
	INC z:zweapon_energy - 1, X
	track_queue track_refill

@8_frames_2:
	JSR _sprites
	JSR _nmi_wait_0e
	JMP @loop_2

@done_common:
@done_2:
	LDA #$00
	STA z:zFD
	STA z:ztime_stopper_flag
	LDA #$03
	STA z:zmegaman_status
	JSR _check_megaman_hit_status

@skip_2:
	RTS

@e_tank:
	LDA z:ze_tank
	CMP #$04
	BCS @max_1
	INC z:ze_tank

@max_1:
	track_queue track_1up
	RTS

@1up:
	LDA z:z1up
	CMP #$63
	BCS @max_2
	INC z:z1up
	track_queue track_1up

@max_2:
	RTS

@wily5_teleport_to_boss:
	JSR @teleporting
	LDA #$00
	STA z:zFD
	LDX z:zcurrent_refighting_boss
	LDA @teleport_to_boss_tileset_table - 1, X
	STA z:zFE
	DEX
	STX z:zcurrent_stage
	JSR @teleport_tileset
	LDA #$0C
	STA z:zcurrent_stage
	LDX #$05
	LDA z:zcurrent_refighting_boss
	CMP #$04
	BNE @not_bubble
	LDX #$02

@not_bubble:
	JSR @special_palette
	INC z:zscreen_id
	INC aobject_screen
	INC z:zscroll_index
	INC z:zstart_scrolling_mapset
	INC z:zend_scrolling_mapset
	LDA #$20
	STA aobject_xcoord
	LDA #$B4
	STA aobject_ycoord
	JSR @landing
	track_queue track_boss_fighting
	LDA z:zcurrent_refighting_boss
	STA z:zcurrent_boss
	DEC z:zcurrent_boss
	JSR _run_bosses_init_common
	RTS

;teleport to boss tileset table, see `stage_name_sprites_set.asm`
@teleport_to_boss_tileset_table:
	.BYTE $06 ;heatman
	.BYTE $04 ;airman
	.BYTE $0D ;woodman
	.BYTE $07 ;bubbleman
	.BYTE $11 ;quickman
	.BYTE $09 ;flashman
	.BYTE $04 ;metalman
	.BYTE $10 ;crashman

@teleporting:
	track_queue track_teleport_in
	LDA #$0B
	STA z:zmegaman_status
	JSR _check_megaman_hit_status
	JSR _clean_object_in_teleporting

@loop_3:
	LDA aobject_frameset_upper_timer
	CMP #$03
	BEQ @hidden
	JSR _sprites
	JSR _nmi_wait_0e
	JMP @loop_3

@hidden:
	LDA #$00
	STA aobject_flag
	JSR _sprites
	RTS

@landing:
	LDA #objects_right | objects_exist
	STA aobject_flag
	LDA #$00
	STA z:ztimer
	STA z:zmegaman_status
	JSR _check_megaman_hit_status
	RTS

@teleport_tileset:
	JSR _scrolling_object_tiles
	JSR _nmi_wait_0e
	LDA z:zFD
	CMP #$60
	BNE @teleport_tileset
	RTS

@wily5_teleport_return:
	JSR @teleporting
	LDX z:zcurrent_boss
	LDA z:zrefighting_flag
	ORA boss_clear_flag, X
	STA z:zrefighting_flag
	CMP #$FF
	BNE @not_all_clear
	LDA #$00
	STA z:zFD
	LDA #$14
	STA z:zFE
	JSR @teleport_tileset
	LDA #$28
	JSR _draw_screen_instant
	LDA #$28
	STA z:zscreen_id
	STA aobject_screen
	STA z:zstart_scrolling_mapset
	STA z:zend_scrolling_mapset
	BNE @continue

@not_all_clear:
	DEC z:zscreen_id
	DEC aobject_screen
	DEC z:zscroll_index
	DEC z:zstart_scrolling_mapset
	DEC z:zend_scrolling_mapset

@continue:
	LDX #$08
	JSR @special_palette
	LDA #$00
	STA z:zboss_ai_pointer
	LDX z:zcurrent_boss
	CLC
	LDA teleport_ycoord_table, X
	ADC #$07
	STA aobject_ycoord
	LDA teleport_xcoord_table, X
	STA aobject_xcoord
	JSR @landing
	track_queue track_wily3_4_5
	JSR _teleport_to_coord
	RTS

@special_palette:
	LDY #$02

@loop_4:
	LDA @palette_table, X
	STA acurrent_background_palette + $09, Y
	STA abackground_palette_set + $09, Y
	STA abackground_palette_set + $19, Y
	STA abackground_palette_set + $29, Y
	STA abackground_palette_set + $39, Y
	DEX
	DEY
	BPL @loop_4
	RTS

@palette_table:
	.BYTE white_azure,      light_azure,     dark_azure
	.BYTE light_chartreuse, dark_chartreuse, dark_green
	.BYTE light_chartreuse, dark_chartreuse, white_azure

@wily5_teleport_to_wily_machine_2:
	JSR @teleporting
	LDA #$29
	JSR _draw_screen_instant
	LDA #$29
	STA z:zscreen_id
	STA aobject_screen
	STA z:zstart_scrolling_mapset
	STA z:zend_scrolling_mapset
	LDA #$00
	STA z:zFD
	LDA #$15
	STA z:zFE
	JSR @teleport_tileset
	LDA #$2A
	JSR _draw_screen_instant
	LDA #$B4
	STA aobject_ycoord
	LDA #$28
	STA aobject_xcoord
	JSR @landing
	track_queue track_boss_fighting
	JSR _run_bosses_init
	RTS

@lo_jumptable:
	.LOBYTES @large_life_capsule
	.LOBYTES @small_life_capsule
	.LOBYTES @large_weapon_capsule
	.LOBYTES @small_weapon_capsule
	.LOBYTES @e_tank
	.LOBYTES @1up
	.LOBYTES @wily5_teleport_to_boss
	.LOBYTES @wily5_teleport_return
	.LOBYTES @wily5_teleport_to_wily_machine_2

@hi_jumptable:
	.HIBYTES @large_life_capsule
	.HIBYTES @small_life_capsule
	.HIBYTES @large_weapon_capsule
	.HIBYTES @small_weapon_capsule
	.HIBYTES @e_tank
	.HIBYTES @1up
	.HIBYTES @wily5_teleport_to_boss
	.HIBYTES @wily5_teleport_return
	.HIBYTES @wily5_teleport_to_wily_machine_2
