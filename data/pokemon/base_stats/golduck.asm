	db DEX_GOLDUCK ; pokedex id

	db  80,  85,  80,  85,  95 ; 520
	;   hp  atk  def  spd  spc   tot

	db WATER, PSYCHIC_TYPE ; type
	db 75 ; catch rate
	db 174 ; base exp

	INCBIN "gfx/pokemon/front/golduck.pic", 0, 1 ; sprite dimensions
	dw GolduckPicFront, GolduckPicBack

	db SCRATCH, TAIL_WHIP, WATER_GUN, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   PAY_DAY,      SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
		 RAGE,         DIG,          PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  \
		 BIDE,         METRONOME,    SWIFT,        SKULL_BASH,   REST,         \
		 SUBSTITUTE, /*AERIAL_ACE,   GIGA_IMPACT,  DARK_PULSE,   ICE_PUNCH,  */\
		 CUT,          SURF,         STRENGTH,     FLASH
	   /*HEADBUTT,     IRON_TAIL,    SHADOW_BALL,  ICY_WIND,     MIRROR_COAT,  \
		 SHADOW_CLAW,  MUD_SLAP,     ROCK_SMASH,   CUT,          SURF,         \
	   */
	; end

	db 0 ; padding
