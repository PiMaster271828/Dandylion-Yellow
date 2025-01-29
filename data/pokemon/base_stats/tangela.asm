	db DEX_TANGELA ; pokedex id

	db  70,  55, 115,  60, 100 ; 500
	;   hp  atk  def  spd  spc   tot

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 166 ; base exp

	INCBIN "gfx/pokemon/front/tangela.pic", 0, 1 ; sprite dimensions
	dw TangelaPicFront, TangelaPicBack

	db CONSTRICT, ABSORB, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  RAGE,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         SKULL_BASH,   REST,         SUBSTITUTE,   \
		 CUT
	   /*SLUDGE_BOMB,  GIGA_IMPACT,  HEADBUTT,     ROCK_SMASH,   SLUDGE_WAVE,*/\
	; end

	db 0 ; padding
