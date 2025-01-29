	db DEX_VOLTORB ; pokedex id

	db  40,  30,  50, 100,  55 ; 330
	;   hp  atk  def  spd  spc   tot

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 103 ; base exp

	INCBIN "gfx/pokemon/front/voltorb.pic", 0, 1 ; sprite dimensions
	dw VoltorbPicFront, VoltorbPicBack

	db TACKLE, THUNDERSHOCK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         THUNDERBOLT,  \
	     THUNDER,      TELEPORT,     MIMIC,        DOUBLE_TEAM,  REFLECT,      \
		 BIDE,         SELFDESTRUCT, SWIFT,     /*LIGHT_SCREEN,*/REST,         \
		 THUNDER_WAVE, EXPLOSION,    SUBSTITUTE, /*WILD_CHARGE,  MIRROR_COAT,*/\
	   /*FLASH_CANNON, SHOCK_WAVE,*/ FLASH
	; end

	db 0 ; padding
