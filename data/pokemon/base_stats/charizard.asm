	db DEX_CHARIZARD ; pokedex id

	db  80, 105,  95, 100, 100 ; 580 
	;   hp  atk  def  spd  spc   tot

	db FIRE, FLYING ; type
	db 45 ; catch rate
	db 209 ; base exp

	INCBIN "gfx/pokemon/front/charizard.pic", 0, 1 ; sprite dimensions
	dw CharizardPicFront, CharizardPicBack

	db SCRATCH, GROWL, EMBER, LEER ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   RAZOR_WIND,   SWORDS_DANCE, MEGA_KICK,    TOXIC,        \
	     BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   SUBMISSION,   \
		 COUNTER,      SEISMIC_TOSS, RAGE,         DRAGON_RAGE,  EARTHQUAKE,   \
		 FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  REFLECT,      \
		 BIDE,         FIRE_BLAST,   SWIFT,        SKULL_BASH,/*LIGHT_SCREEN,*/\
		 SKY_ATTACK,   REST,         ROCK_SLIDE,   SUBSTITUTE, /*STEEL_WING, */\
       /*STEEL_WING,   FLAMETHROWER, FIRE_PUNCH,   AERIAL_ACE,   GIGA_IMPACT,  \
	     DARK_PULSE,   HEADBUTT,     IRON_TAIL,    DUALWINGBEAT, SEARING_SAND, \
		 DRAGON_CLAW,  SHADOW_CLAW,  ROCK_SMASH,   ROCK_TOMB,    SPIN_SLASH,   \
		 METAL_CLAW  */CUT,          FLY,          STRENGTH
	; end

	db 0 ; padding
