sfx_door:
	sfx_priority 8
	.BYTE sfx_pulse_2 | sfx_noise

;1
;sfx_pulse_2
@loop_1:
	duty_cycle 2
	volume 15
	sfx_modulator_set 4, 5, 3, volume_decay, 2, 1
	pitch_envelope $B1
	sfx_note nEb4

;sfx_noise
	sfx_frames 6
	noise_duty_cycle 1
	sfx_modulator_set 4, 5, 3, volume_decay, 2, 1
	sfx_noise_note 6
	loop 30, @loop_1
	sfx_end
