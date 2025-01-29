	db DEX_SEEL ; pokedex id

	db  65,  45,  55,  45,  70 ; 350
	;   hp  atk  def  spd  spc   tot

	db WATER, WATER ; type
	db 190 ; catch rate
	db 100 ; base exp

	INCBIN "gfx/pokemon/front/seel.pic", 0, 1 ; sprite dimensions
	dw SeelPicFront, SeelPicBack

	db HEADBUTT, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        HORN_DRILL,   BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     PAY_DAY,      \
	     RAGE,         MIMIC,        DOUBLE_TEAM,  BIDE,         SKULL_BASH,   \
	     REST,         SUBSTITUTE, /*HYPER_VOICE,  HEADBUTT,     IRON_TAIL, */ \
	   /*ICY_WIND,   */SURF,         STRENGTH
	; end

	db 0 ; padding
