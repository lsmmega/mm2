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
	constants/* \
	macros/* \
	ram/* \
	home/* \
	home/unused/* \
	sprites/pointers/* \
	sprites/*

sprites := \
	constants/* \
	macros/* \
	sprites/pointers/* \
	sprites/* \
	sprites/unused/* \

stages := \
	stages.asm \
	constants/* \
	macros/* \
	stages/heatman_wily1/* \
	gfx/sprites/miscellaneous/*.bmp \
	gfx/sprites/bar/*.bmp \
	gfx/sprites/items/*.bmp \
	gfx/sprites/menus/*.bmp \
	gfx/sprites/title/*.bmp \
	gfx/sprites/password/*.bmp \
	gfx/sprites/enemies/*.bmp \
	gfx/stages/regular/*.bmp \
	gfx/stages/wily/*.bmp \
	stages/airman_wily2/* \
	stages/woodman_wily3/* \
	gfx/sprites/unknown/*.bmp \
	gfx/sprites/ending/megaman/*.bmp \
	gfx/sprites/wily_lab/*.bmp \
	gfx/sprites/get_weapon/*.bmp \
	gfx/sprites/enemies/red_liquid/*.bmp \
	stages/bubbleman_wily4/* \
	gfx/sprites/enemies/goblin/*.bmp \
	gfx/sprites/enemies/friender/*.bmp \
	gfx/sprites/ending/*.bmp \
	gfx/sprites/ending/spring/*.bmp \
	screen/* \
	gfx/sprites/bosses/metalman/*.bmp \
	stages/quickman_wily5/* \
	stages/flashman_wily6/* \
	gfx/sprites/stage_select/*.bmp \
	gfx/sprites/boss_show/*.bmp \
	gfx/sprites/bosses/wily_machine_2/*.bmp \
	gfx/sprites/weapon/*.bmp \
	gfx/sprites/bosses/*.bmp \
	stages/metalman/* \
	gfx/sprites/bosses/airman/*.bmp \
	gfx/sprites/wily_castle/*.bmp \
	gfx/sprites/bosses/flashman/*.bmp \
	gfx/sprites/bosses/bubbleman/*.bmp \
	stages/crashman/* \
	gfx/ending/*.bmp

8 := \
	8.asm \
	gfx/password_get_weapon/*.bmp \
	gfx/font/*.bmp \
	gfx/stage_select/*.bmp \
	gfx/wily_lab/*.bmp \
	gfx/ending/*.bmp \
	gfx/wily_machine_2/*.bmp \
	gfx/sprites/dr_wily/*.bmp \
	gfx/sprites/bosses/wily_machine_2/*.bmp \
	unused/*

9 := \
	9.asm \
	macros/* \
	constants/* \
	9/* \
	screen/* \
	gfx/stages/*.bmp \
	gfx/menus/*.bmp \
	gfx/sprites/miscellaneous/*.bmp \
	unused/* \
	gfx/font/*.bmp \
	gfx/wily_castle/*.bmp \
	gfx/opening/*.bmp \
	gfx/title/*.bmp \
	gfx/mecha_dragon/*.bmp

11 := \
	11.asm \
	constants/* \
	macros/* \
	11/* \
	unused/* \
	screen/* \
	gfx/guts_tank/*.bmp

13 := \
	13.asm \
	constants/* \
	macros/* \
	13/* \
	data/boss_show/* \
	data/password/* \
	screen/* \
	unused/*

14 := \
	14.asm \
	constants/* \
	macros/* \
	14/* \
	unused/*

gfx_stages := \
	gfx/sprites/miscellaneous/megaman_capsule_e_tank_bullet_mega_buster.bmp gfx/sprites/miscellaneous/megaman_capsule_e_tank_bullet_mega_buster.chr \
	gfx/sprites/miscellaneous/death.bmp gfx/sprites/miscellaneous/death.chr \
	gfx/sprites/bar/bar.bmp gfx/sprites/bar/bar.chr \
	gfx/sprites/miscellaneous/water_bubble.bmp gfx/sprites/miscellaneous/water_bubble.chr \
	gfx/sprites/items/1up.bmp gfx/sprites/items/1up.chr \
	gfx/sprites/menus/bar.bmp gfx/sprites/menus/bar.chr \
	gfx/sprites/menus/next.bmp gfx/sprites/menus/next.chr \
	gfx/sprites/menus/weapon.bmp gfx/sprites/menus/weapon.chr \
	gfx/sprites/menus/next_arrow.bmp gfx/sprites/menus/next_arrow.chr \
	gfx/sprites/title/difficulty_select_arrow.bmp gfx/sprites/title/difficulty_select_arrow.chr \
	gfx/sprites/menus/e_tank.bmp gfx/sprites/menus/e_tank.chr \
	gfx/sprites/menus/life_count.bmp gfx/sprites/menus/life_count.chr \
	gfx/sprites/menus/mega_buster.bmp gfx/sprites/menus/mega_buster.chr \
	gfx/sprites/items/item2.bmp gfx/sprites/items/item2.chr \
	gfx/sprites/items/item1.bmp gfx/sprites/items/item1.chr \
	gfx/sprites/items/item3.bmp gfx/sprites/items/item3.chr \
	gfx/sprites/password/password_spot.bmp gfx/sprites/password/password_spot.chr \
	gfx/sprites/password/password_ball.bmp gfx/sprites/password/password_ball.chr \
	gfx/sprites/enemies/alien.bmp gfx/sprites/enemies/alien.chr \
	gfx/stages/regular/heatman.bmp gfx/stages/regular/heatman.chr \
	gfx/stages/wily/wily1.bmp gfx/stages/wily/wily1.chr \
	gfx/sprites/enemies/kukku.bmp gfx/sprites/enemies/kukku.chr \
	gfx/sprites/enemies/telly.bmp gfx/sprites/enemies/telly.chr \
	gfx/sprites/enemies/fly_boy.bmp gfx/sprites/enemies/fly_boy.chr \
	gfx/sprites/enemies/pierrobot.bmp gfx/sprites/enemies/pierrobot.chr \
	gfx/sprites/enemies/monking.bmp gfx/sprites/enemies/monking.chr \
	gfx/sprites/enemies/pipi.bmp gfx/sprites/enemies/pipi.chr \
	gfx/sprites/enemies/kaminari_goro.bmp gfx/sprites/enemies/kaminari_goro.chr \
	gfx/stages/regular/airman.bmp gfx/stages/regular/airman.chr \
	gfx/stages/wily/common.bmp gfx/stages/wily/common.chr \
	gfx/stages/wily/wily2.bmp gfx/stages/wily/wily2.chr \
	gfx/sprites/enemies/matasaburo_neo_metall.bmp gfx/sprites/enemies/matasaburo_neo_metall.chr \
	gfx/sprites/enemies/batton.bmp gfx/sprites/enemies/batton.chr \
	gfx/sprites/unknown/unknown_9490.bmp gfx/sprites/unknown/unknown_9490.chr \
	gfx/sprites/enemies/force_beam.bmp gfx/sprites/enemies/force_beam.chr \
	gfx/sprites/ending/megaman/helmet.bmp gfx/sprites/ending/megaman/helmet.chr \
	gfx/sprites/wily_lab/plant.bmp gfx/sprites/wily_lab/plant.chr \
	gfx/sprites/get_weapon/dr_light.bmp gfx/sprites/get_weapon/dr_light.chr \
	gfx/sprites/enemies/m_445.bmp gfx/sprites/enemies/m_445.chr \
	gfx/sprites/enemies/robbit.bmp gfx/sprites/enemies/robbit.chr \
	gfx/sprites/enemies/kerog.bmp gfx/sprites/enemies/kerog.chr \
	gfx/sprites/enemies/drop_platform.bmp gfx/sprites/enemies/drop_platform.chr \
	gfx/sprites/enemies/red_liquid/red_liquid_1.bmp gfx/sprites/enemies/red_liquid/red_liquid_1.chr \
	gfx/sprites/enemies/shrink.bmp gfx/sprites/enemies/shrink.chr \
	gfx/stages/regular/woodman.bmp gfx/stages/regular/woodman.chr \
	gfx/stages/wily/wily3.bmp gfx/stages/wily/wily3.chr \
	gfx/stages/wily/wily6.bmp gfx/stages/wily/wily6.chr \
	gfx/sprites/enemies/mole.bmp gfx/sprites/enemies/mole.chr \
	gfx/sprites/enemies/red_liquid/red_liquid_2.bmp gfx/sprites/enemies/red_liquid/red_liquid_2.chr \
	gfx/sprites/enemies/sniper_armor.bmp gfx/sprites/enemies/sniper_armor.chr \
	gfx/sprites/enemies/returning_sniper_joe.bmp gfx/sprites/enemies/returning_sniper_joe.chr \
	gfx/sprites/enemies/lift.bmp gfx/sprites/enemies/lift.chr \
	gfx/sprites/enemies/goblin/light.bmp gfx/sprites/enemies/goblin/light.chr \
	gfx/sprites/enemies/friender/beam.bmp gfx/sprites/enemies/friender/beam.chr \
	gfx/sprites/enemies/petit_goblin.bmp gfx/sprites/enemies/petit_goblin.chr \
	gfx/sprites/enemies/appearing_block.bmp gfx/sprites/enemies/appearing_block.chr \
	gfx/sprites/enemies/shotman.bmp gfx/sprites/enemies/shotman.chr \
	gfx/sprites/ending/autumn.bmp gfx/sprites/ending/autumn.chr \
	gfx/sprites/enemies/neo_metall_1.bmp gfx/sprites/enemies/neo_metall_1.chr \
	gfx/sprites/unknown/unknown_da60.bmp gfx/sprites/unknown/unknown_da60.chr \
	gfx/sprites/enemies/goblin/horn.bmp gfx/sprites/enemies/goblin/horn.chr \
	gfx/sprites/ending/winter.bmp gfx/sprites/ending/winter.chr \
	gfx/sprites/ending/spring/spring_1.bmp gfx/sprites/ending/spring/spring_1.chr \
	gfx/sprites/enemies/tanishi.bmp gfx/sprites/enemies/tanishi.chr \
	gfx/sprites/ending/spring/spring_2.bmp gfx/sprites/ending/spring/spring_2.chr \
	gfx/sprites/enemies/claw.bmp gfx/sprites/enemies/claw.chr \
	gfx/sprites/enemies/blocky.bmp gfx/sprites/enemies/blocky.chr \
	gfx/sprites/enemies/springer.bmp gfx/sprites/enemies/springer.chr \
	gfx/sprites/enemies/block.bmp gfx/sprites/enemies/block.chr \
	gfx/stages/regular/bubbleman.bmp gfx/stages/regular/bubbleman.chr \
	gfx/stages/wily/wily4.bmp gfx/stages/wily/wily4.chr \
	gfx/sprites/bosses/metalman/metalman_1.bmp gfx/sprites/bosses/metalman/metalman_1.chr \
	gfx/sprites/enemies/changkey_maker.bmp gfx/sprites/enemies/changkey_maker.chr \
	gfx/sprites/enemies/big_fish.bmp gfx/sprites/enemies/big_fish.chr \
	gfx/sprites/unknown/unknown_11740.bmp gfx/sprites/unknown/unknown_11740.chr \
	gfx/sprites/ending/megaman/upper_body_1.bmp gfx/sprites/ending/megaman/upper_body_1.chr \
	gfx/sprites/enemies/friender/friender.bmp gfx/sprites/enemies/friender/friender.chr \
	gfx/sprites/enemies/anko.bmp gfx/sprites/enemies/anko.chr \
	gfx/sprites/ending/summer.bmp gfx/sprites/ending/summer.chr \
	gfx/sprites/unknown/unknown_11de0.bmp gfx/sprites/unknown/unknown_11de0.chr \
	gfx/sprites/enemies/press.bmp gfx/sprites/enemies/press.chr \
	gfx/sprites/enemies/scworm.bmp gfx/sprites/enemies/scworm.chr \
	gfx/sprites/miscellaneous/splash.bmp gfx/sprites/miscellaneous/splash.chr \
	gfx/stages/regular/quickman.bmp gfx/stages/regular/quickman.chr \
	gfx/stages/wily/wily5.bmp gfx/stages/wily/wily5.chr \
	gfx/sprites/stage_select/crashman.bmp gfx/sprites/stage_select/crashman.chr \
	gfx/sprites/stage_select/heatman.bmp gfx/sprites/stage_select/heatman.chr \
	gfx/sprites/stage_select/bubbleman.bmp gfx/sprites/stage_select/bubbleman.chr \
	gfx/sprites/stage_select/woodman.bmp gfx/sprites/stage_select/woodman.chr \
	gfx/sprites/stage_select/flashman.bmp gfx/sprites/stage_select/flashman.chr \
	gfx/sprites/stage_select/metalman.bmp gfx/sprites/stage_select/metalman.chr \
	gfx/sprites/stage_select/airman.bmp gfx/sprites/stage_select/airman.chr \
	gfx/sprites/stage_select/quickman.bmp gfx/sprites/stage_select/quickman.chr \
	gfx/sprites/stage_select/dot.bmp gfx/sprites/stage_select/dot.chr \
	gfx/sprites/boss_show/star.bmp gfx/sprites/boss_show/star.chr \
	gfx/sprites/ending/megaman/lower_body_1.bmp gfx/sprites/ending/megaman/lower_body_1.chr \
	gfx/sprites/bosses/wily_machine_2/wily_machine_2_1.bmp gfx/sprites/bosses/wily_machine_2/wily_machine_2_1.chr \
	gfx/sprites/bosses/wily_machine_2/wily_machine_2_2.bmp gfx/sprites/bosses/wily_machine_2/wily_machine_2_2.chr \
	gfx/sprites/ending/megaman/lower_body_2.bmp gfx/sprites/ending/megaman/lower_body_2.chr \
	gfx/sprites/weapon/bubble_lead.bmp gfx/sprites/weapon/bubble_lead.chr \
	gfx/sprites/weapon/quick_boomerang.bmp gfx/sprites/weapon/quick_boomerang.chr \
	gfx/sprites/weapon/metal_blade.bmp gfx/sprites/weapon/metal_blade.chr \
	gfx/sprites/weapon/air_shooter.bmp gfx/sprites/weapon/air_shooter.chr \
	gfx/sprites/weapon/atomic_fire.bmp gfx/sprites/weapon/atomic_fire.chr \
	gfx/sprites/weapon/flash_stopper.bmp gfx/sprites/weapon/flash_stopper.chr \
	gfx/sprites/weapon/crash_bomber.bmp gfx/sprites/weapon/crash_bomber.chr \
	gfx/sprites/weapon/leaf_shield.bmp gfx/sprites/weapon/leaf_shield.chr \
	gfx/sprites/ending/megaman/upper_body_2.bmp gfx/sprites/ending/megaman/upper_body_2.chr \
	gfx/sprites/bosses/picopico_kun.bmp gfx/sprites/bosses/picopico_kun.chr \
	gfx/stages/regular/flashman.bmp gfx/stages/regular/flashman.chr \
	gfx/sprites/bosses/metalman/metalman_2.bmp gfx/sprites/bosses/metalman/metalman_2.chr \
	gfx/sprites/bosses/airman/airman_1.bmp gfx/sprites/bosses/airman/airman_1.chr \
	gfx/sprites/bosses/crashman.bmp gfx/sprites/bosses/crashman.chr \
	gfx/sprites/title/megaman.bmp gfx/sprites/title/megaman.chr \
	gfx/sprites/title/window.bmp gfx/sprites/title/window.chr \
	gfx/sprites/title/balcony.bmp gfx/sprites/title/balcony.chr \
	gfx/sprites/title/title.bmp gfx/sprites/title/title.chr \
	gfx/sprites/wily_castle/wily_show_castle_logo.bmp gfx/sprites/wily_castle/wily_show_castle_logo.chr \
	gfx/sprites/wily_castle/routing.bmp gfx/sprites/wily_castle/routing.chr \
	gfx/sprites/bosses/boobeam_trap.bmp gfx/sprites/bosses/boobeam_trap.chr \
	gfx/sprites/enemies/boobeam_trap_block.bmp gfx/sprites/enemies/boobeam_trap_block.chr \
	gfx/sprites/bosses/heatman.bmp gfx/sprites/bosses/heatman.chr \
	gfx/sprites/bosses/flashman/flashman_1.bmp gfx/sprites/bosses/flashman/flashman_1.chr \
	gfx/stages/regular/metalman.bmp gfx/stages/regular/metalman.chr \
	gfx/sprites/bosses/airman/airman_2.bmp gfx/sprites/bosses/airman/airman_2.chr \
	gfx/sprites/bosses/woodman.bmp gfx/sprites/bosses/woodman.chr \
	gfx/sprites/ending/megaman/body_1.bmp gfx/sprites/ending/megaman/body_1.chr \
	gfx/sprites/bosses/quickman.bmp gfx/sprites/bosses/quickman.chr \
	gfx/sprites/bosses/flashman/flashman_2.bmp gfx/sprites/bosses/flashman/flashman_2.chr \
	gfx/sprites/bosses/bubbleman/bubbleman_1.bmp gfx/sprites/bosses/bubbleman/bubbleman_1.chr \
	gfx/sprites/bosses/bubbleman/bubbleman_2.bmp gfx/sprites/bosses/bubbleman/bubbleman_2.chr \
	gfx/sprites/ending/megaman/body_2.bmp gfx/sprites/ending/megaman/body_2.chr \
	gfx/sprites/bosses/flashman/flashman_3.bmp gfx/sprites/bosses/flashman/flashman_3.chr \
	gfx/sprites/ending/megaman/body_3.bmp gfx/sprites/ending/megaman/body_3.chr \
	gfx/stages/regular/crashman.bmp gfx/stages/regular/crashman.chr \
	gfx/sprites/bosses/mecha_dragon.bmp gfx/sprites/bosses/mecha_dragon.chr \
	gfx/sprites/bosses/guts_tank.bmp gfx/sprites/bosses/guts_tank.chr \
	gfx/ending/ending_1.bmp gfx/ending/ending_1.chr \

gfx8 := \
	gfx/password_get_weapon/common.bmp gfx/password_get_weapon/common.chr \
	gfx/password_get_weapon/katakana.bmp gfx/password_get_weapon/katakana.chr \
	gfx/font/font_1.bmp gfx/font/font_1.chr \
	gfx/stage_select/border.bmp gfx/stage_select/border.chr \
	gfx/stage_select/bubbleman.bmp gfx/stage_select/bubbleman.chr \
	gfx/stage_select/airman.bmp gfx/stage_select/airman.chr \
	gfx/stage_select/quickman.bmp gfx/stage_select/quickman.chr \
	gfx/stage_select/heatman.bmp gfx/stage_select/heatman.chr \
	gfx/stage_select/dr_wily.bmp gfx/stage_select/dr_wily.chr \
	gfx/stage_select/woodman.bmp gfx/stage_select/woodman.chr \
	gfx/stage_select/metalman.bmp gfx/stage_select/metalman.chr \
	gfx/stage_select/flashman.bmp gfx/stage_select/flashman.chr \
	gfx/stage_select/crashman.bmp gfx/stage_select/crashman.chr \
	gfx/wily_lab/wily_lab.bmp gfx/wily_lab/wily_lab.chr \
	gfx/ending/ending_2.bmp gfx/ending/ending_2.chr \
	gfx/wily_machine_2/wily_machine_2.bmp gfx/wily_machine_2/wily_machine_2.chr \
	gfx/sprites/dr_wily/dogeza.bmp gfx/sprites/dr_wily/dogeza.chr \
	gfx/sprites/bosses/wily_machine_2/wily_machine_2_3.bmp gfx/sprites/bosses/wily_machine_2/wily_machine_2_3.chr \

gfx9 := \
	gfx/stages/common.bmp gfx/stages/common.chr \
	gfx/menus/border.bmp gfx/menus/border.chr \
	gfx/sprites/miscellaneous/ready_font.bmp gfx/sprites/miscellaneous/ready_font.chr \
	gfx/wily_castle/wily_castle.bmp gfx/wily_castle/wily_castle.chr \
	gfx/font/font_2.bmp gfx/font/font_2.chr \
	gfx/opening/opening_1.bmp gfx/opening/opening_1.chr \
	gfx/opening/japanese_subtitle_1.bmp gfx/opening/japanese_subtitle_1.chr \
	gfx/opening/japanese_subtitle_2.bmp gfx/opening/japanese_subtitle_2.chr \
	gfx/title/II_1.bmp gfx/title/II_1.chr \
	gfx/title/II_2.bmp gfx/title/II_2.chr \
	gfx/font/font_3.bmp gfx/font/font_3.chr \
	gfx/opening/opening_2.bmp gfx/opening/opening_2.chr \
	gfx/title/title.bmp gfx/title/title.chr \
	gfx/mecha_dragon/mecha_dragon_1.bmp gfx/mecha_dragon/mecha_dragon_1.chr \
	gfx/mecha_dragon/mecha_dragon_2.bmp gfx/mecha_dragon/mecha_dragon_2.chr \

gfx11 := \
	gfx/guts_tank/guts_tank_1.bmp gfx/guts_tank/guts_tank_1.chr \
	gfx/guts_tank/guts_tank_2.bmp gfx/guts_tank/guts_tank_2.chr

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

clean:
	$(RM) $(rom_obj) \
	gfx/*/*.chr \
	*.nes \
	*.map
