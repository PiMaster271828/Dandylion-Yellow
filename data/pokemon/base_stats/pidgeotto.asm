	db DEX_PIDGEOTTO ; pokedex id

	db  65,  85,  55,  85,  50 ; 390
	;   hp  atk  def  spd  spc   tot

	db NORMAL, FLYING ; type
	db 120 ; catch rate
	db 113 ; base exp

	INCBIN "gfx/pokemon/front/pidgeotto.pic", 0, 1 ; sprite dimensions
	dw PidgeottoPicFront, PidgeottoPicBack

	db TACKLE, SAND_ATTACK, GUST, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   WHIRLWIND,     TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         MIMIC,         DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     SWIFT,        SKY_ATTACK,    REST,         SUBSTITUTE, /*STEEL_WING, */\
	   /*AERIAL_ACE,   DUALWINGBEAT,  MUD-SLAP, */  FLY
	; end

	db 0 ; padding
