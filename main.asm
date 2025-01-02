.INCLUDE "includes/main.asm"

.SEGMENT "MAIN00"
.INCBIN "main/main_00.bin"

.SEGMENT "MAIN01"
.INCBIN "main/main_01.bin"

.SEGMENT "MAIN02"
.INCBIN "main/main_02.bin"

.SEGMENT "MAIN03"
.INCLUDE "engine/reset.asm"
.INCBIN "main/main_03.bin"

.SEGMENT "MAIN"
.INCLUDE "main/bankswitch.asm"
.INCBIN "main/main_04.bin"
.INCLUDE "main/reset_2.asm"
.INCBIN "main/main_05.bin"
.INCLUDE "main/reset_1.asm"
.INCBIN "main/main_06.bin"