	db DEX_DEWGONG ; pokedex id

	db 100,  70,  85,  70,  95 ; 515
	;   hp  atk  def  spd  spc   tot

	db WATER, ICE ; type
	db 75 ; catch rate
	db 176 ; base exp

	INCBIN "gfx/pokemon/front/dewgong.pic", 0, 1 ; sprite dimensions
	dw DewgongPicFront, DewgongPicBack

	db HEADBUTT, GROWL, /*POWDER_SNOW, TAIL_SLAP*/ NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        HORN_DRILL,   BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     PAY_DAY,      \
	     RAGE,         MIMIC,        DOUBLE_TEAM,  BIDE,         SKULL_BASH,   \
	     REST,         SUBSTITUTE, /*GIGA_IMPACT,  HYPER_VOICE,  HEADBUTT,   */\
	   /*IRON_TAIL,    ICY_WIND,     ALURINGVOICE, POISON_JAB  */SURF,         \
	     STRENGTH
	; end

	db 0 ; padding
