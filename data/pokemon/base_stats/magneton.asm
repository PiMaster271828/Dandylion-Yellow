	db DEX_MAGNETON ; pokedex id

	db  50,  60,  95,  70, 120 ; 515
	;   hp  atk  def  spd  spc   tot

	db ELECTRIC, STEEL ; type
	db 60 ; catch rate
	db 161 ; base exps

	INCBIN "gfx/pokemon/front/magneton.pic", 0, 1 ; sprite dimensions
	dw MagnetonPicFront, MagnetonPicBack

	db TACKLE, THUNDERSHOCK, SONICBOOM, THUNDER_WAVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,   RAGE,         THUNDERBOLT,  \
	     THUNDER,      TELEPORT,     MIMIC,         DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         SELFDESTRUCT, SWIFT,      /*LIGHT_SCREEN,*/REST,         \
		 THUNDER_WAVE, EXPLOSION,    TRI_ATTACK,    SUBSTITUTE, /*GIGA_IMPACT,*/\
	   /*WILD_CHARGE,  MIRROR_COAT,  FLASH_CANNON,  SHOCK_WAVE, */FLASH
	; end

	db 0 ; padding
