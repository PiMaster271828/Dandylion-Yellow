	db DEX_WIGGLYTUFF ; pokedex id

	db 140,  70,  65,  45,  60 ; 440
	;   hp  atk  def  spd  spc   tot

	db FAIRY, SOUND ; type
	db 50 ; catch rate
	db 109 ; base exp

	INCBIN "gfx/pokemon/front/wigglytuff.pic", 0, 1 ; sprite dimensions
	dw WigglytuffPicFront, WigglytuffPicBack

	db SING, DISABLE, DEFENSE_CURL, DOUBLESLAP ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     PAY_DAY,      SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
		 SOLARBEAM,    THUNDERBOLT,  THUNDER,      PSYCHIC_M,    TELEPORT,     \
		 MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         METRONOME,    \
		 FIRE_BLAST,   SWIFT,        SKULL_BASH,/*LIGHT_SCREEN,*/DREAM_EATER,  \
		 REST,         THUNDER_WAVE, PSYWAVE,      TRI_ATTACK,   SUBSTITUTE,   \
	     STRENGTH,     FLASH
	   /*FLAMETHROWER, FIRE_PUNCH,   THUNDERPUNCH, GIGA_IMPACT,  ICE_PUNCH,    \
	     HYPER_VOICE,  HEADBUTT,     SHADOW_BALL,  ICY_WIND,     ALURINGVOICE, \
		 MIRROR_COAT,  WILD_CHARGE,  SHOCK_WAVE,   ROCK_SMASH,   MAGICALGLEAM, \
		 PLAY_ROUGH,   DRAIN_PUNCH,      
	   */
	; end

	db 0 ; padding
