	db DEX_OMANYTE ; pokedex id

	db  35,  40, 100,  35,  90 ; 390
	;   hp  atk  def  spd  spc   tot

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 120 ; base exp

	INCBIN "gfx/pokemon/front/omanyte.pic", 0, 1 ; sprite dimensions
	dw OmanytePicFront, OmanytePicBack

	db CONSTRICT, WITHDRAW, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         REST,         ROCK_SLIDE,   \
		 SUBSTITUTE, /*ICY_WIND,     MIRROR_COAT,  FLASH_CANNON, STONE_EDGE, */\
		 SURF
	   /*MUD-SLAP,     ROCK_SMASH,   EARTH_POWER,  POISON_JAB,   ROCK_TOMB,    \
	   */	 
	; end

	db 0 ; padding
