	db DEX_KABUTOPS ; pokedex id

	db  60, 115, 125,  80,  75 ; 525 
	;   hp  atk  def  spd  spc   tot

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 201 ; base exp

	INCBIN "gfx/pokemon/front/kabutops.pic", 0, 1 ; sprite dimensions
	dw KabutopsPicFront, KabutopsPicBack

	db SCRATCH, ABSORB, /*METAL_CLAW,*/ NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   SWORDS_DANCE, MEGA_KICK,    TOXIC,        BODY_SLAM,    \
	     TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     \
	     BLIZZARD,     SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     MEGA_DRAIN,   EARTHQUAKE,   DIG,          MIMIC,        DOUBLE_TEAM,  \
		 REFLECT,      BIDE,         SKULL_BASH,   REST,         ROCK_SLIDE,   \
		 SUBSTITUTE, /*AERIAL_ACE,   GIGA_IMPACT,  HEADBUTT,     ICY_WIND,   */\
		 CUT,          SURF
	   /*STONE_EDGE,   DRAGON_CLAW,  SHADOW_CLAW,  MUD-SLAP,     ROCK_SMASH,   \  
		 EARTH_POWER,  GIGA_DRAIN,   POISON_JAB,   ROCK_TOMB,    SPIN_SLASH,   \
	   */	 
	; end

	db 0 ; padding
