	db DEX_VENOMOTH ; pokedex id

	db  70,  75,  60,  90,  90 ; 475
	;   hp  atk  def  spd  spc   tot

	db BUG, POISON ; type
	db 75 ; catch rate
	db 138 ; base exp

	INCBIN "gfx/pokemon/front/venomoth.pic", 0, 1 ; sprite dimensions
	dw VenomothPicFront, VenomothPicBack

	db TACKLE, DISABLE, SUPERSONIC, CONFUSION ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   WHIRLWIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         MEGA_DRAIN,   SOLARBEAM,    PSYCHIC_M,    TELEPORT,     \
		 MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
		 REST,         PSYWAVE,      SUBSTITUTE, /*SLUDGE_BOMB,  GIGA_DRAIN,*/ \
	   /*AERIAL_ACE,   GIGA_IMPACT,  SLUDGE_WAVE,  POISON_JAB,*/ FLASH
	; end

	db 0 ; padding
