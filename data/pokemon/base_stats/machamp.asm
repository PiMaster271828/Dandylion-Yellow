	db DEX_MACHAMP ; pokedex id

	db  90, 130,  80,  55,  85 ; 525
	;   hp  atk  def  spd  spc   tot

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 193 ; base exp

	INCBIN "gfx/pokemon/front/machamp.pic", 0, 1 ; sprite dimensions
	dw MachampPicFront, MachampPicBack

	db KARATE_CHOP, LOW_KICK, LEER, FOCUS_ENERGY ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
		 EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  \
		 BIDE,         METRONOME,    FIRE_BLAST,   SKULL_BASH,   REST,         \
		 ROCK_SLIDE,   SUBSTITUTE, /*FLAMETHROWER, FIRE_PUNCH,  THUNDERPUNCH,*/\
		 STRENGTH
	   /*GIGA_IMPACT,  ICE_PUNCH,    HEADBUTT,     STONE_EDGE,   MUD-SLAP,     \
		 ROCK_SMASH,   DRAIN_PUNCH,  ROCK_TOMB, */
	; end

	db 0 ; padding
