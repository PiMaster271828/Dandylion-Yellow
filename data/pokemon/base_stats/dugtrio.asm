	db DEX_DUGTRIO ; pokedex id

	db  30, 110,  50, 120,  70 ; 450 
	;   hp  atk  def  spd  spc   tot

	db GROUND, GROUND ; type
	db 50 ; catch rate
	db 153 ; base exp

	INCBIN "gfx/pokemon/front/dugtrio.pic", 0, 1 ; sprite dimensions
	dw DugtrioPicFront, DugtrioPicBack

	db SCRATCH, GROWL, DIG, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        \
		 DOUBLE_TEAM,  BIDE,         REST,         ROCK_SLIDE,   SUBSTITUTE,   \
	     CUT
	   /*SLUDGE_BOMB,  AERIAL_ACE,   GIGA_IMPACT,  STONE_EDGE,   SEARING_SAND, \
		 SHADOW_CLAW,  MUD-SLAP,     ROCK_SMASH,   EARTH_POWER,  ROCK_TOMB,    \
	   */	 
	; end

	db 0 ; padding
