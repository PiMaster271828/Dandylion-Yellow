	db DEX_OMASTAR ; pokedex id

	db  70,  60, 125,  45, 125 ; 550
	;   hp  atk  def  spd  spc   tot

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 199 ; base exp

	INCBIN "gfx/pokemon/front/omastar.pic", 0, 1 ; sprite dimensions
	dw OmastarPicFront, OmastarPicBack

	db CONSTRICT, WITHDRAW, BIND, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        HORN_DRILL,   BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     SUBMISSION,   \
		 SEISMIC_TOSS, RAGE,         MIMIC,        DOUBLE_TEAM,  REFLECT,      \
		 BIDE,         SKULL_BASH, /*LIGHT_SCREEN*/REST,         ROCK_SLIDE,   \
		 SUBSTITUTE, /*GIGA_IMPACT,  ICY_WIND,     MIRROR_COAT, FLASH_CANNON,*/\
		 SURF,         STRENGTH
	   /*STONE_EDGE,   MUD-SLAP,     ROCK_SMASH,   EARTH_POWER,  POISON_JAB,   \  
		 ROCK_TOMB,    \
	   */	 
	; end

	db 0 ; padding
