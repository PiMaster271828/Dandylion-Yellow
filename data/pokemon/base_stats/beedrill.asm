	db DEX_BEEDRILL ; pokedex id

	db  65, 125,  65, 105,  45 ; 440
	;   hp  atk  def  spd  spc   tot

	db BUG, POISON ; type
	db 45 ; catch rate
	db 159 ; base exp

	INCBIN "gfx/pokemon/front/beedrill.pic", 0, 1 ; sprite dimensions
	dw BeedrillPicFront, BeedrillPicBack

	db HORN_ATTACK, POISON_STING, FURY_ATTACK, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        DOUBLE_TEAM,  \
		 REFLECT,      BIDE,         SWIFT,        SKULL_BASH,   REST,         \
		 SUBSTITUTE, /*SLUDGE_BOMB,  AERIAL_ACE,   GIGA_IMPACT,  DARK_PULSE,   \
		 HEADBUTT,     ROCK_SMASH,   GIGA_DRAIN,   POISON_JAB,*/ CUT,          \
		 FLASH
	; end

	db 0 ; padding
