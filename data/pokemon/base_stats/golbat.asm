	db DEX_GOLBAT ; pokedex id

	db  85,  90,  85, 105,  75 ; 515
	;   hp  atk  def  spd  spc   tot

	db POISON, FLYING ; type
	db 90 ; catch rate
	db 171 ; base exp

	INCBIN "gfx/pokemon/front/golbat.pic", 0, 1 ; sprite dimensions
	dw GolbatPicFront, GolbatPicBack

	db ABSORB, SUPERSONIC, /*GNAW*/BITE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   WHIRLWIND,    TOXIC,         TAKE_DOWN,     DOUBLE_EDGE,  \
	     RAGE,         MEGA_DRAIN,   TELEPORT,      MIMIC,         DOUBLE_TEAM,  \
		 BIDE,         SWIFT,        REST,          SUBSTITUTE,  /*STEEL_WING, */\
		 FLY
	   /*SLUDGE_BOMB,  AERIAL_ACE,   GIGA_IMPACT,   DARK_PULSE,    HYPER_VOICE,  \
		 DUALWINGBEAT, SHADOW_BALL,  MUD-SLAP,      SLUDGE_WAVE,   GIGA_DRAIN,   \
		 POISON_JAB, */
	; end

	db 0 ; padding
