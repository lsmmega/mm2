sfx_enemy_hit:
	sfx_priority 8
	.BYTE sfx_pulse_2 | sfx_noise

;1
;sfx_pulse_2
	duty_cycle 1
	volume 15
	sfx_modulator_set 0, 5, 0, volume_decay, 7, 6
	pitch_envelope $40
	sfx_note nB_7

;sfx_noise
	sfx_frames 21
	noise_duty_cycle 1
	pitch_envelope $4F
	volume 15
	sfx_noise_note 0
	sfx_end
