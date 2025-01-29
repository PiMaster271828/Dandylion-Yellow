	db DEX_MANKEY ; pokedex id

	db  40,  80,  35,  70,  45 ; 315
	;   hp  atk  def  spd  spc   tot

	db FIGHTING, FIGHTING ; type
	db 190 ; catch rate
	db 74 ; base exp

	INCBIN "gfx/pokemon/front/mankey.pic", 0, 1 ; sprite dimensions
	dw MankeyPicFront, MankeyPicBack

	db POUND, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  PAY_DAY,      SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
	     RAGE,         THUNDERBOLT,  THUNDER,      DIG,          MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         METRONOME,    SWIFT,        SKULL_BASH,   \
	     REST,         ROCK_SLIDE,   SUBSTITUTE, /*FIRE_PUNCH,  THUNDERPUNCH,*/\
		 STRENGTH
	   /*ICE_PUNCH,    HEADBUTT,     IRON_TAIL,    WILD_CHARGE,  STONE_EDGE,   \
		 MUD-SLAP,     ROCK_SMASH,   PLAY_ROUGH,   DRAIN_PUNCH,  POISON_JAB,   \
		 ROCK_TOMB, */    
	; end

	db 0 ; padding
