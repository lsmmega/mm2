_sprites:
	bankswitch $0A
	JSR _init_sprites
	LDA #$00
	STA z:z06
	STA z:z0D
	STA z:z0C
	LDA z:ztime_stopper_flag
	BEQ @time_stopper_flag_not_set
	JMP _time_stopper_flag_set

@time_stopper_flag_not_set:
	LDA z:znmi_frame
	AND #%00000001
	BNE @invert
	LDA #$FF
	STA z:z0C
	LDA #$00
	STA z:zsprites_pointer

@loop_1:
	JSR _draw_megaman_with_animation
	BCS @max_1
	INC z:zsprites_pointer
	LDA z:zsprites_pointer
	CMP #$10
	BNE @loop_1

@loop_2:
	JSR _draw_enemies_with_animation
	BCS @max_1
	INC z:zsprites_pointer
	LDA z:zsprites_pointer
	CMP #$20
	BNE @loop_2
	LDA z:z06
	STA z:z0C
	JSR _draw_bar

@max_1:
	JMP _draw_sprites_done

@invert:
	JSR _draw_bar
	LDA z:z06
	STA z:z0D
	LDA #$1F
	STA z:zsprites_pointer

@loop_3:
	JSR _draw_enemies_with_animation
	BCS @max_2
	DEC z:zsprites_pointer
	LDA z:zsprites_pointer
	CMP #$0F
	BNE @loop_3

@loop_4:
	JSR _draw_megaman_with_animation
	BCS @max_2
	DEC z:zsprites_pointer
	BPL @loop_4
	LDA z:z06
	STA z:z0C

@max_2:
_draw_sprites_done:
	LDA z:zcurrent_stage
	CMP #stage_airman
	BNE @not_airman
	LDX z:z0D

@loop_5:
	CPX z:z0C
	BEQ @done
	LDA aoam_attributes, X
	ORA #oam_priority_background
	STA aoam_attributes, X
	INX
	INX
	INX
	INX
	BNE @loop_5

@done:
@not_airman:
	bankswitch $0E
	RTS

_time_stopper_flag_set:
	LDA z:znmi_frame
	AND #%00000001
	BNE @invert
	LDA #$FF
	STA z:z0C
	LDA #$00
	STA z:zsprites_pointer
	LDA z:ztime_stopper_flag
	AND #megaman_frozen
	BEQ @megaman_frozen_not_set_1
	JSR _draw_megaman_without_animation
	JMP @done_1

@megaman_frozen_not_set_1:
	JSR _draw_megaman_with_animation

@done_1:
	INC z:zsprites_pointer

@loop_1:
	LDA z:ztime_stopper_flag
	AND #not_megaman_frozen
	BNE @not_megaman_frozen_set_1
	JSR _draw_megaman_with_animation
	JMP @done_2

@not_megaman_frozen_set_1:
	JSR _draw_megaman_without_animation

@done_2:
	BCS @max_1
	INC z:zsprites_pointer
	LDA z:zsprites_pointer
	CMP #$10
	BNE @loop_1

@loop_2:
	JSR _draw_enemies_without_animation
	BCS @max_1
	INC z:zsprites_pointer
	LDA z:zsprites_pointer
	CMP #$20
	BNE @loop_2
	LDA z:z06
	STA z:z0C
	JSR _draw_bar

@max_1:
	JMP _draw_sprites_done

@invert:
	JSR _draw_bar
	LDA z:z06
	STA z:z0D
	LDA #$1F
	STA z:zsprites_pointer

@loop_3:
	JSR _draw_enemies_without_animation
	BCS @max_2
	DEC z:zsprites_pointer
	LDA z:zsprites_pointer
	CMP #$0F
	BNE @loop_3

@loop_4:
	LDA z:ztime_stopper_flag
	AND #not_megaman_frozen
	BNE @not_megaman_frozen_set_2
	JSR _draw_megaman_with_animation
	JMP @done_3

@not_megaman_frozen_set_2:
	JSR _draw_megaman_without_animation

@done_3:
	BCS @max_2
	DEC z:zsprites_pointer
	BNE @loop_4
	LDA z:ztime_stopper_flag
	AND #megaman_frozen
	BEQ @megaman_frozen_not_set_2
	JSR _draw_megaman_without_animation
	JMP @done_4

@megaman_frozen_not_set_2:
	JSR _draw_megaman_with_animation

@done_4:
	LDA z:z06
	STA z:z0C

@max_2:
	JMP _draw_sprites_done

_draw_megaman_without_animation:
	LDX z:zsprites_pointer
	LDA aobject_attributes, X
	BMI @exist
	CLC
	RTS

