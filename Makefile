rom_obj := \
	audio.o \
	header.o \
	main.o \
	sprites.o \
	stages.o \
	8.o

cfg := \
	mm2.cfg

audio := \
	audio.asm \
	constants/* \
	macros/* \
	audio/* \
	audio/music/* \
	audio/sfx/*

header := \
	header.asm \
	constants/*

home := \
	home.asm \
	home/* \
	home/unused/* \
	sprites/pointers/* \
	sprites/*

sprites := \
	constants/* \
	sprites/pointers/* \
	sprites/* \
	sprites/unused/* \

stages := \
	stages.asm \
	constants/* \
	macros/* \
	stages/heatman_wily1/* \
	gfx/0/*.bmp \
	stages/airman_wily2/* \
	gfx/1/*.bmp \
	stages/woodman_wily3/* \
	gfx/2/*.bmp \
	stages/bubbleman_wily4/* \
	gfx/3/*.bmp \
	stages/quickman_wily5/* \
	gfx/4/*.bmp \
	stages/flashman_wily6/* \
	gfx/5/*.bmp \
	stages/metalman/* \
	gfx/6/*.bmp \
	stages/crashman/* \
	gfx/7/*.bmp

8 := \
	8.asm \
	gfx/8/*.bmp

9 := \
	9.asm \
	macros/* \
	constants/* \
	9/* \
	screen/* \
	gfx/9/*.bmp

11 := \
	11.asm \
	constants/* \
	11/* \
	screen/* \
	gfx/11/*.bmp

13 := \
	13.asm \
	13/* \
	screen/*

14 := \
	14.asm \
	14/*

gfx_stages := \
	gfx/0/0.bmp gfx/0/0.chr \
	gfx/1/1.bmp gfx/1/1.chr \
	gfx/2/2.bmp gfx/2/2.chr \
	gfx/3/3.bmp gfx/3/3.chr \
	gfx/4/4.bmp gfx/4/4.chr \
	gfx/5/5.bmp gfx/5/5.chr \
	gfx/6/6.bmp gfx/6/6.chr \
	gfx/7/7.bmp gfx/7/7.chr

gfx8 := \
	gfx/8/8.bmp gfx/8/8.chr

gfx9 := \
	gfx/9/9_p0.bmp gfx/9/9_p0.chr \
	gfx/9/9_p1.bmp gfx/9/9_p1.chr

gfx11 := \
	gfx/11/11.bmp gfx/11/11.chr

.PHONY: all mm2 clean

all: mm2
mm2: mm2.nes

%.nes: $(rom_obj) $(cfg)
	ld65 -C $(cfg) $(rom_obj) -o $@ -m $*.map

audio.o: $(audio)
	ca65 audio.asm

header.o: $(header)
	ca65 header.asm

main.o: $(home) $(9) $(11) $(13) $(14)
	bmp2nes $(gfx9) $(gfx11)
	ca65 main.asm

sprites.o: $(sprites)
	ca65 sprites.asm

stages.o: $(stages)
	bmp2nes $(gfx_stages)
	ca65 stages.asm

8.o: $(8)
	bmp2nes $(gfx8)
	ca65 8.asm

13.o: $(13)
	ca65 13.asm

clean:
	$(RM) $(rom_obj) \
	gfx/*/*.chr \
	*.nes \
	*.map
