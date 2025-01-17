.ENUM
;ppu registers.
	ppu_ctrl     = $2000
	ppu_mask
	ppu_status
	ppu_oam_addr
	ppu_oam_data
	ppu_scroll
	ppu_address 
	ppu_data

;apu registers.
	sq1_vol    = $4000
	sq1_sweep
	sq1_lo
	sq1_hi
	sq2_vol
	sq2_sweep
	sq2_lo
	sq2_hi
	tri_linear
	tri_lo     = $400A
	tri_hi
	noise_vol
	noise_lo   = $400E
	noise_hi
	dmc_freq
	dmc_raw
	dmc_start
	dmc_len
	oam_dma
	apu_status

;joypad registers.
	joy1
    joy2_frame
.ENDENUM