	db DEX_MEOWTH ; pokedex id

	db  40,  50,  35,  85,  55 ; 325
	;   hp  atk  def  spd  spc   tot

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 69 ; base exp

	INCBIN "gfx/pokemon/front/meowth.pic", 0, 1 ; sprite dimensions
	dw MeowthPicFront, MeowthPicBack

	db SCRATCH, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    PAY_DAY,      RAGE,         THUNDERBOLT,  THUNDER,      \
	     DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         METRONOME,    \
		 SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE, /*AERIAL_ACE  */\
		 CUT
	   /*DARK_PULSE,   HEADBUTT,     IRON_TAIL,    SHADOW_BALL,  ALURINGVOICE, \
		 SHOCK_WAVE,   SHADOW_CLAW,  SEED_BOMB,    MUD-SLAP,     ROCK_SMASH,   \
		 PLAY_ROUGH,   SPIN_SLASH, */  
	; end

	db 0 ; padding
