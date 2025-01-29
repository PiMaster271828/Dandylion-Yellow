	db DEX_TENTACOOL ; pokedex id

	db  40,  40,  35,  70, 100 ; 385
	;   hp  atk  def  spd  spc   tot

	db WATER, POISON ; type
	db 190 ; catch rate
	db 105 ; base exp

	INCBIN "gfx/pokemon/front/tentacool.pic", 0, 1 ; sprite dimensions
	dw TentacoolPicFront, TentacoolPicBack

	db POISON_STING, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         MEGA_DRAIN,   \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
		 SKULL_BASH,   REST,         SUBSTITUTE, /*SLUDGE_BOMB,  DARK_PULSE, */\
		 CUT,          SURF
	   /*HEADBUTT,     SHADOW_BALL,  ICY_WIND,     MIRROR_COAT,  SLUDGE_WAVE,  \
		 MAGICALGLEAM, GIGA_DRAIN,   POISON_JAB, */   
	; end

	db 0 ; padding
