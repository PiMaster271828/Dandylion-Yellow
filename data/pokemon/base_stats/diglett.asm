    db DEX_DIGLETT ; pokedex id

	db  10,  55,  30,  95,  45 ; 280
	;   hp  atk  def  spd  spc   tot

	db GROUND, GROUND ; type
	db 255 ; catch rate
	db 81 ; base exp

	INCBIN "gfx/pokemon/front/diglett.pic", 0, 1 ; sprite dimensions
	dw DiglettPicFront, DiglettPicBack

	db SCRATCH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        \
		 DOUBLE_TEAM,  BIDE,         REST,         ROCK_SLIDE,   SUBSTITUTE,   \
	     CUT
	   /*SLUDGE_BOMB,  AERIAL_ACE,   STONE_EDGE,   SEARING_SAND, SHADOW_CLAW,  \
		 MUD-SLAP,     ROCK_SMASH,   EARTH_POWER,  ROCK_TOMB,  */  
	; end

	db 0 ; padding
