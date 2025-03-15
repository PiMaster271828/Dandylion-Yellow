	db DEX_BLASTOISE ; pokedex id

	db  80,  90, 110,  80, 110 ; 580
	;   hp  atk  def  spd  spc   tot

	db WATER, WATER ; type
	db 45 ; catch rate
	db 210 ; base exp

	INCBIN "gfx/pokemon/front/blastoise.pic", 0, 1 ; sprite dimensions
	dw BlastoisePicFront, BlastoisePicBack

	db BUBBLE, WITHDRAW, WATER_GUN, BITE, ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         METRONOME,    SELFDESTRUCT, SWIFT,        \
		 SKULL_BASH,   REST,         ROCK_SLIDE,   SUBSTITUTE, /*GIGA_IMPACT,*/\
		 SURF,         STRENGTH
	   /*DARK_PULSE,   ICE_PUNCH,    HYPER_VOICE,  HEADBUTT,     IRON_TAIL,    \
		 WILD_CHARGE,  ICY_WIND,     MIRROR_COAT,  FLASH_CANNON, STONE_EDGE,   \
		 MUD-SLAP,     ROCK_SMASH,   PLAY_ROUGH,   DRAIN_PUNCH,  ROCK_TOMB,    \
	   */	 
	; end

	db 0 ; padding
