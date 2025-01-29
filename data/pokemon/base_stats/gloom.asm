	db DEX_GLOOM ; pokedex id

	db  60,  65,  65,  40,  85 ; 400
	;   hp  atk  def  spd  spc   tot

	db GRASS, POISON ; type
	db 120 ; catch rate
	db 132 ; base exp

	INCBIN "gfx/pokemon/front/gloom.pic", 0, 1 ; sprite dimensions
	dw GloomPicFront, GloomPicBack

	db TACKLE, ABSORB, POISONPOWDER, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        DOUBLE_TEAM,  \
		 REFLECT,      BIDE,         REST,         SUBSTITUTE, /*SLUDGE_BOMB,*/\
	     CUT
	   /*SEED_BOMB,    SLUDGE_WAVE,  MAGICALGLEAM, GIGA_DRAIN,   POISON_JAB,  */
		 
	; end

	db 0 ; padding
