sfx_40:
	sfx_priority 14
	.BYTE sfx_noise

;1
;sfx_noise
@loop_1:
	sfx_frames 4
	volume 6
	sfx_noise_note 11
	loop 2, @loop_1
	sfx_end
