	db DEX_ZUBAT ; pokedex id

	db  40,  45,  35,  55,  40 ; 255
	;   hp  atk  def  spd  spc   tot

	db POISON, FLYING ; type
	db 255 ; catch rate
	db 54 ; base exp

	INCBIN "gfx/pokemon/front/zubat.pic", 0, 1 ; sprite dimensions
	dw ZubatPicFront, ZubatPicBack

	db ABSORB, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm  RAZOR_WIND,   WHIRLWIND,    TOXIC,         TAKE_DOWN,    DOUBLE_EDGE,  \
	      RAGE,         MEGA_DRAIN,   TELEPORT,      MIMIC,        DOUBLE_TEAM,  \
		  BIDE,         SWIFT,        REST,          SUBSTITUTE,   /*STEEL_WING,   \
		  SLUDGE_BOMB,  AERIAL_ACE,   DARK_PULSE,    DUALWINGBEAT, SHADOW_BALL,  \
		  GIGA_DRAIN,*/   FLY
	; end

	db 0 ; padding
