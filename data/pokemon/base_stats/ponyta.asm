	db DEX_PONYTA ; pokedex id

	db  50,  85,  55, 100,  65 ; 420
	;   hp  atk  def  spd  spc   tot

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 152 ; base exp

	INCBIN "gfx/pokemon/front/ponyta.pic", 0, 1 ; sprite dimensions
	dw PonytaPicFront, PonytaPicBack

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_KICK,    TOXIC,        HORN_DRILL,   BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  RAGE,         MIMIC,        DOUBLE_TEAM,  REFLECT,      \
		 BIDE,         FIRE_BLAST,   SWIFT,        SKULL_BASH,   REST,         \
		 SUBSTITUTE, /*FLAMETHROWER, HEADBUTT,     IRON_TAIL,    WILD_CHARGE,  \
		 ROCK_SMASH,   PLAY_ROUGH */
	; end

	db 0 ; padding
