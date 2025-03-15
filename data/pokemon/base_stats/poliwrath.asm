	db DEX_POLIWRATH ; pokedex id

	db  90, 100,  95,  70,  90 ; 535
	;   hp  atk  def  spd  spc   tot

	db WATER, FIGHTING ; type
	db 45 ; catch rate
	db 185 ; base exp

	INCBIN "gfx/pokemon/front/poliwrath.pic", 0, 1 ; sprite dimensions
	dw PoliwrathPicFront, PoliwrathPicBack

	db HYPNOSIS, WATER_GUN, DOUBLESLAP, BODY_SLAM ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         EARTHQUAKE,   \
		 FISSURE,      DIG,          PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  \
		 REFLECT,      BIDE,         METRONOME,    SKULL_BASH,/*LIGHT_SCREEN,*/\
		 REST,         DREAM_EATER,  PSYWAVE,      ROCK_SLIDE,   SUBSTITUTE,   \
		 SURF,         STRENGTH
	   /*FIRE_PUNCH,   THUNDERPUNCH, GIGA_IMPACT,  ICE_PUNCH,    HYPER_VOICE,  \
		 HEADBUTT,     ICY_WIND,     MIRROR_COAT,  STONE_EDGE,   MUD-SLAP,     \
		 ROCK_SMASH,   EARTH_POWER,  DRAIN_PUNCH,  POISON_JAB,   ROCK_TOMB,    \
	   */
	; end

	db 0 ; padding
