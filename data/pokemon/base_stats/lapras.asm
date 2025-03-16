	db DEX_LAPRAS ; pokedex id

	db 150,  85,  80,  60,  95 ; 555
	;   hp  atk  def  spd  spc   tot

	db WATER, ICE ; type
	db 45 ; catch rate
	db 219 ; base exp

	INCBIN "gfx/pokemon/front/lapras.pic", 0, 1 ; sprite dimensions
	dw LaprasPicFront, LaprasPicBack

	db WATER_GUN, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        HORN_DRILL,   BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     RAGE,         SOLARBEAM,    DRAGON_RAGE,  THUNDERBOLT,  THUNDER,      \
	     EARTHQUAKE,   FISSURE,      PSYCHIC_M,    TELEPORT,     MIMIC,        \
		 DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        SKULL_BASH,   \
      /*LIGHT_SCREEN,*/ REST,        THUNDER_WAVE, PSYWAVE,      SUBSTITUTE,   \
		 SURF,         STRENGTH
	   /*GIGA_IMPACT,  HYPER_VOICE,  HEADBUTT,     ICY_WIND,     ALURINGVOICE, \
		 MIRROR_COAT,  ROCK_SMASH, */
	; end

	db 0 ; padding
