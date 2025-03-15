	db DEX_KRABBY ; pokedex id

	db  30, 105,  90,  50,  25 ; 325
	;   hp  atk  def  spd  spc   tot

	db WATER, WATER ; type
	db 225 ; catch rate
	db 115 ; base exp

	INCBIN "gfx/pokemon/front/krabby.pic", 0, 1 ; sprite dimensions
	dw KrabbyPicFront, KrabbyPicBack

	db BUBBLE, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         \
		 DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         SKULL_BASH,   \
		 REST,         SUBSTITUTE, /*AERIAL_ACE,   HEADBUTT,     ICY_WIND,   */\
		 CUT,          SURF,         STRENGTH
	   /*SHADOW_CLAW,  MUD-SLAP,     ROCK_SMASH,   ROCK_TOMB,    SPIN_SLASH,   \
	   */
	; end

	db 0 ; padding
