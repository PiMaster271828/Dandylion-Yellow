	db DEX_VULPIX ; pokedex id

	db  40,  40,  40,  65,  65  ; 315
	;   hp  atk  def  spd  spc    tot

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 63 ; base exp

	INCBIN "gfx/pokemon/front/vulpix.pic", 0, 1 ; sprite dimensions
	dw VulpixPicFront, VulpixPicBack

	db TACKLE, /*KINDLE*/ EMBER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         \
	     DIG,          MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     FIRE_BLAST,   SWIFT,        SKULL_BASH,/*LIGHT_SCREEN,*/REST,         \
		 PSYWAVE,      SUBSTITUTE, /*FLAMETHROWER, DARK_PULSE,   HEADBUTT,     \
		 IRON_TAIL,    SHADOW_BALL,  MUD-SLAP,     ROCK_SMASH,   PLAY_ROUGH*/
	; end

	db 0 ; padding
