	db DEX_TENTACRUEL ; pokedex id

	db  80,  70,  65, 100, 120 ; 555
	;   hp  atk  def  spd  spc   tot

	db WATER, POISON ; type
	db 60 ; catch rate
	db 205 ; base exp

	INCBIN "gfx/pokemon/front/tentacruel.pic", 0, 1 ; sprite dimensions
	dw TentacruelPicFront, TentacruelPicBack

	db POISON_STING, CONSTRICT, BUBBLE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         MEGA_DRAIN,   \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
		 SKULL_BASH,   REST,         SUBSTITUTE, /*SLUDGE_BOMB,  GIGA_IMPACT,*/\
		 CUT,          SURF
	   /*DARK_PULSE,   HEADBUTT,     SHADOW_BALL,  ICY_WIND,     MIRROR_COAT,  \
		 SLUDGE_WAVE,  MAGICALGLEAM, GIGA_DRAIN,   POISON_JAB,   SPIN_SLASH,   \*/
		 
	; end

	db 0 ; padding
