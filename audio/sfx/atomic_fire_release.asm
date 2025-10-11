sfx_atomic_fire_release:
	sfx_priority 3
	.BYTE sfx_pulse_2 | sfx_noise

;1
;sfx_pulse_2
	duty_cycle 3
	volume 15
	sfx_note nDb1

;sfx_noise
	sfx_frames 3
	noise_duty_cycle 1
	volume 15
	sfx_noise_note 4

;2
;sfx_pulse_2
@loop_1:
	pitch_envelope $02
	sfx_note nDb1

;sfx_noise
	sfx_frames 4
	noise_duty_cycle 0
	sfx_noise_note 0
	loop 10, @loop_1
	sfx_end
