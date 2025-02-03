	db DEX_PIDGEOT ; pokedex id

	db  85, 100,  80, 145,  75 ; 555
	;   hp  atk  def  spd  spc   tot

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 172 ; base exp

	INCBIN "gfx/pokemon/front/pidgeot.pic", 0, 1 ; sprite dimensions
	dw PidgeotPicFront, PidgeotPicBack

	db TACKLE, SAND_ATTACK, GUST,  QUICK_ATTACK ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   WHIRLWIND,     TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         MIMIC,         DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     SWIFT,        SKY_ATTACK,    REST,         SUBSTITUTE, /*STEEL_WING, */\
	     FLY
	   /*AERIAL_ACE,   GIGA_IMPACT,   DUALWINGBEAT, ICY_WIND,     SEARING_SAND, \
		 MUD-SLAP,   */  
	; end

	db 0 ; padding