@exist:
	LDY aobject_pointer, X
	LDA oam_megaman_frameset_pointers_lo, Y
	STA z:z08
	LDA oam_megaman_frameset_pointers_hi, Y
	STA z:z09
	LDA aobject_frameset_upper_timer, X
	CLC
	ADC #2
	TAY
	LDA (z08), Y
	BEQ @not_object
	JMP _is_megaman_object

@not_object:
	LSR aobject_attributes, X
	RTS

_draw_enemies_without_animation:
	LDX z:zsprites_pointer
	LDA aobject_attributes, X
	BMI @exist
	CLC
	RTS

@exist:
	LDY aobject_pointer, X
	LDA oam_enemies_frameset_pointers_lo, Y
	STA z:z08
	LDA oam_enemies_frameset_pointers_hi, Y
	STA z:z09
	LDA aobject_frameset_upper_timer, X
	CLC
	ADC #2
	TAY
	LDA (z08), Y
	BEQ @not_object
	JMP _is_enemies_object

@not_object:
	LSR aobject_attributes, X
	RTS

_draw_megaman_with_animation:
	LDX z:zsprites_pointer
	LDA aobject_attributes, X
	BMI @exist
	CLC
	RTS

@exist:
	LDY aobject_pointer, X
	LDA oam_megaman_frameset_pointers_lo, Y
	STA z:z08
	LDA oam_megaman_frameset_pointers_hi, Y
	STA z:z09
	LDA aobject_frameset_upper_timer, X
	PHA
	INC aobject_frameset_lower_timer, X
	LDY #$01
	LDA (z08), Y
	CMP aobject_frameset_lower_timer, X
	BCS @max
	LDA #0
	STA aobject_frameset_lower_timer, X
	INC aobject_frameset_upper_timer, X
	DEY
	LDA (z08), Y
	CMP aobject_frameset_upper_timer, X
	BCS @max
	LDA #0
	STA aobject_frameset_upper_timer, X

@max:
	PLA
	CLC
	ADC #2
	TAY
	LDA (z08), Y
	BNE @is_object
	LSR aobject_attributes, X
	RTS

@is_object:
_is_megaman_object:
	TAY
	CPX #1
	BCS @not_megaman_object
	LDA z:zmegaman_invincibility_time
	BEQ @skip
	DEC z:zmegaman_invincibility_time
	LDA z:znmi_frame
	AND #%00000010
	BEQ @skip

@is_out_of_screen:
	JMP _skip_draw

@skip:
	LDA z:zout_of_screen
	BNE @is_out_of_screen
	BEQ @not_out_of_screen

@not_megaman_object:
	BNE @not_boss
	LDA aboss_invincibility_time
	BEQ @no_boss_invincibility_time
	LDA z:znmi_frame
	AND #%00000010
	BNE @skip_draw_invincibility_object
	LDY #$18

@skip_draw_invincibility_object:
	DEC aboss_invincibility_time

@not_out_of_screen:
@not_boss:
@no_boss_invincibility_time:
	LDA oam_sprites_lo_pointers, Y
	STA z:z08
	LDA oam_sprites_hi_pointers, Y
	STA z:z09
	LDA #$00
	STA z:z03

_object_common:
	LDY #$00
	LDA (z08), Y
	STA z:z04
	INY
	LDA (z08), Y
	TAY
	LDA oamcoord_lo_pointers, Y
	STA z:z0A
	LDA oamcoord_hi_pointers, Y
	STA z:z0B
	SEC
	LDA aobject_xcoord, X
	SBC z:zscreen_xcoord
	STA z:z00
	LDA aobject_screen, X
	SBC z:zscreen_id
	LDA aobject_ycoord, X
	STA z:z01
	LDA aobject_attributes, X
	AND #objects_right
	STA z:z02
	LDA #2
	STA z:z07

@loop:
	LDX z:z06
	LDY z:z07
	LDA (z08), Y
	STA aoam_tile, X
	CLC
	LDA (z0A), Y
	ADC z:z01
	STA aoam_y, X
	INY
	LDA z:z03
	BEQ @no_enemies_hit
	LDA (z08), Y
	AND #%11110000
	ORA z:z03
	BNE @enemies_hit

@no_enemies_hit:
	LDA (z08), Y

@enemies_hit:
	EOR z:z02
	STA aoam_attributes, X
	LDA z:z02
	BEQ @object_is_left
	LDA (z0A), Y
	TAY
	LDA oamcoord_table, Y
	JMP @calc_coord

@object_is_left:
	LDA (z0A), Y

@calc_coord:
	CLC
	BMI @coord_negative
	ADC z:z00
	BCC @coord_done
	BCS @object_hidden

@coord_negative:
	ADC z:z00
	BCS @coord_done

