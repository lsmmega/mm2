.ENUM
	z00
	z01
.ENDENUM

	znmi_wait                = $1D
	zjoy1_pressed            = $23
	zjoy2_pressed            = $24
	zjoy1_pressed_frame      = $25
	zjoy2_pressed_frame      = $26
	zjoy1_pressed_bits       = $27
	zjoy2_pressed_bits       = $28
	zcurrent_bankswitch      = $29
	z3A                      = $3A
	zcurrent_palette_no      = $43
	zpalette_animation_timer = $44
	ztrack_queue_pointer     = $66
	zdelay_track_queue       = $67
	zbankswitch_status       = $68
	zundo_bankswitch         = $69
	ztime_stopper_flag       = $AA
	zppu_ctrl                = $F7
	zppu_mask                = $F8

	ano_of_palette              = $354
	apalette_animation_frame    = $355
	acurrent_background_palette = $356
	abackground_palette_set     = $376
	atrack_queue                = $580

	oam_hi_addr = 2
