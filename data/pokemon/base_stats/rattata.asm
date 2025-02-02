	db DEX_RATTATA ; pokedex id

	db  30,  55,  35,  75,  35 ; 265
	;   hp  atk  def  spd  spc   tot

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 57 ; base exp

	INCBIN "gfx/pokemon/front/rattata.pic", 0, 1 ; sprite dimensions
	dw RattataPicFront, RattataPicBack

	db TACKLE, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         THUNDERBOLT,  \
		 THUNDER,      DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         \
		 SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE, /*SLUDGE_BOMB,*/\
         CUT	   
	   /*DARK_PULSE,   HEADBUTT,     IRON_TAIL,    SHADOW_BALL,  WILD_CHARGE,  \
		 SHOCK_WAVE,   SEED_BOMB,    MUD-SLAP,     ROCK_SMASH,   PLAY_ROUGH, */\
		 
	; end

	db 0 ; padding
