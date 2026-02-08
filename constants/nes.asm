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
	background_table_right = 1 << 4

;ppu mask
	background_leftmost_enable = 1 << 1
	sprites_leftmost_enable    = 1 << 2
	background_enable          = 1 << 3
	sprite_enable              = 1 << 4

	DMC_FREQ          = $4010
	OAM_DMA           = $4014
	APU_STATUS        = $4015
	JOY1              = $4016
	JOY2_FRAME        = $4017 ;read
	APU_FRAME_COUNTER = $4017 ;write
