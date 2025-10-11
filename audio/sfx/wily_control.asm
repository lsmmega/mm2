sfx_wily_control:
	sfx_priority 15
	.BYTE sfx_pulse_1 | sfx_pulse_2 | sfx_noise

;1
;sfx_pulse_1
@loop_1:
	volume 15
	sfx_note nC_3

;sfx_pulse_2
	duty_cycle 3
	pitch_envelope $F2
	volume 15
	sfx_note nA_0

;sfx_noise
	sfx_frames 31
	volume 15
	noise_duty_cycle 1
	sfx_noise_note 11
	loop 13, @loop_1

;2
;sfx_pulse_1
	pitch_envelope $01
	sfx_note nG_7

;sfx_pulse_2
	duty_cycle 0
	pitch_envelope $01
	sfx_note nE_7

;sfx_noise
	sfx_frames 127
	noise_duty_cycle 1
	volume 4
	sfx_noise_note 5

;3
;sfx_pulse_1
@loop_2:
	sfx_note_tied

;sfx_pulse_2
	sfx_note_tied

;sfx_noise
	sfx_frames 31
	sfx_noise_note 5
	loop 12, @loop_2
	sfx_end
