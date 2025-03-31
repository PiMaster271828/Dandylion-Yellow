	db DEX_ELECTABUZZ ; pokedex id

	db  65,  85,  60, 105,  90 ; 495 
	;   hp  atk  def  spd  spc   tot

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 156 ; base exp

	INCBIN "gfx/pokemon/front/electabuzz.pic", 0, 1 ; sprite dimensions
	dw ElectabuzzPicFront, ElectabuzzPicBack

	db TACKLE, LEER, THUNDERSHOCK, QUICK_ATTACK ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
		 THUNDERBOLT,  THUNDER,      PSYCHIC_M,    TELEPORT,     MIMIC,        \
		 DOUBLE_TEAM,  REFLECT,      BIDE,         METRONOME,    SWIFT,        \
		 SKULL_BASH,/*LIGHT_SCREEN,*/REST,         THUNDER_WAVE, PSYWAVE,      \
	     SUBSTITUTE, /*FIRE_PUNCH,   THUNDERPUNCH  GIGA_IMPACT,  DARK_PULSE, */\
		 STRENGTH,     FLASH
	   /*ICE_PUNCH,    HEADBUTT,     IRON_TAIL,    WILD_CHARGE,  MIRROR_COAT,  \
	     SHOCK_WAVE,   ROCK_SMASH,   DRAIN_PUNCH */    
	; end

	db 0 ; padding
