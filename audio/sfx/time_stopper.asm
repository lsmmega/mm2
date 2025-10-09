sfx_time_stopper:
	sfx_priority 5
	.BYTE sfx_pulse_2 | sfx_noise

;1
;sfx_pulse_2
	duty_cycle 0
	volume 15
	sfx_note nB_1

;sfx_noise
	sfx_frames 6
	volume 15
	sfx_noise_note 5

;2
;sfx_pulse_2
	sfx_note nC_6

;sfx_noise
	sfx_frames 9
	noise_duty_cycle 1
	pitch_envelope $FF
	sfx_noise_note 10

;3
;sfx_pulse_2
	volume 15
	sfx_note_tied

;sfx_noise
	sfx_frames 9
	volume 10
	sfx_noise_note 10

;4
;sfx_pulse_2
	volume 10
	pitch_envelope $00
	sfx_note_tied

;sfx_noise
	sfx_frames 9
	volume 6
	sfx_noise_note 11

;5
;sfx_pulse_2
	volume 7
	sfx_note_tied

;sfx_noise
	sfx_frames 9
	volume 3
	sfx_noise_note 12
	sfx_end
