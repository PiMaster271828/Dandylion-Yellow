	db DEX_RATICATE ; pokedex id

	db  50, 100,  60, 100,  70 ; 450
	;   hp  atk  def  spd  spc   tot

	db NORMAL, DARK ; type
	db 90 ; catch rate
	db 116 ; base exp

	INCBIN "gfx/pokemon/front/raticate.pic", 0, 1 ; sprite dimensions
	dw RaticatePicFront, RaticatePicBack

	db TACKLE, TAIL_WHIP, QUICK_ATTACK, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         THUNDERBOLT,  \
		 THUNDER,      DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         \
		 SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE, /*SLUDGE_BOMB,*/\
	     CUT,          STRENGTH
	   /*GIGA_IMPACT,  DARK_PULSE,   HEADBUTT,     IRON_TAIL,    SHADOW_BALL,  \
		 WILD_CHARGE,  SHOCK_WAVE,   SEED_BOMB,    MUD-SLAP,     ROCK_SMASH,   \
		 PLAY_ROUGH, */   
	; end

	db 0 ; padding
