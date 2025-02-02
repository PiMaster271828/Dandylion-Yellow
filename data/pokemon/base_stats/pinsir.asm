	db DEX_PINSIR ; pokedex id

	db  85, 125, 100,  85,  65 ; 525
	;   hp  atk  def  spd  spc   spc

	db BUG, FIGHTING ; type
	db 45 ; catch rate
	db 200 ; base exp

	INCBIN "gfx/pokemon/front/pinsir.pic", 0, 1 ; sprite dimensions
	dw PinsirPicFront, PinsirPicBack

	db VICEGRIP, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   SWORDS_DANCE, TOXIC,        HORN_DRILL,   BODY_SLAM,    \
	     TAKE_DOWN,    DOUBLE_EDGE,  SUBMISSION,   SEISMIC_TOSS, COUNTER,      \
		 RAGE,         EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        \
		 DOUBLE_TEAM,  BIDE,         SKULL_BASH,   REST,         ROCK_SLIDE,   \
		 SUBSTITUTE, /*AERIAL_ACE,   GIGA_IMPACT,  HEADBUTT,     STONE_EDGE, */\
	     CUT,          STRENGTH
	   /*DRAGON_CLAW,  SHADOW_CLAW,  MUD-SLAP,     ROCK_SMASH,   POISON_JAB,   \
		 ROCK_TOMB,    SPIN_SLASH, */  
	; end

	db 0 ; padding
