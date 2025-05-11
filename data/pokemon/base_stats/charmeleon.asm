	db DEX_CHARMELEON ; pokedex id

	db  60,  70,  60,  80,  65 ; 400 
	;   hp  atk  def  spd  spc   tot

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 142 ; base exp

	INCBIN "gfx/pokemon/front/charmeleon.pic", 0, 1 ; sprite dimensions
	dw CharmeleonPicFront, CharmeleonPicBack

	db SCRATCH, GROWL, /*KINDLE*/EMBER, SMOKESCREEN ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SWORDS_DANCE, MEGA_KICK,    TOXIC,        BODY_SLAM,    \
	     TAKE_DOWN,    DOUBLE_EDGE,  SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
		 RAGE,         DRAGON_RAGE,  EARTHQUAKE,   FISSURE,      DIG,          \
		 MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         FIRE_BLAST,   \
		 SWIFT,        SKULL_BASH,/*LIGHT_SCREEN,*/REST,         SUBSTITUTE,   \
       /*FLAMETHROWER, FIRE_PUNCH,   AERIAL_ACE,   HEADBUTT,     IRON_TAIL,    \
	     DRAGON_CLAW,  ROCK_SMASH,   ROCK_TOMB,    SPIN_SLASH,   METAL_CLAW    \          
	   */CUT,          STRENGTH
	; end

	db 0 ; padding
