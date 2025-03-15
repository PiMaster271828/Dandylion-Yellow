	db DEX_WARTORTLE ; pokedex id

	db  60,  65,  80,  60,  80 ; 425
	;   hp  atk  def  spd  spc   tot

	db WATER, WATER ; type
	db 45 ; catch rate
	db 143 ; base exp

	INCBIN "gfx/pokemon/front/wartortle.pic", 0, 1 ; sprite dimensions
	dw WartortlePicFront, WartortlePicBack

	db TACKLE, TAIL_WHIP, WITHDRAW, WATER_GUN ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         DIG,          \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         METRONOME,    \
		 SKULL_BASH,   REST,         SUBSTITUTE, /*ICE_PUNCH,    HEADBUTT,   */\
		 SURF,         STRENGTH
	   /*IRON_TAIL,    ICY_WIND,     MUD-SLAP,     ROCK_SMASH,   PLAY_ROUGH,   \
	   */
	; end

	db 0 ; padding
