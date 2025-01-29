	db DEX_BUTTERFREE ; pokedex id

	db  70,  50,  50,  80,  95 ; 440 
	;   hp  atk  def  spd  spc   tot

	db BUG, FLYING ; type
	db 45 ; catch rate
	db 160 ; base exp

	INCBIN "gfx/pokemon/front/butterfree.pic", 0, 1 ; sprite dimensions
	dw ButterfreePicFront, ButterfreePicBack

	db /*BUG_BITE*/ TACKLE, CONFUSION, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   WHIRLWIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         MEGA_DRAIN,   SOLARBEAM,    PSYCHIC_M,    TELEPORT,     \
		 MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
	   /*LIGHT_SCREEN,*/DREAM_EATER, REST,         PSYWAVE,      SUBSTITUTE,   \
	     FLASH
	   /*AERIAL_ ACE,  GIGA_IMPACT,  HYPER_VOICE,  DUALWINGBEAT, SHADOW_BALL,  \*/ 
	; end

	db 0 ; padding
