	db DEX_MACHOKE ; pokedex id

	db  80, 100,  70,  45,  60 ; 415
	;   hp  atk  def  spd  spc   tot

	db FIGHTING, FIGHTING ; type
	db 90 ; catch rate
	db 146 ; base exp

	INCBIN "gfx/pokemon/front/machoke.pic", 0, 1 ; sprite dimensions
	dw MachokePicFront, MachokePicBack

	db TACKLE, LEER, LOW_KICK, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         METRONOME,    FIRE_BLAST,   SKULL_BASH,   REST,         \
	     ROCK_SLIDE,   SUBSTITUTE,   FLAMETHROWER, FIRE_PUNCH,   THUNDERPUNCH, \
		 ICE_PUNCH,    HEADBUTT,     STONE_EDGE,   MUD-SLAP,     ROCK_SMASH,   \
		 DRAIN_PUNCH,  ROCK_TOMB,    STRENGTH
	; end

	db 0 ; padding
