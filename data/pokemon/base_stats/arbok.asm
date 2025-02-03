	db DEX_ARBOK ; pokedex id

	db  65,  100,  70,  80,  80 ; 475
	;   hp  atk  def  spd  spc

	db POISON, DARK ; type
	db 90 ; catch rate
	db 147 ; base exp

	INCBIN "gfx/pokemon/front/arbok.pic", 0, 1 ; sprite dimensions
	dw ArbokPicFront, ArbokPicBack

	db WRAP, LEER, POISON_STING, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         \
	     MEGA_DRAIN,   DRAGON_RAGE,  EARTHQUAKE,   FISSURE,      DIG,  	       \
		 MIMIC,        DOUBLE_TEAM,  BIDE,         SKULL_BASH,   REST,         \
		 ROCK_SLIDE,   SUBSTITUTE, /*SLUDGE_BOMB,  DARK_PULSE,   HEADBUTT,   */\
		 STRENGTH
	   /*IRON_TAIL,    MUD-SLAP,     SLUDGE_WAVE,  ROCK_SMASH,   GIGA_DRAIN,   \
		 POISON_JAB,   ROCK_TOMB,  */   
	; end

	db 0 ; padding
