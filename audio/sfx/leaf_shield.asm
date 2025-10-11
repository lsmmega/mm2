sfx_leaf_shield:
	sfx_priority 3
	.BYTE sfx_pulse_2 | sfx_noise

;1
;sfx_pulse_2
	duty_cycle 0
	volume 7
	pitch_envelope $FF
	sfx_note nG_4

;sfx_noise
	sfx_frames 2
	volume 12
	sfx_noise_note 12

;2
;sfx_pulse_2
	volume 8
	sfx_note nG_5

;sfx_noise
	sfx_frames 6
	volume 15
	sfx_noise_note 11
	sfx_end
