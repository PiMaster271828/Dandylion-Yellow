	db DEX_ONIX ; pokedex id

	db  55,  85, 175,  70,  45 ; 475 
	;   hp  atk  def  spd  spc   tot

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 108 ; base exp

	INCBIN "gfx/pokemon/front/onix.pic", 0, 1 ; sprite dimensions
	dw OnixPicFront, OnixPicBack

	db TACKLE, SCREECH, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     RAGE,         DRAGON_RAGE,  EARTHQUAKE,   FISSURE,      DIG,          \
		 MIMIC,        DOUBLE_TEAM,  BIDE,         SELFDESTRUCT, SKULL_BASH,   \
		 REST,         EXPLOSION,    EXPLOSION,    ROCK_SLIDE,   SUBSTITUTE,   \
	     STRENGTH
	   /*TOMBSTONER,   GIGA_IMPACT,  HEADBUTT,     IRON_TAIL,    STONE_EDGE,   \
		 SEARING_SAND, MUD-SLAP,     ROCK_SMASH,   EARTH_POWER,  POISON_JAB,   \
		 ROCK_TOMB, */    
	; end

	db 0 ; padding
