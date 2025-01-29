	db DEX_NINETALES ; pokedex id

	db  75,  75,  75, 100, 100 ; 525
	;   hp  atk  def  spd  spc   tot

	db FIRE, GHOST ; type
	db 75 ; catch rate
	db 178 ; base exp

	INCBIN "gfx/pokemon/front/ninetales.pic", 0, 1 ; sprite dimensions
	dw NinetalesPicFront, NinetalesPicBack

	db EMBER, TAIL_WHIP, DISABLE, QUICK_ATTACK ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         \
	     DIG,          MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     FIRE_BLAST,   SWIFT,        SKULL_BASH,/*LIGHT_SCREEN,*/ REST,         \
		 PSYWAVE,      SUBSTITUTE, /*FLAMETHROWER, GIGA_IMPACT,  DARK_PULSE,   \
		 HEADBUTT,     IRON_TAIL,    SHADOW_BALL,  ALURINGVOICE, WILD_CHARGE,  \
		 MIRROR_COAT,  SEARING_SAND, MUD-SLAP,     ROCK_SMASH,   MAGICALGLEAM, \
		 PLAY_ROUGH*/ 
	; end

	db 0 ; padding
