	db DEX_SANDSLASH ; pokedex id

	db  85, 100, 110,  75,  65 ; 500 
	;   hp  atk  def  spd  spc   tot

	db GROUND, GROUND ; type
	db 90 ; catch rate
	db 163 ; base exp

	INCBIN "gfx/pokemon/front/sandslash.pic", 0, 1 ; sprite dimensions
	dw SandslashPicFront, SandslashPicBack

	db SCRATCH, DEFENSE_CURL, SAND_ATTACK, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  SUBMISSION,   SEISMIC_TOSS, RAGE,         EARTHQUAKE,   \
		 FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         \
		 SWIFT,        SKULL_BASH,   REST,         ROCK_SLIDE,   SUBSTITUTE,   \
	   /*AERIAL_ACE,   GIGA_IMPACT,  HEADBUTT,     IRON_TAIL,    STONE_EDGE, */\
		 CUT,          STRENGTH
	   /*SEARING_SAND, SHADOW_CLAW,  MUD-SLAP,     ROCK_SMASH,   EARTH_POWER,  \
		 POISON_JAB,   ROCK_TOMB, */    
	; end

	db 0 ; padding
