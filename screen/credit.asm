credit_screen_ycoord:
	.BYTE $24 ;1
	.BYTE $4C ;2
	.BYTE $5C ;3
	.BYTE $6C ;4
	.BYTE $7C ;5
	.BYTE $8C ;6
	.BYTE $9C ;7
	.BYTE $04 ;8
	.BYTE $2C ;9
	.BYTE $3C ;10
	.BYTE $4C ;11
	.BYTE $A4 ;12
	.BYTE $CC ;13
	.BYTE $34 ;14
	.BYTE $5C ;15
	.BYTE $C4 ;16
	.BYTE $0C ;17
	.BYTE $1C ;18
	.BYTE $2C ;19
	.BYTE $3C ;20
	.BYTE $4C ;21
	.BYTE $5C ;22
	.BYTE $6C ;23
	.BYTE $7C ;24
	.BYTE $8C ;25
	.BYTE $9C ;26
	.BYTE $AC ;27
	.BYTE $BC ;28
	.BYTE $CC ;29
	.BYTE $DC ;30
	.BYTE $EC ;31
	.BYTE $0C ;32
	.BYTE $1C ;33
	.BYTE $2C ;34
	.BYTE $3C ;35
	.BYTE $4C ;36
	.BYTE $5C ;37
	.BYTE $6C ;38
	.BYTE $7C ;39
	.BYTE $8C ;40
	.BYTE $9C ;41
	.BYTE $AC ;42
	.BYTE $BC ;43
	.BYTE $CC ;44
	.BYTE $DC ;45
	.BYTE $EC ;46
	.BYTE $0C ;47
	.BYTE $1C ;48
	.BYTE $2C ;49
	.BYTE $3C ;50
	.BYTE $4C ;51
	.BYTE $5C ;52
	.BYTE $6C ;53
	.BYTE $7C ;54
	.BYTE $8C ;55
	.BYTE $9C ;56
	.BYTE $AC ;57
	.BYTE $EC ;58
	.BYTE $64 ;59
	.BYTE $74 ;60
	.BYTE $01 ;end

credit_ppu_ycoord:
	.BYTE $87 ;1
	.BYTE $2B ;2
	.BYTE $6C ;3
	.BYTE $AC ;4
	.BYTE $EC ;5
	.BYTE $2B ;6
	.BYTE $6E ;7
	.BYTE $08 ;8
	.BYTE $AA ;9
	.BYTE $EA ;10
	.BYTE $28 ;11
	.BYTE $8B ;12
	.BYTE $2D ;13
	.BYTE $CC ;14
	.BYTE $6E ;15
	.BYTE $08 ;16
	.BYTE $27 ;17
	.BYTE $68 ;18
	.BYTE $A9 ;19
	.BYTE $E8 ;20
	.BYTE $27 ;21
	.BYTE $67 ;22
	.BYTE $A7 ;23
	.BYTE $E7 ;24
	.BYTE $2C ;25
	.BYTE $67 ;26
	.BYTE $A7 ;27
	.BYTE $E7 ;28
	.BYTE $2C ;29
	.BYTE $69 ;30
	.BYTE $AA ;31
	.BYTE $28 ;32
	.BYTE $69 ;33
	.BYTE $A8 ;34
	.BYTE $E9 ;35
	.BYTE $2A ;36
	.BYTE $68 ;37
	.BYTE $A9 ;38
	.BYTE $E7 ;39
	.BYTE $29 ;40
	.BYTE $69 ;41
	.BYTE $AB ;42
	.BYTE $E7 ;43
	.BYTE $28 ;44
	.BYTE $66 ;45
	.BYTE $AA ;46
	.BYTE $27 ;47
	.BYTE $67 ;48
	.BYTE $AA ;49
	.BYTE $E9 ;50
	.BYTE $2A ;51
	.BYTE $66 ;52
	.BYTE $A6 ;53
	.BYTE $E6 ;54
	.BYTE $26 ;55
	.BYTE $68 ;56
	.BYTE $AB ;57
	.BYTE $A5 ;58
	.BYTE $8A ;59
	.BYTE $CA ;60

credit_string:
	.BYTE credit_string_2 - credit_string_1
	.BYTE credit_string_3 - credit_string_2
	.BYTE credit_string_4 - credit_string_3
	.BYTE credit_string_5 - credit_string_4
	.BYTE credit_string_6 - credit_string_5
	.BYTE credit_string_7 - credit_string_6
	.BYTE credit_string_8 - credit_string_7
	.BYTE credit_string_9 - credit_string_8
	.BYTE credit_string_10 - credit_string_9
	.BYTE credit_string_11 - credit_string_10
	.BYTE credit_string_12 - credit_string_11
	.BYTE credit_string_13 - credit_string_12
	.BYTE credit_string_14 - credit_string_13
	.BYTE credit_string_15 - credit_string_14
	.BYTE credit_string_16 - credit_string_15
	.BYTE credit_string_17 - credit_string_16
	.BYTE credit_string_18 - credit_string_17
	.BYTE credit_string_19 - credit_string_18
	.BYTE credit_string_20 - credit_string_19
	.BYTE credit_string_21 - credit_string_20
	.BYTE credit_string_22 - credit_string_21
	.BYTE credit_string_23 - credit_string_22
	.BYTE credit_string_24 - credit_string_23
	.BYTE credit_string_25 - credit_string_24
	.BYTE credit_string_26 - credit_string_25
	.BYTE credit_string_27 - credit_string_26
	.BYTE credit_string_28 - credit_string_27
	.BYTE credit_string_29 - credit_string_28
	.BYTE credit_string_30 - credit_string_29
	.BYTE credit_string_31 - credit_string_30
	.BYTE credit_string_32 - credit_string_31
	.BYTE credit_string_33 - credit_string_32
	.BYTE credit_string_34 - credit_string_33
	.BYTE credit_string_35 - credit_string_34
	.BYTE credit_string_36 - credit_string_35
	.BYTE credit_string_37 - credit_string_36
	.BYTE credit_string_38 - credit_string_37
	.BYTE credit_string_39 - credit_string_38
	.BYTE credit_string_40 - credit_string_39
	.BYTE credit_string_41 - credit_string_40
	.BYTE credit_string_42 - credit_string_41
	.BYTE credit_string_43 - credit_string_42
	.BYTE credit_string_44 - credit_string_43
	.BYTE credit_string_45 - credit_string_44
	.BYTE credit_string_46 - credit_string_45
	.BYTE credit_string_47 - credit_string_46
	.BYTE credit_string_48 - credit_string_47
	.BYTE credit_string_49 - credit_string_48
	.BYTE credit_string_50 - credit_string_49
	.BYTE credit_string_51 - credit_string_50
	.BYTE credit_string_52 - credit_string_51
	.BYTE credit_string_53 - credit_string_52
	.BYTE credit_string_54 - credit_string_53
	.BYTE credit_string_55 - credit_string_54
	.BYTE credit_string_56 - credit_string_55
	.BYTE credit_string_57 - credit_string_56
	.BYTE credit_string_58 - credit_string_57
	.BYTE credit_string_59 - credit_string_58
	.BYTE credit_string_60 - credit_string_59
	.BYTE credit_end - credit_string_60

