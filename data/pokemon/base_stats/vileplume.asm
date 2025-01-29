	db DEX_VILEPLUME ; pokedex id

	db  75,  70,  95,  50, 105 ; 500
	;   hp  atk  def  spd  spc   tot

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 184 ; base exp

	INCBIN "gfx/pokemon/front/vileplume.pic", 0, 1 ; sprite dimensions
	dw VileplumePicFront, VileplumePicBack

	db MEGA_DRAIN, SLEEP_POWDER, ACID, PETAL_DANCE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        DOUBLE_TEAM,  \
		 REFLECT,      BIDE,         REST,         SUBSTITUTE, /*SLUDGE_BOMB,  \
		 GIGA_IMPACT,  SEED_BOMB,    SLUDGE_WAVE,  PLAY_ROUGH,   GIGA_DRAIN,   \
		 POISON_JAB, */CUT
	; end

	db 0 ; padding
