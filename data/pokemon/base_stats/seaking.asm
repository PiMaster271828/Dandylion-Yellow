	db DEX_SEAKING ; pokedex id

	db  80,  95,  95,  75,  95 ; 535
	;   hp  atk  def  spd  spc   tot

	db WATER, WATER ; type
	db 60 ; catch rate
	db 170 ; base exp

	INCBIN "gfx/pokemon/front/seaking.pic", 0, 1 ; sprite dimensions
	dw SeakingPicFront, SeakingPicBack

	db SPLASH, PECK, TAIL_WHIP, SUPERSONIC ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        HORN_DRILL,   TAKE_DOWN,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         \
		 MIMIC,        DOUBLE_TEAM,  BIDE,         SWIFT,        SKULL_BASH,   \
		 REST,         SUBSTITUTE, /*GIGA_IMPACT,  HEADBUTT,     ICY_WIND, */  \
	   /*POISON_JAB,*/ SURF
	; end

	db 0 ; padding
