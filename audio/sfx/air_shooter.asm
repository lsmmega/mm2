sfx_air_shooter:
	sfx_priority 4
	.BYTE sfx_pulse_2 | sfx_noise

;1
;sfx_pulse_2
	duty_cycle 0
	pitch_envelope $F1
	volume 14
	sfx_note nD_3

;sfx_noise
	sfx_frames 29
	volume 10
	sfx_noise_note 9
	sfx_end
