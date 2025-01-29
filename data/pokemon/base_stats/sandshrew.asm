	db DEX_SANDSHREW ; pokedex id

	db  50,  75,  85,  40,  35 ; 320
	;   hp  atk  def  spd  spc   tot

	db GROUND, GROUND ; type
	db 255 ; catch rate
	db 93 ; base exp

	INCBIN "gfx/pokemon/front/sandshrew.pic", 0, 1 ; sprite dimensions
	dw SandshrewPicFront, SandshrewPicBack

	db SCRATCH, DEFENSE_CURL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  SUBMISSION,   SEISMIC_TOSS, RAGE,         EARTHQUAKE,   \
		 FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         \
		 SWIFT,        SKULL_BASH,   REST,         ROCK_SLIDE,   SUBSTITUTE,   \
	   /*AERIAL_ACE,   HEADBUTT,     IRON_TAIL,    STONE_EDGE,  SEARING_SAND,*/\
		 CUT,          STRENGTH          
	   /*SHADOW_CLAW,  MUD-SLAP,     ROCK_SMASH,   EARTH_POWER,  ROCK_TOMB,    \*/
		 
	; end

	db 0 ; padding
