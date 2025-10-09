sfx_metal_blade:
	sfx_priority 3
	.BYTE sfx_pulse_2 | sfx_noise

;1
;sfx_pulse_2
@loop_1:
	duty_cycle 0
	volume 15
	sfx_note nC_3

;sfx_noise
	sfx_frames 3
	noise_duty_cycle 1
	volume 15
	sfx_noise_note 5
	loop 1, @loop_1

;2
;sfx_pulse_2
	volume 8
	duty_cycle 3
	pitch_envelope $FF
	sfx_note nA_5

;sfx_noise
	sfx_frames 16
	noise_duty_cycle 1
	sfx_modulator_set 0, 0, 0, volume_decay, 1, 4
	sfx_noise_note 8
	sfx_end
