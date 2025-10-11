sfx_crash_bomber_grab:
	sfx_priority 7
	.BYTE sfx_pulse_2 | sfx_noise

;1
;sfx_pulse_2
	duty_cycle 2
	volume 15
	pitch_envelope $EF
	sfx_note nB_5

;sfx_noise
	sfx_frames 4
	noise_duty_cycle 1
	volume 15
	pitch_envelope $FF
	sfx_noise_note 7

;2
;sfx_pulse_2
	pitch_envelope $F9
	sfx_note nGb6

;sfx_noise
	sfx_frames 4
	sfx_noise_note 10

;3
;sfx_pulse_2
	pitch_envelope $EF
	sfx_note nB_5

;sfx_noise
	sfx_frames 4
	sfx_noise_note 5
	sfx_end
