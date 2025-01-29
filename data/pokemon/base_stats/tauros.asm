	db DEX_TAUROS ; pokedex id

	db  95, 110, 100, 110,  70 ; 555
	;   hp  atk  def  spd  spc   tot

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 211 ; base exp

	INCBIN "gfx/pokemon/front/tauros.pic", 0, 1 ; sprite dimensions
	dw TaurosPicFront, TaurosPicBack

	db TACKLE, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_KICK,    TOXIC,        HORN_DRILL,   BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
		 THUNDERBOLT,  THUNDER,      DIG,          EARTHQUAKE,   FISSURE,      \
		 MIMIC,        DOUBLE_TEAM,  BIDE,         FIRE_BLAST,   SKULL_BASH,   \
		 REST,         ROCK_SLIDE,   SUBSTITUTE, /*FLAMETHROWER, HEADBUTT, */  \
		 SURF,         STRENGTH
	   /*IRON_TAIL,    SHADOW_BALL,  WILD_CHARGE,  STONE_EDGE,   MUD-SLAP,     \
		 ROCK_SMASH,   POISON_JAB,   ROCK_TOMB, */    
	; end

	db 0 ; padding
