	db DEX_PARASECT ; pokedex id

	db  70, 140, 110,  50, 110 ; 590
	;   hp  atk  def  spd  spc   tot

	db BUG, GRASS ; type
	db 75 ; catch rate
	db 128 ; base exp

	INCBIN "gfx/pokemon/front/parasect.pic", 0, 1 ; sprite dimensions
	dw ParasectPicFront, ParasectPicBack

	db SCRATCH, STUN_SPORE, LEECH_SEED, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         MEGA_DRAIN,   SOLARBEAM,    DIG,          MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         SKULL_BASH,/*LIGHT_SCREEN,*/\
	     REST,         SUBSTITUTE, /*SLUDGE_BOMB,  AERIAL_ACE,   GIGA_IMPACT,*/\
	     CUT
	   /*HEADBUTT,     SHADOW_CLAW,  SEED_BOMB,    MUD-SLAP,     SLUDGE_WAVE,  \
	     ROCK_SMASH,   EARTH_POWER,  GIGA_DRAIN,   POISON_JAB, */  
	; end

	db 0 ; padding
