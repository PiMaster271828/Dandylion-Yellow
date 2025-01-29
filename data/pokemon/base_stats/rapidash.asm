	db DEX_RAPIDASH ; pokedex id

	db  65, 100,  70, 125,  85 ; 530
	;   hp  atk  def  spd  spc   tot

	db FIRE, FIRE ; type
	db 60 ; catch rate
	db 192 ; base exp

	INCBIN "gfx/pokemon/front/rapidash.pic", 0, 1 ; sprite dimensions
	dw RapidashPicFront, RapidashPicBack

	db TACKLE, GROWL, /*KINDLE,*/ NO_MOVE, TAIL_WHIP ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_KICK,    TOXIC,        HORN_DRILL,   BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  RAGE,         MIMIC,        DOUBLE_TEAM,  REFLECT,      \
		 BIDE,         FIRE_BLAST,   SWIFT,        SKULL_BASH,   REST,         \
		 SUBSTITUTE, /*FLAMETHROWER, GIGA_IMPACT,  HEADBUTT,     IRON_TAIL,    \
		 WILD_CHARGE,  ROCK_SMASH,   PLAY_ROUGH,   POISON_JAB */
	; end

	db 0 ; padding
