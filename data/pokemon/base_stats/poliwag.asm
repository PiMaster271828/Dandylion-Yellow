	db DEX_POLIWAG ; pokedex id

	db  40,  50,  40,  90,  40 ; 300
	;   hp  atk  def  spd  spc   tot

	db WATER, WATER ; type
	db 255 ; catch rate
	db 77 ; base exp

	INCBIN "gfx/pokemon/front/poliwag.pic", 0, 1 ; sprite dimensions
	dw PoliwagPicFront, PoliwagPicBack

	db SPLASH, BUBBLE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         PSYCHIC_M,    \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SKULL_BASH,   \
	  /*LIGHT_SCREEN,*/DREAM_EATER,  REST,         PSYWAVE,      SUBSTITUTE,   \
         SURF	   
	   /*HEADBUTT,     IRON_TAIL,    ICY_WIND,     MUD-SLAP,     ROCK_SMASH,   \
	     EARTH_POWER */ 
	; end

	db 0 ; padding
