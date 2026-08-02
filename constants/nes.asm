.ENUM
	PPU_CTRL = $2000
	PPU_MASK
	PPU_STATUS
	PPU_OAM_ADDR
	PPU_OAM_DATA
	PPU_SCROLL
	PPU_ADDRESS
	PPU_DATA
.ENDENUM

;ppu ctrl
	background_table_left  = 0
	draw_horizontal        = 0
	nametable_top_left     = 0
	nametable_top_right    = 1
	nametable_bottom_left  = 2
	nametable_bottom_right = 3
	all_nametable          = 3
	draw_vertical          = 1 << 2
	sprite_table_right     = 1 << 3
	background_table_right = 1 << 4
	nmi_enable             = 1 << 7

;ppu mask
	background_leftmost_enable = 1 << 1
	sprites_leftmost_enable    = 1 << 2
	background_enable          = 1 << 3
	sprite_enable              = 1 << 4

	SQ1_VOL           = $4000
	SQ1_SWEEP         = $4001
	SQ1_LO            = $4002
	SQ1_HI            = $4003
	SQ2_VOL           = $4004
	SQ2_SWEEP         = $4005
	SQ2_LO            = $4006
	SQ2_HI            = $4007
	TRI_LINEAR        = $4008
	TRI_LO            = $400A
	TRI_HI            = $400B
	NOISE_VOL         = $400C
	NOISE_LO          = $400E
	NOISE_HI          = $400F
	DMC_FREQ          = $4010
	OAM_DMA           = $4014
	APU_STATUS        = $4015
	JOY1              = $4016
	JOY2_FRAME        = $4017 ;read
	APU_FRAME_COUNTER = $4017 ;write
