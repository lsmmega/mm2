sfx_atomic_fire_charge_1:
	sfx_priority 3
	.BYTE sfx_pulse_2 | sfx_noise

;1
;sfx_pulse_2
@loop_1:
	duty_cycle 1
	volume 15
	pitch_envelope $F6
	sfx_note nC_5

;sfx_noise
	sfx_frames 3
	volume 4
	sfx_noise_note 7
	loop 2, @loop_1
	sfx_end
