	db DEX_KINGLER ; pokedex id

	db  55, 130, 115,  75,  50 ; 475
	;   hp  atk  def  spd  spc   tot

	db WATER, WATER ; type
	db 60 ; catch rate
	db 206 ; base exp

	INCBIN "gfx/pokemon/front/kingler.pic", 0, 1 ; sprite dimensions
	dw KinglerPicFront, KinglerPicBack

	db BUBBLE, LEER, VICEGRIP, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     SUBMISSION,   \
		 RAGE,         EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        \
		 DOUBLE_TEAM,  BIDE,         SKULL_BASH,   REST,         ROCK_SLIDE,   \
		 SUBSTITUTE, /*AERIAL_ACE,   GIGA_IMPACT,  HEADBUTT,     ICY_WIND,   */\
	     CUT,          SURF,         STRENGTH
	   /*SHADOW_CLAW,  MUD-SLAP,     ROCK_SMASH,   ROCK_TOMB,    SPIN_SLASH,   \
	   */
	; end

	db 0 ; padding
