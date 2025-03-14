	db DEX_CLEFABLE ; pokedex id

	db  95,  70,  75,  60,  95 ; 490
	;   hp  atk  def  spd  spc   tot

	db FAIRY, SOUND ; type
	db 25 ; catch rate
	db 129 ; base exp

	INCBIN "gfx/pokemon/front/clefable.pic", 0, 1 ; sprite dimensions
	dw ClefablePicFront, ClefablePicBack

	db SING, DOUBLESLAP, MINIMIZE, METRONOME ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     PAY_DAY,      SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
		 SOLARBEAM,    THUNDERBOLT,  THUNDER,      PSYCHIC_M,    TELEPORT,     \
		 MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         METRONOME,    \
		 FIRE_BLAST,   SWIFT,        SKULL_BASH, /*LIGHT_SCREEN*/REST,         \
		 DREAM_EATER,  THUNDER_WAVE, PSYWAVE,      TRI_ATTACK,   SUBSTITUTE,   \
         STRENGTH,     FLASH	   
	   /*FLAMETHROWER, FIRE_PUNCH,   THUNDERPUNCH, GIGA_IMPACT,  DARK_PULSE,   \
		 ICE_PUNCH,    HYPER_VOICE,  HEADBUTT,     IRON_TAIL,    SHADOW_BALL,  \
		 ICY_WIND,     ALURINGVOICE, WILD_CHARGE,  MIRROR_COAT,  FLASH_CANNON, \
		 SHOCK_WAVE,   ROCK_SMASH,   MAGICALGLEAM, PLAY_ROUGH,   DRAIN_PUNCH,  \ 
	   */
	; end

	db 0 ; padding