credit_string_1:
	.BYTE "CHARACTER DESIGNER"

credit_string_2:
	.BYTE "YASUKICHI"

credit_string_3:
	.BYTE "INAFKING"

credit_string_4:
	.BYTE "TOM PON"

credit_string_5:
	.BYTE "NAGINEKO"

credit_string_6:
	.BYTE "2M03CM MAN"

credit_string_7:
	.BYTE "A.K"

credit_string_8:
	.BYTE "SOUND PROGRAMMER"

credit_string_9:
	.BYTE "OGERETSU KUN"

credit_string_10:
	.BYTE "MANAMI IETEL"

credit_string_11:
	.BYTE "YUUKICHAN'S PAPA"

credit_string_12:
	.BYTE "PROGRAMMER"

credit_string_13:
	.BYTE "H.M.D."

credit_string_14:
	.BYTE "PLANNER"

credit_string_15:
	.BYTE "A.K"

credit_string_16:
	.BYTE "SPECIAL THANKS"

credit_string_17:
	.BYTE "HIROYUKI MAETANI"

credit_string_18:
	.BYTE "TATSUYA KASAI"

credit_string_19:
	.BYTE "MAMORU ASOSHINA"

credit_string_20:
	.BYTE "JUNICHI KANDA"

credit_string_21:
	.BYTE "MASAHIRO TAKAHASHI"

credit_string_22:
	.BYTE "AKIMITSU TSUBATA"

credit_string_23:
	.BYTE "YOSHIAKI GOTOU"

credit_string_24:
	.BYTE "KAZUNARI SUZUKI"

credit_string_25:
	.BYTE "YUU YAMAZAKI"

credit_string_26:
	.BYTE "TOMOHIRO HOSOYA"

credit_string_27:
	.BYTE "YOSHIAKI NANKI"

credit_string_28:
	.BYTE "YASUHITO SASAKI"

credit_string_29:
	.BYTE "JUN KATOU"

credit_string_30:
	.BYTE "SEIKOU JOUGAN"

credit_string_31:
	.BYTE "KENJI KINOUE"

credit_string_32:
	.BYTE "TAKASHI UMEZAWA"

credit_string_33:
	.BYTE "KAZUYA WAKAZUKI"

credit_string_34:
	.BYTE "MASASHI YAMAUCHI"

credit_string_35:
	.BYTE "MAKOTO OGOMA"

credit_string_36:
	.BYTE "SEIJI TANAKA"

credit_string_37:
	.BYTE "HIDEAKI KAWAI"

credit_string_38:
	.BYTE "RYOUJI YASUDA"

credit_string_39:
	.BYTE "TAKAYUKI WAKISAKA"

credit_string_40:
	.BYTE "TAKUMI YOSHINAGA"

credit_string_41:
	.BYTE "YASUTO NAKAMURA"

credit_string_42:
	.BYTE "SHIN IENAKA"

credit_string_43:
	.BYTE "HIROFUMI MORIIWA"

credit_string_44:
	.BYTE "TETSUYA MIURA"

credit_string_45:
	.BYTE "MICHINARI SATOU"

credit_string_46:
	.BYTE "YUKIO HASEGAWA"

credit_string_47:
	.BYTE "HIROYUKI TANNAI"

credit_string_48:
	.BYTE "MICHIAKI HAMA"

credit_string_49:
	.BYTE "TAKEO MORIMOTO"

credit_string_50:
	.BYTE "MASAKI SATOU"

credit_string_51:
	.BYTE "YOUJI MIYAMOTO"

credit_string_52:
	.BYTE "SHIGEHISA IINUMA"

credit_string_53:
	.BYTE "YOSHITOMO KODAMA"

credit_string_54:
	.BYTE "TAKETSUGU WAKABAYASHI"

credit_string_55:
	.BYTE "TOSHITERU OGURA"

credit_string_56:
	.BYTE "TAKESHI ARAI"

credit_string_57:
	.BYTE "FISH MAN"

credit_string_58:
	.BYTE "THANK YOU FOR PLAYING..."

credit_string_59:
	.BYTE "PRESENTED BY"

credit_string_60:
	.BYTE "CAPCOM U.S.A."
credit_end:

;unused
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
