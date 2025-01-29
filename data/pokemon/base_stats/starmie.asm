	db DEX_STARMIE ; pokedex id

	db  60,  55, 105, 115, 100 ; 535
	;   hp  atk  def  spd  spc   tot

	db WATER, PSYCHIC_TYPE ; type
	db 60 ; catch rate
	db 207 ; base exp

	INCBIN "gfx/pokemon/front/starmie.pic", 0, 1 ; sprite dimensions
	dw StarmiePicFront, StarmiePicBack

	db TACKLE, WITHDRAW, WATER_GUN, HARDEN ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         THUNDERBOLT,  \
		 THUNDER,      PSYCHIC_M,    TELEPORT,     MIMIC,        DOUBLE_TEAM,  \
		 REFLECT,      BIDE,         SWIFT,        SKULL_BASH,/*LIGHT_SCREEN,*/\
		 REST,         THUNDER_WAVE, PSYWAVE,      TRI_ATTACK,   SUBSTITUTE,   \
	   /*GIGA_IMPACT,  HEADBUTT, */  SURF,         FLASH
	; end

	db 0 ; padding
