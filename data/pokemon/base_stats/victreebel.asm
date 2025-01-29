	db DEX_VICTREEBEL ; pokedex id

	db  80, 105,  65,  70,  80 ; 500
	;   hp  atk  def  spd  spc   tot

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 191 ; base exp

	INCBIN "gfx/pokemon/front/victreebel.pic", 0, 1 ; sprite dimensions
	dw VictreebelPicFront, VictreebelPicBack

	db VINE_WHIP, WRAP, ACID, RAZOR_LEAF ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         \
	     MEGA_DRAIN,   SOLARBEAM,    MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         REST,         SUBSTITUTE,   /*SLUDGE_BOMB, GIGA_IMPACT, \
	 	 SEED_BOMB,    SLUDGE_WAVE,  GIGA_DRAIN,   POISON_JAB, */CUT
	; end

	db 0 ; padding
