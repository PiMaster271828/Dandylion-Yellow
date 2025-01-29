	db DEX_WEEZING ; pokedex id

	db  60,  90, 120,  80,  75 ; 500
	;   hp  atk  def  spd  spc   tot

	db POISON, POISON ; type
	db 60 ; catch rate
	db 173 ; base exp

	INCBIN "gfx/pokemon/front/weezing.pic", 0, 1 ; sprite dimensions
	dw WeezingPicFront, WeezingPicBack

	db TACKLE, SMOG, SLUDGE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset	 
	tmhm TOXIC,        RAGE,         THUNDERBOLT,  THUNDER,      MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         SELFDESTRUCT, FIRE_BLAST,   REST,         \
	     EXPLOSION,    SUBSTITUTE/*, SLUDGE_BOMB,  FLAMETHROWER, GIGA_IMPACT   \
		 DARK_PULSE,   SHADOW_BALL,  ICY_WIND,     SEARING_SAND, SLUDGE_WAVE  */
	; end

	db 0 ; padding
