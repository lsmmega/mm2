sfx_jump_into_water:
	sfx_priority 8
	.BYTE sfx_pulse_2 | sfx_noise

;1
;sfx_pulse_2
	pitch_envelope $60
	sfx_modulator_set 1, 1, 1, volume_decay, 5, 2
	volume 9
	sfx_note nA_2

;sfx_noise
	sfx_frames 6
	volume 15
	sfx_noise_note 8

;2
;sfx_pulse_2
	pitch_envelope $30
	sfx_note nB_5

;sfx_noise
	sfx_frames 23
	sfx_noise_note 12
	sfx_end
