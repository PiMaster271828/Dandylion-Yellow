	db DEX_ELECTRODE ; pokedex id

	db  60,  55,  70, 150,  95 ; 425
	;   hp  atk  def  spd  spc   tot

	db ELECTRIC, ELECTRIC ; type
	db 60 ; catch rate
	db 150 ; base exp

	INCBIN "gfx/pokemon/front/electrode.pic", 0, 1 ; sprite dimensions
	dw ElectrodePicFront, ElectrodePicBack

	db TACKLE, SCREECH, SONICBOOM, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        TAKE_DOWN,    HYPER_BEAM,   RAGE,         THUNDERBOLT,  \
	     THUNDER,      TELEPORT,     MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         SELFDESTRUCT, SWIFT,        SKULL_BASH, /*LIGHT_SCREEN*/\
		 REST,         THUNDER_WAVE, EXPLOSION,    SUBSTITUTE, /*GIGA_IMPACT,*/\
	   /*WILD_CHARGE,  MIRROR_COAT,  FLASH_CANNON, SHOCK_WAVE, */FLASH
	; end

	db 0 ; padding
