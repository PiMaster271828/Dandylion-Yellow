	db DEX_GOLEM ; pokedex id

	db  80, 120, 130,  55,  75 ; 525
	;   hp  atk  def  spd  spc   tot

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 177 ; base exp

	INCBIN "gfx/pokemon/front/golem.pic", 0, 1 ; sprite dimensions
	dw GolemPicFront, GolemPicBack

	db TACKLE, DEFENSE_CURL, ROCK_THROW, SELFDESTRUCT ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
		 EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  \
		 BIDE,         METRONOME,    SELFDESTRUCT, FIRE_BLAST,   SKULL_BASH,   \
		 REST,         EXPLOSION,    ROCK_SLIDE,   SUBSTITUTE,/*FLAMETHROWER,*/\
		 STRENGTH
	   /*FIRE_PUNCH,   TOMBSTONER,   THUNDERPUNCH, GIGA_IMPACT,  HEADBUTT,     \
		 WILD_CHARGE,  FLASH_CANNON, STONE_EDGE,   SEARING_SAND, MUD-SLAP,     \
		 ROCK_SMASH,   EARTH_POWER,  DRAIN_PUNCH,  POISON_JAB,   ROCK_TOMB,    \
	   */	 
	; end

	db 0 ; padding
