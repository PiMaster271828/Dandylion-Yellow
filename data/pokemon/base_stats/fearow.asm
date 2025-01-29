	db DEX_FEAROW ; pokedex id

	db  65, 100,  65, 100,  60 ; 450
	;   hp  atk  def  spd  spc   tot

	db NORMAL, FLYING ; type
	db 90 ; catch rate
	db 162 ; base exp

	INCBIN "gfx/pokemon/front/fearow.pic", 0, 1 ; sprite dimensions
	dw FearowPicFront, FearowPicBack

	db PECK, GROWL, LEER, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,     WHIRLWIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,           MIMIC,        DOUBLE_TEAM,  BIDE,         SWIFT,        \
	     SKY_ATTACK,     REST,         SUBSTITUTE, /*STEEL_WING,   AERIAL_ACE, */\
	   /*GIGA_IMPACT,    DUALWINGBEAT, MUD-SLAP,   */FLY
	; end

	db 0 ; padding
