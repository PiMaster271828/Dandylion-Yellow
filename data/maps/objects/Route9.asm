	object_const_def
	const_export ROUTE9_COOLTRAINER_F1
	const_export ROUTE9_COOLTRAINER_M1      ; A.J. from the Anime and his OP Sandshrew
	const_export ROUTE9_COOLTRAINER_M2
	const_export ROUTE9_COOLTRAINER_F2
	const_export ROUTE9_HIKER1
	const_export ROUTE9_HIKER2
	const_export ROUTE9_YOUNGSTER1
	const_export ROUTE9_HIKER3
	const_export ROUTE9_YOUNGSTER2
	const_export ROUTE9_COOLTRAINER_M3      ; New trainer added by G-Dubs
	const_export ROUTE9_COOLTRAINER_M4		; New trainer added by G-Dubs
	const_export ROUTE9_COOLTRAINER_F3      ; New trainer added by G-Dubs
	const_export ROUTE9_YOUNGSTER3			; New trainer added by G-Dubs
	const_export ROUTE9_TM_TELEPORT

Route9_Object:
	db $2c ; border block

	def_warp_events

	def_bg_events
	bg_event 27,  9, TEXT_ROUTE9_SIGN

	def_object_events
	object_event 13, 12, SPRITE_COOLTRAINER_F, STAY, LEFT, TEXT_ROUTE9_COOLTRAINER_F1, OPP_JR_TRAINER_F, 5
	object_event 26,  9, SPRITE_COOLTRAINER_M, STAY, LEFT, TEXT_ROUTE9_COOLTRAINER_M1, OPP_YOUNGSTER, 14     ; A.J. from the Anime and his OP Sandshrew
	object_event 34,  8, SPRITE_COOLTRAINER_M, STAY, RIGHT, TEXT_ROUTE9_COOLTRAINER_M2, OPP_JR_TRAINER_M, 8
	object_event 48, 10, SPRITE_COOLTRAINER_F, STAY, RIGHT, TEXT_ROUTE9_COOLTRAINER_F2, OPP_JR_TRAINER_F, 6
	object_event 21, 17, SPRITE_HIKER, STAY, LEFT, TEXT_ROUTE9_HIKER1, OPP_HIKER, 11
	object_event 48,  3, SPRITE_HIKER, STAY, LEFT, TEXT_ROUTE9_HIKER2, OPP_HIKER, 6
	object_event 23,  2, SPRITE_YOUNGSTER, STAY, DOWN, TEXT_ROUTE9_YOUNGSTER1, OPP_BUG_CATCHER, 13
	object_event 43, 17, SPRITE_HIKER, STAY, LEFT, TEXT_ROUTE9_HIKER3, OPP_HIKER, 5
	object_event 40, 10, SPRITE_YOUNGSTER, STAY, RIGHT, TEXT_ROUTE9_YOUNGSTER2, OPP_BUG_CATCHER, 14
	object_event 10, 17, SPRITE_COOLTRAINER_M, STAY, RIGHT, TEXT_ROUTE9_COOLTRAINER_M3, OPP_JR_TRAINER_M, 6	 ; New trainer added by G-Dubs
	object_event 26, 17, SPRITE_COOLTRAINER_M, STAY, RIGHT, TEXT_ROUTE9_COOLTRAINER_M4, OPP_JR_TRAINER_M, 7	 ; New trainer added by G-Dubs
	object_event  6,  8, SPRITE_COOLTRAINER_F, STAY, RIGHT, TEXT_ROUTE9_COOLTRAINER_F3, OPP_LASS, 22	     ; New trainer added by G-Dubs
	object_event 46, 17, SPRITE_YOUNGSTER, STAY, RIGHT, TEXT_ROUTE9_YOUNGSTER3, OPP_BUG_CATCHER, 22          ; New trainer added by G-Dubs
	object_event 16, 17, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROUTE9_TM_TELEPORT, TM_TELEPORT

	def_warps_to ROUTE_9
