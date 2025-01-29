	db DEX_SLOWBRO ; pokedex id

	db  95,  95, 140,  20,  100 ; 550
	;   hp  atk  def  spd  spc    tot

	db WATER, PSYCHIC_TYPE ; type
	db 75 ; catch rate
	db 164 ; base exp

	INCBIN "gfx/pokemon/front/slowbro.pic", 0, 1 ; sprite dimensions
	dw SlowbroPicFront, SlowbroPicBack

	db TACKLE, GROWL, WATER_GUN, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     PAY_DAY,      SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
		 EARTHQUAKE,   FISSURE,      DIG,          PSYCHIC_M,    TELEPORT,     \
		 MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         FIRE_BLAST,   \
		 SWIFT,        SKULL_BASH,/*LIGHT_SCREEN,*/REST,         THUNDER_WAVE, \
		 SURF,         STRENGTH,     FLASH
	   /*PSYWAVE,      TRI_ATTACK,   SUBSTITUTE,   FLAMETHROWER, FIRE_PUNCH,   \
		 THUNDERPUNCH, GIGA_IMPACT,  DARK_PULSE,   ICE_PUNCH,    HYPER_VOICE,  \
		 HEADBUTT,     IRON_TAIL,    SHADOW_BALL,  ICY_WIND,     MIRROR_COAT,  \
		 MUD-SLAP,     SLUDGE_WAVE,  ROCK_SMASH, */  
	; end

	db 0 ; padding
