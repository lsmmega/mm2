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

header := \
	header/*

0 := \
	0/*

1 := \
	1/*

2 := \
	2/*

3 := \
	3/*

4:= \
	4/*

5 := \
	5/*

6 := \
	6/*

7 := \
	7/*

8 := \
	8/*

9 := \
	9/*

10 := \
	10/*

11 := \
	11/*

12 := \
	12/*

13 := \
	13/*

14 := \
	14/*

15 := \
	15/*

.PHONY: all mm2 clean

all: mm2
mm2: mm2.nes

%.nes: $(rom_obj) mm2.cfg
	ld65 -C $*.cfg $(rom_obj) -o $@ -m $*.map

header.o: $(header)
	ca65 $*.asm

0.o: $(0)
	ca65 $*.asm

1.o: $(1)
	ca65 $*.asm

2.o: $(2)
	ca65 $*.asm

3.o: $(3)
	ca65 $*.asm

4.o: $(4)
	ca65 $*.asm

5.o: $(5)
	ca65 $*.asm

6.o: $(6)
	ca65 $*.asm

7.o: $(7)
	ca65 $*.asm

8.o: $(8)
	ca65 $*.asm

9.o: $(9)
	ca65 $*.asm

10.o: $(10)
	ca65 $*.asm

11.o: $(11)
	ca65 $*.asm

12.o: $(12)
	ca65 $*.asm

13.o: $(13)
	ca65 $*.asm

14.o: $(14)
	ca65 $*.asm

15.o: $(15)
	ca65 $*.asm

clean:
	$(RM) $(rom_obj) \
	*.nes \
	*.map
