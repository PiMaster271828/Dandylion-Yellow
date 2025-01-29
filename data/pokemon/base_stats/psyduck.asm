	db DEX_PSYDUCK ; pokedex id

	db  50,  55,  50,  55,  65 ; 340
	;   hp  atk  def  spd  spc   tot

	db WATER, WATER ; type
	db 190 ; catch rate
	db 80 ; base exp

	INCBIN "gfx/pokemon/front/psyduck.pic", 0, 1 ; sprite dimensions
	dw PsyduckPicFront, PsyduckPicBack

	db SCRATCH, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     PAY_DAY,      SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     DIG,          PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  BIDE,         \
		 METRONOME,    SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE,   \
		 CUT,          SURF,         STRENGTH
	   /*AERIAL_ACE,   ICE_PUNCH,    HEADBUTT,     IRON_TAIL,    ICY_WIND,     \
		 MIRROR_COAT,  SHADOW_CLAW,  MUD_SLAP,     ROCK_SMASH,   CUT,          \
	   */	 		 
	; end

	db 0 ; padding
