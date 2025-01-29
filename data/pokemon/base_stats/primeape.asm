	db DEX_PRIMEAPE ; pokedex id

	db  70, 105,  60,  95,  60 ; 450
	;   hp  atk  def  spd  spc   tot

	db FIGHTING, FIGHTING ; type
	db 75 ; catch rate
	db 149 ; base exp

	INCBIN "gfx/pokemon/front/primeape.pic", 0, 1 ; sprite dimensions
	dw PrimeapePicFront, PrimeapePicBack

	db SCRATCH, LEER, LOW_KICK, KARATE_CHOP ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  PAY_DAY,      SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
		 RAGE,         THUNDERBOLT,  THUNDER,      DIG,          EARTHQUAKE,   \
		 MIMIC,        DOUBLE_TEAM,  BIDE,         METRONOME,    SWIFT,        \
	     SKULL_BASH,   REST,         ROCK_SLIDE,   SUBSTITUTE, /*FIRE_PUNCH, */\
		 STRENGTH
	   /*THUNDERPUNCH, GIGA_IMPACT,  ICE_PUNCH,    HEADBUTT,     WILD_CHARGE,  \
		 STONE_EDGE,   MUD-SLAP,     ROCK_SMASH,   PLAY_ROUGH,   DRAIN_PUNCH,  \
		 POISON_JAB,   ROCK_TOMB, */   
	; end

	db 0 ; padding
