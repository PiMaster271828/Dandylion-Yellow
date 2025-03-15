	db DEX_GYARADOS ; pokedex id

	db 105, 155, 100,  95, 125 ; 590
	;   hp  atk  def  spd  spc   tot

	db WATER, FLYING ; type
	db 45 ; catch rate
	db 214 ; base exp

	INCBIN "gfx/pokemon/front/gyarados.pic", 0, 1 ; sprite dimensions
	dw GyaradosPicFront, GyaradosPicBack

	db SPLASH, TACKLE, ROAR, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     DRAGON_RAGE,  THUNDERBOLT,  THUNDER,      EARTHQUAKE,   MIMIC,        \
		 DOUBLE_TEAM,  REFLECT,      BIDE,         FIRE_BLAST,   SKULL_BASH,   \
		 REST,         THUNDER_WAVE, ROCK_SLIDE,   SUBSTITUTE,/*FLAMETHROWER,*/\
		 FLY,          SURF,         STRENGTH 
	   /*GIGA_IMPACT,  DARK_PULSE,   IRON_TAIL,    ICY_WIND,     WILD_CHARGE,  \
		 STONE_EDGE,   ROCK_SMASH, */  
	; end

	db 0 ; padding
