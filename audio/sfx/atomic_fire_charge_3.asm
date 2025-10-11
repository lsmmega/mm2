sfx_atomic_fire_charge_3:
	sfx_priority 3
	.BYTE sfx_pulse_2 | sfx_noise

;1
;sfx_pulse_2
@loop_1:
	duty_cycle 1
	volume 15
	pitch_envelope $F1
	sfx_note nD_5

;sfx_noise
	sfx_frames 3
	volume 8
	sfx_noise_note 1
	loop 3, @loop_1
	sfx_end
