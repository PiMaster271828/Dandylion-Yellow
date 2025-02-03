	db DEX_KABUTO ; pokedex id

	db  30,  80, 100,  55,  55 ; 375
	;   hp  atk  def  spd  spc   tot

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 119 ; base exp

	INCBIN "gfx/pokemon/front/kabuto.pic", 0, 1 ; sprite dimensions
	dw KabutoPicFront, KabutoPicBack

	db SCRATCH, WITHDRAW, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         MEGA_DRAIN,   \
		 DIG,          MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
		 REST,         ROCK_SLIDE,   SUBSTITUTE, /*AERIAL_ACE,   ICY_WIND,   */\
		 CUT,          SURF
	   /*STONE_EDGE,   SHADOW_CLAW,  MUD-SLAP,     ROCK_SMASH,   EARTH_POWER,  \
		 GIGA_DRAIN,   ROCK_TOMB,  */  
	; end

	db 0 ; padding