@object_hidden:
	LDA #$F8
	STA aoam_y, X
	BNE @hidden_done

@coord_done:
	STA aoam_x, X
	CLC
	TXA
	ADC #4
	STA z:z06
	BEQ _draw_max

@hidden_done:
	INC z:z07
	INC z:z07
	DEC z:z04
	BNE @loop

_skip_draw:
	CLC
	RTS

_draw_max:
	SEC
	RTS

_draw_enemies_with_animation:
	LDX z:zsprites_pointer
	LDA aobject_attributes, X
	BMI @exist
	CLC
	RTS

@exist:
	LDY aobject_pointer, X
	LDA oam_enemies_frameset_pointers_lo, Y
	STA z:z08
	LDA oam_enemies_frameset_pointers_hi, Y
	STA z:z09
	LDA aobject_frameset_upper_timer, X
	PHA
	INC aobject_frameset_lower_timer, X
	LDY #$01
	LDA (z08), Y
	CMP aobject_frameset_lower_timer, X
	BCS @max
	LDA #0
	STA aobject_frameset_lower_timer, X
	INC aobject_frameset_upper_timer, X
	DEY
	LDA (z08), Y
	CMP aobject_frameset_upper_timer, X
	BCS @max
	LDA #0
	STA aobject_frameset_upper_timer, X

@max:
	PLA
	CLC
	ADC #2
	TAY
	LDA (z08), Y
	BNE @is_object
	LSR aobject_attributes, X
	RTS

@is_object:
_is_enemies_object:
	TAY
	LDA aobject_attributes, X
	AND #objects_invisible
	BNE @yes
	LDA oam_enemies_sprites_lo_pointers, Y
	STA z:z08
	LDA oam_enemies_sprites_hi_pointers, Y
	STA z:z09
	LDA aenemies_flag, X
	STA z:z03
	JMP _object_common

@yes:
	CLC
	RTS

.ENUM
	vertical_bar_base_ycoord = $18
	hp_bar_xcoord            = $18
	weapon_bar_xcoord        = $10
	boss_bar_xcoord          = $28
	vertical_bar_4_tile      = $87
	vertical_bar_3_tile
	vertical_bar_2_tile
	vertical_bar_1_tile
	vertical_bar_0_tile
.ENDENUM

_draw_bar:
	LDA amegaman_hp
	STA z:z00
	LDX z:z06
	LDA #oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	STA z:z02
	LDA #hp_bar_xcoord
	STA z:z01
	JSR _draw_bar_tile
	BCS @max
	LDY z:zcurrent_weapon
	BEQ @buster
	LDA a:zatomic_fire - 1, Y
	STA z:z00
	LDA #oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	STA z:z02
	LDA #weapon_bar_xcoord
	STA z:z01
	JSR _draw_bar_tile
	BCS @max

@buster:
	LDA z:zboss_ai_pointer
	BEQ @no_boss
	LDA aboss_hp
	STA z:z00
	LDA #oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	LDY z:zcurrent_boss
	CPY #stage_wily1
	BEQ @mecha_dragon
	CPY #stage_wily6
	BNE @not_alien

@mecha_dragon:
	LDA #oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip

@not_alien:
	STA z:z02
	LDA #boss_bar_xcoord
	STA z:z01
	JSR _draw_bar_tile

@max:
@no_boss:
	RTS

_draw_bar_tile:
	LDY #6

@loop:
	LDA @vertical_bar_ycoord_table, Y
	STA aoam_y, X
	SEC
	LDA z:z00
	SBC #4
	BCS @div4
	LDX z:z00
	LDA #0
	STA z:z00
	LDA @vertical_bar_tile, X
	LDX z:z06
	JMP @mod4

@div4:
	STA z:z00
	LDA #vertical_bar_4_tile

@mod4:
	STA aoam_tile, X
	LDA z:z02
	STA aoam_attributes, X
	LDA z:z01
	STA aoam_x, X
	INX
	INX
	INX
	INX
	STX z:z06
	BEQ @max
	DEY
	BPL @loop
	CLC
	RTS

@max:
	SEC
	RTS

@vertical_bar_ycoord_table:
	.BYTE vertical_bar_base_ycoord + 0
	.BYTE vertical_bar_base_ycoord + 8
	.BYTE vertical_bar_base_ycoord + 16
	.BYTE vertical_bar_base_ycoord + 24
	.BYTE vertical_bar_base_ycoord + 32
	.BYTE vertical_bar_base_ycoord + 40
	.BYTE vertical_bar_base_ycoord + 48
	
@vertical_bar_tile:
	.BYTE vertical_bar_0_tile
	.BYTE vertical_bar_1_tile
	.BYTE vertical_bar_2_tile
	.BYTE vertical_bar_3_tile
