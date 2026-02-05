.ENUM
	z00
	z01
	z02
	z03
	z04
	z05
	z06
	z07
	z08
	z09
	z0A
	z0B
	z0C
	z0D
	z0E
	z0F
.ENDENUM

	znmi_frame                  = $1C
	znmi_wait                   = $1D
	zscreen_xcoord              = $1F
	zscreen_id                  = $20
	zjoy1_pressed               = $23
	zjoy2_pressed               = $24
	zjoy1_pressed_frame         = $25
	zjoy2_pressed_frame         = $26
	zjoy1_pressed_bits          = $27
	zjoy2_pressed_bits          = $28
	zcurrent_bankswitch         = $29
	zcurrent_stage              = $2A
	zsprites_pointer            = $2B
	z3A                         = $3A
	zcurrent_palette_no         = $43
	zpalette_animation_timer    = $44
	zmegaman_invincibility_time = $4B
	ztrack_queue_pointer        = $66
	zdelay_track_queue          = $67
	zbankswitch_status          = $68
	zundo_bankswitch            = $69
	zatomic_fire                = $9C
	zcurrent_weapon             = $A9
	ztime_stopper_flag          = $AA
	zboss_ai_pointer            = $B1
	zcurrent_boss               = $B3
	zppu_ctrl                   = $F7
	zppu_mask                   = $F8
	zout_of_screen              = $F9

	aenemies_flag               = $100

;oam
	oam_hi_addr     = 2
	aoam_y          = oam_hi_addr << 8 + 0
	aoam_tile       = oam_hi_addr << 8 + 1
	aoam_attributes = oam_hi_addr << 8 + 2
	aoam_x          = oam_hi_addr << 8 + 3

	ano_of_palette               = $354
	apalette_animation_frame     = $355
	acurrent_background_palette  = $356
	abackground_palette_set      = $376
	aobject_pointer              = $400
	aobject_attributes           = $420
	aobject_screen               = $440
	aobject_xcoord               = $460
	aobject_ycoord               = $4A0
	atrack_queue                 = $580
	aboss_invincibility_time     = $5A8
	aobject_frameset_lower_timer = $680
	aobject_frameset_upper_timer = $6A0
	amegaman_hp                  = $6C0
	aboss_hp                     = $6C1
