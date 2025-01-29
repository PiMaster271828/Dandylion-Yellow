	db DEX_RHYDON ; pokedex id

	db 105, 130, 160,  40,  45 ; 525 
	;   hp  atk  def  spd  spc   tot

	db GROUND, ROCK ; type
	db 60 ; catch rate
	db 204 ; base exp

	INCBIN "gfx/pokemon/front/rhydon.pic", 0, 1 ; sprite dimensions
	dw RhydonPicFront, RhydonPicBack

	db TACKLE, HORN_ATTACK, STOMP, TAIL_WHIP ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        HORN_DRILL,   BODY_SLAM,     \
	     TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,      \
	     BLIZZARD,     HYPER_BEAM,   PAY_DAY,      SUBMISSION,   COUNTER,       \
	     SEISMIC_TOSS, RAGE,         THUNDERBOLT,  THUNDER,      EARTHQUAKE,    \
	     FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,          \
	     FIRE_BLAST,   SKULL_BASH,   REST,         ROCK_SLIDE,   SUBSTITUTE,    \
	     SURF,         STRENGTH
	   /*FLAMETHROWER, FIRE_PUNCH,   TOMBSTONER,   THUNDER_PUNCH, GIGA_IMPACT,  \
	     ICE_PUNCH,    HEADBUTT,     IRON_TAIL,    WILD_CHARGE,   STONE_EDGE,   \
		 SEARING_SAND, MUD-SLAP,     ROCK_SMASH,   POISON_JAB,    ROCK_TOMB,    \ */
		 
	; end

	db 0 ; padding
