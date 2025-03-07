	db DEX_JIGGLYPUFF ; pokedex id

	db 115,  45,  20,  20,  25 ; 250
	;   hp  atk  def  spd  spc   tot

	db FAIRY, SOUND ; type
	db 170 ; catch rate
	db 76 ; base exp

	INCBIN "gfx/pokemon/front/jigglypuff.pic", 0, 1 ; sprite dimensions
	dw JigglypuffPicFront, JigglypuffPicBack

	db SING, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     PAY_DAY,      SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
		 SOLARBEAM,    THUNDERBOLT,  THUNDER,      PSYCHIC_M,    TELEPORT,     \
		 MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         METRONOME,    \
		 FIRE_BLAST,   SWIFT,        SKULL_BASH,/*LIGHT_SCREEN,*/DREAM_EATER,  \
		 REST,         THUNDER_WAVE, PSYWAVE,      TRI_ATTACK,   SUBSTITUTE,   \
	     STRENGTH,     FLASH
	   /*FLAMETHROWER, FIRE_PUNCH,   THUNDERPUNCH, ICE_PUNCH,    HYPER_VOICE,  \
		 HEADBUTT,     SHADOW_BALL,  ICY_WIND,     ALURINGVOICE, MIRROR_COAT,  \
		 SHOCK_WAVE,   ROCK_SMASH,   MAGICALGLEAM, PLAY_ROUGH,   DRAIN_PUNCH,  \    
	   */
	; end

	db 0 ; padding
