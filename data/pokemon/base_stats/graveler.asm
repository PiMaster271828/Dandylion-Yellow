	db DEX_GRAVELER ; pokedex id

	db  55, 100, 120,  35,  45 ; 400
	;   hp  atk  def  spd  spc   tot

	db ROCK, GROUND ; type
	db 120 ; catch rate
	db 134 ; base exp

	INCBIN "gfx/pokemon/front/graveler.pic", 0, 1 ; sprite dimensions
	dw GravelerPicFront, GravelerPicBack

	db TACKLE, DEFENSE_CURL, ROCK_THROW, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         EARTHQUAKE,   \
	     FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     METRONOME,    SELFDESTRUCT, FIRE_BLAST,   REST,         EXPLOSION,    \
	     ROCK_SLIDE,   SUBSTITUTE, /*FLAMETHROWER, FIRE_PUNCH,   TOMBSTONER, */\
		 STRENGTH
	   /*THUNDERPUNCH, STONE_EDGE,   SEARING_SAND, MUD-SLAP,     ROCK_SMASH,   \
		 EARTH_POWER,  ROCK_TOMB,
	   */
	; end

	db 0 ; padding
