	db DEX_GOLDEEN ; pokedex id

	db  45,  70,  60,  65,  50 ; 340
	;   hp  atk  def  spd  spc   tot

	db WATER, WATER ; type
	db 225 ; catch rate
	db 111 ; base exp

	INCBIN "gfx/pokemon/front/goldeen.pic", 0, 1 ; sprite dimensions
	dw GoldeenPicFront, GoldeenPicBack

	db SPLASH, PECK, TAIL_WHIP, NO_MOVE, ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        HORN_DRILL,   TAKE_DOWN,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         \
		 MIMIC,        DOUBLE_TEAM,  BIDE,         SWIFT,        SKULL_BASH,   \
		 REST,         SUBSTITUTE, /*HEADBUTT,     ICY_WIND,     POISON_JAB, */\
		 SURF
	; end

	db 0 ; padding
