	db DEX_ODDISH ; pokedex id

	db  40,  50,  40,  30,  70 ; 300
	;   hp  atk  def  spd  spc   tot

	db GRASS, POISON ; type
	db 255 ; catch rate
	db 78 ; base exp

	INCBIN "gfx/pokemon/front/oddish.pic", 0, 1 ; sprite dimensions
	dw OddishPicFront, OddishPicBack

	db TACKLE, ABSORB, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        DOUBLE_TEAM,  \
		 REFLECT,      BIDE,         REST,         SUBSTITUTE, /*SLUDGE_BOMB,*/\
		 CUT
	   /*SEED_BOMB,    SLUDGE_WAVE,  MAGICALGLEAM, GIGA_DRAIN,   POISON_JAB,  */ 
		 
	; end

	db 0 ; padding
