	db DEX_SLOWPOKE ; pokedex id

	db  90,  65,  65,  15,  40 ; 315
	;   hp  atk  def  spd  spc   tot

	db WATER, PSYCHIC_TYPE ; type
	db 190 ; catch rate
	db 99 ; base exp

	INCBIN "gfx/pokemon/front/slowpoke.pic", 0, 1 ; sprite dimensions
	dw SlowpokePicFront, SlowpokePicBack

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     PAY_DAY,      RAGE,         \
	     EARTHQUAKE,   FISSURE,      DIG,          PSYCHIC_M,    TELEPORT,     \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         FIRE_BLAST,   \
	     SWIFT,        SKULL_BASH,/*LIGHT_SCREEN,*/REST,         THUNDER_WAVE, \
		 PSYWAVE,      TRI_ATTACK,   SUBSTITUTE, /*FLAMETHROWER, DARK_PULSE, */\
         SURF,         STRENGTH,     FLASH
	   /*HEADBUTT,     IRON_TAIL,    SHADOW_BALL,  ICY_WIND,     SHOCK_WAVE,   \
		 MUD-SLAP,     ROCK_SMASH,*/  
	; end

	db 0 ; padding
