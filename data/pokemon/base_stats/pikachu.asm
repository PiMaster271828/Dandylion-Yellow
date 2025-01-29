	db DEX_PIKACHU ; pokedex id

	db  45,  75,  45, 120,  75 ; 435
	;   hp  atk  def  spd  spc   tot

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 82 ; base exp

	INCBIN "gfx/pokemon/front/pikachu.pic", 0, 1 ; sprite dimensions
	dw PikachuPicFront, PikachuPicBack

	db THUNDERSHOCK, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,     TAKE_DOWN,    \
	     DOUBLE_EDGE,  PAY_DAY,      SUBMISSION,   SEISMIC_TOSS,  RAGE,         \
	     THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,   REFLECT,      \
	     BIDE,         SWIFT,        SKULL_BASH, /*LIGHT_SCREEN,*/   REST,      \
		 THUNDER_WAVE, TRI_ATTACK,   SUBSTITUTE, /*THUNDER_PUNCH, GIGA_IMPACT,*/\
		 FLY,          SURF,          STRENGTH,                                 \
		 FLASH
	   /*HEADBUTT,     IRON_TAIL,    WILD_CHARGE,  MIRROR_COAT,   SHOCK_WAVE,   \
	     ROCK_SMASH,   PLAY_ROUGH */  
		 
	; end

	db 0 ; padding
