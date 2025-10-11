sfx_mecha_dragon:
	sfx_priority 12
	.BYTE sfx_pulse_2 | sfx_noise

;1
;sfx_pulse_2
@loop_1:
	duty_cycle 3
	pitch_envelope $05
	volume 15
	sfx_note nA_1

;sfx_noise
	sfx_frames 2
	volume 15
	sfx_noise_note 1
	loop 1, @loop_1

;2
;sfx_pulse_2
	duty_cycle 0
	sfx_modulator_set 2, 3, 1, volume_decay, 0, 0
	pitch_envelope $14
	sfx_note nF_2

;sfx_noise
	sfx_frames 3
	sfx_noise_note 3

;3
;sfx_pulse_2
	pitch_envelope $CA
	sfx_note_tied

;sfx_noise
	sfx_frames 12
	sfx_noise_note 3

;4
;sfx_pulse_2
	pitch_envelope $04
	sfx_note_tied

;sfx_noise
	sfx_frames 18
	sfx_noise_note 5

;5
;sfx_pulse_2
	pitch_envelope $FE
	sfx_note_tied

;sfx_noise
	sfx_frames 18
	sfx_noise_note 6
	sfx_end
