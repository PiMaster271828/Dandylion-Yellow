	object_const_def
	const_export ROUTE4_COOLTRAINER_F1
	const_export ROUTE4_COOLTRAINER_F2
	const_export ROUTE4_COOLTRAINER_F3
	const_export ROUTE4_YOUNGSTER1
	const_export ROUTE4_TM_WHIRLWIND

Route4_Object:
	db $2c ; border block

	def_warp_events
	warp_event 11,  5, MT_MOON_POKECENTER, 1
	warp_event 18,  5, MT_MOON_1F, 1
	warp_event 26,  5, MT_MOON_B1F, 8

	def_bg_events
	bg_event 12,  5, TEXT_ROUTE4_POKECENTER_SIGN
	bg_event 17,  7, TEXT_ROUTE4_MT_MOON_SIGN
	bg_event 29,  7, TEXT_ROUTE4_SIGN

	def_object_events
	object_event  9,  8, SPRITE_COOLTRAINER_F, WALK, ANY_DIR, TEXT_ROUTE4_COOLTRAINER_F1, OPP_LASS, 20      ; New trainer replaced the NPC added by G-Dubs
	object_event 63,  3, SPRITE_COOLTRAINER_F, STAY, RIGHT, TEXT_ROUTE4_COOLTRAINER_F2, OPP_LASS, 4
	object_event 41,  2, SPRITE_COOLTRAINER_F, STAY, DOWN, TEXT_ROUTE4_COOLTRAINER_F3, OPP_JR_TRAINER_F, 2  ; New trainer added by G-Dubs
	object_event 62, 10, SPRITE_YOUNGSTER, STAY, LEFT, TEXT_ROUTE4_YOUNGSTER1, OPP_BUG_CATCHER, 12          ; New trainer added by G-Dubs
	object_event 57,  3, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROUTE4_TM_WHIRLWIND, TM_WHIRLWIND

	def_warps_to ROUTE_4
