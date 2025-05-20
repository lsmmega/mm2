rom_obj := \
	header.o \
	0.o \
	1.o \
	2.o \
	3.o \
	4.o \
	5.o \
	6.o \
	7.o \
	8.o \
	9.o \
	10.o \
	11.o \
	12.o \
	13.o \
	14.o \
	15.o

cfg := \
	mm2.cfg

header := \
	constants/* \
	header.asm

0 := \
	0.asm \
	0/* \
	gfx/0/*.bmp

1 := \
	1.asm \
	1/* \
	gfx/1/*.bmp

2 := \
	2.asm \
	2/* \
	gfx/2/*.bmp

3 := \
	3.asm \
	3/* \
	gfx/3/*.bmp

4:= \
	4.asm \
	4/* \
	gfx/4/*.bmp

5 := \
	5.asm \
	5/* \
	gfx/5/*.bmp

6 := \
	6.asm \
	6/* \
	gfx/6/*.bmp

7 := \
	7.asm \
	7/* \
	gfx/7/*.bmp

8 := \
	8.asm \
	gfx/8/*.bmp

9 := \
	9.asm \
	9/* \
	gfx/9/*.bmp

10 := \
	10.asm \
	10/*

11 := \
	11.asm \
	11/* \
	gfx/11/*.bmp

12 := \
	12.asm \
	12/*

13 := \
	13.asm \
	13/*

14 := \
	14.asm \
	14/*

15 := \
	15.asm \
	15/*

gfx0 := \
	gfx/0/0.bmp gfx/0/0.chr

gfx1 := \
	gfx/1/1.bmp gfx/1/1.chr

gfx2 := \
	gfx/2/2.bmp gfx/2/2.chr

gfx3 := \
	gfx/3/3.bmp gfx/3/3.chr

gfx4 := \
	gfx/4/4.bmp gfx/4/4.chr

gfx5 := \
	gfx/5/5.bmp gfx/5/5.chr

gfx6 := \
	gfx/6/6.bmp gfx/6/6.chr

gfx7 := \
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

header.o: $(header)
	ca65 header.asm

0.o: $(0)
	bmp2nes $(gfx0)
	ca65 0.asm

1.o: $(1)
	bmp2nes $(gfx1)
	ca65 1.asm

2.o: $(2)
	bmp2nes $(gfx2)
	ca65 2.asm

3.o: $(3)
	bmp2nes $(gfx3)
	ca65 3.asm

4.o: $(4)
	bmp2nes $(gfx4)
	ca65 4.asm

5.o: $(5)
	bmp2nes $(gfx5)
	ca65 5.asm

6.o: $(6)
	bmp2nes $(gfx6)
	ca65 6.asm

7.o: $(7)
	bmp2nes $(gfx7)
	ca65 7.asm

8.o: $(8)
	bmp2nes $(gfx8)
	ca65 8.asm

9.o: $(9)
	bmp2nes $(gfx9)
	ca65 9.asm

10.o: $(10)
	ca65 10.asm

11.o: $(11)
	bmp2nes $(gfx11)
	ca65 11.asm

12.o: $(12)
	ca65 12.asm

13.o: $(13)
	ca65 13.asm

14.o: $(14)
	ca65 14.asm

15.o: $(15)
	ca65 15.asm

clean:
	$(RM) $(rom_obj) \
	gfx/*/*.chr \
	*.nes \
	*.map
