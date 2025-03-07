	db DEX_NIDOKING ; pokedex id

	db  90, 105,  85,  85,  75 ; 515 
	;   hp  atk  def  spd  spc   tot

	db POISON, GROUND ; type
	db 45 ; catch rate
	db 195 ; base exp

	INCBIN "gfx/pokemon/front/nidoking.pic", 0, 1 ; sprite dimensions
	dw NidokingPicFront, NidokingPicBack

	db TACKLE, HORN_ATTACK, POISON_STING, THRASH ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        HORN_DRILL,   BODY_SLAM,    \
	     TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     \
	     BLIZZARD,     HYPER_BEAM,   PAY_DAY,      SUBMISSION,   COUNTER,      \
	     SEISMIC_TOSS, RAGE,         THUNDERBOLT,  THUNDER,      EARTHQUAKE,   \
	     FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  REFLECT,      \
		 BIDE,         FIRE_BLAST,   SKULL_BASH,   REST,         ROCK_SLIDE,   \
		 SUBSTITUTE, /*SLUDGE_BOMB,  FLAMETHROWER, FIRE_PUNCH,  THUNDERPUNCH,*/\
		 SURF,         STRENGTH
	   /*GIGA_IMPACT,  ICE_PUNCH,    HEADBUTT,     IRON_TAIL,    ICY_WIND,     \
		 WILD_CHARGE,  STONE_EDGE,   SEARING_SAND, SHOCK_WAVE,   MUD-SLAP,     \
		 SLUDGE_WAVE,  ROCK_SMASH,   EARTH_POWER,  PLAY_ROUGH,   DRAIN_PUNCH,  \
		 POISON_JAB,   ROCK_TOMB,  */  
	; end

	db 0 ; padding
