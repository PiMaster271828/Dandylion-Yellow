	db DEX_NIDORINA ; pokedex id

	db  70,  70,  70,  55,  55 ; 375 
	;   hp  atk  def  spd  spc   tot

	db POISON, POISON ; type
	db 120 ; catch rate
	db 117 ; base exp

	INCBIN "gfx/pokemon/front/nidorina.pic", 0, 1 ; sprite dimensions
	dw NidorinaPicFront, NidorinaPicBack

	db GROWL, TACKLE, SCRATCH, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     COUNTER,      RAGE,         \
		 THUNDERBOLT,  THUNDER,      DIG,          MIMIC,        DOUBLE_TEAM,  \
		 REFLECT,      BIDE,         SKULL_BASH,   REST,         SUBSTITUTE,   \
	     STRENGTH	     
	   /*SLUDGE_BOMB,  HEADBUTT,     IRON_TAIL,    WILD_CHARGE,  SHOCK_WAVE,   \
		 SHADOW_CLAW,  MUD-SLAP,     ROCK_SMASH,   EARTH_POWER,  PLAY_ROUGH,   \
		 POISON_JAB, */  
	; end
	db 0 ; padding
