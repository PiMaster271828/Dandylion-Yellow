	db DEX_SCYTHER ; pokedex id

	db  70, 110,  80, 105,  80 ; 525
	;   hp  atk  def  spd  spc   tot

	db BUG, FLYING ; type
	db 45 ; catch rate
	db 187 ; base exp

	INCBIN "gfx/pokemon/front/scyther.pic", 0, 1 ; sprite dimensions
	dw ScytherPicFront, ScytherPicBack

	db QUICK_ATTACK, SCRATCH, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         SWIFT,        SKULL_BASH,   \
		 REST,         SUBSTITUTE, /*STEEL_WING,   AERIAL_ACE,   GIGA_IMPACT,*/\
	   /*DUALWINGBEAT, SHADOW_CLAW,  ROCK_SMASH,   SPIN_SLASH,*/ CUT
	; end

	db 0 ; padding
