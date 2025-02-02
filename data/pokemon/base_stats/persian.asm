	db DEX_PERSIAN ; pokedex id

	db  65,  85,  60, 115,  85 ; 495
	;   hp  atk  def  spd  spc   tot

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 148 ; base exp

	INCBIN "gfx/pokemon/front/persian.pic", 0, 1 ; sprite dimensions
	dw PersianPicFront, PersianPicBack

	db SCRATCH, GROWL, LICK, BITE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    PAY_DAY,      RAGE,         THUNDERBOLT,  THUNDER,      \
	     DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         METRONOME,    \
		 SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE, /*AERIAL_ACE  */\
		 CUT
	   /*GIGA_IMPACT,  DARK_PULSE,   HEADBUTT,     IRON_TAIL,    SHADOW_BALL   \
		 ALURINGVOICE, WILD_CHARGE,  SHOCK_WAVE,   SHADOW_CLAW,  SEED_BOMB,    \
		 MUD-SLAP,     ROCK_SMASH,   MAGICALGLEAM, PLAY_ROUGH,   SPIN_SLASH,   \
	   */
	; end

	db 0 ; padding
