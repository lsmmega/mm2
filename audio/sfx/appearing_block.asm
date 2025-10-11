sfx_appearing_block:
	sfx_priority 6
	.BYTE sfx_pulse_2 | sfx_noise

;1
;sfx_pulse_2
	duty_cycle 2
	volume 15
	pitch_envelope $FE
	sfx_note nA_2

;sfx_noise
	sfx_frames 48
	volume 15
	sfx_modulator_set 2, 3, 4, volume_decay, 0, 0
	pitch_envelope $FE
	sfx_noise_note 5
	sfx_end
