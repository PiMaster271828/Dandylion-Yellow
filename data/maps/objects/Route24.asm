	object_const_def
	const_export ROUTE24_COOLTRAINER_M1
	const_export ROUTE24_COOLTRAINER_M2
	const_export ROUTE24_COOLTRAINER_M3
	const_export ROUTE24_COOLTRAINER_F1
	const_export ROUTE24_YOUNGSTER1
	const_export ROUTE24_COOLTRAINER_F2
	const_export ROUTE24_YOUNGSTER2
	const_export ROUTE_24_COOLTRAINER_F3            ; New trainer added by G-Dubs
	const_export ROUTE24_TM_THUNDER_WAVE
	const_export ROUTE24_COOLTRAINER_M4

Route24_Object:
	db $2c ; border block

	def_warp_events

	def_bg_events

	def_object_events
	object_event 11, 15, SPRITE_COOLTRAINER_M, STAY, LEFT, TEXT_ROUTE24_COOLTRAINER_M1, OPP_ROCKET, 6
	object_event  5, 20, SPRITE_COOLTRAINER_M, STAY, UP, TEXT_ROUTE24_COOLTRAINER_M2, OPP_JR_TRAINER_M, 2
	object_event 10, 18, SPRITE_COOLTRAINER_M, STAY, RIGHT, TEXT_ROUTE24_COOLTRAINER_M3, OPP_JR_TRAINER_M, 3      ; Nugget Bridge Trainer 6 (Moved to #6 by G-Dubs)     
	object_event 11, 21, SPRITE_COOLTRAINER_F, STAY, LEFT, TEXT_ROUTE24_COOLTRAINER_F1, OPP_LASS, 7               ; Nugget Bridge Trainer 5 (Moved to #5 by G-Dubs)
	object_event 10, 24, SPRITE_YOUNGSTER, STAY, RIGHT, TEXT_ROUTE24_YOUNGSTER1, OPP_YOUNGSTER, 4                 ; Nugget Bridge Trainer 4 (Moved to #4 by G-Dubs)
	object_event 11, 27, SPRITE_COOLTRAINER_F, STAY, LEFT, TEXT_ROUTE24_COOLTRAINER_F2, OPP_LASS, 8               ; Nugget Bridge Trainer 3 (Moved to #3 by G-Dubs)
	object_event 10, 30, SPRITE_YOUNGSTER, STAY, RIGHT, TEXT_ROUTE24_YOUNGSTER2, OPP_BUG_CATCHER, 9               ; Nugget Bridge Trainer 2 (Moved to #2 by G-Dubs)
	object_event 11, 33, SPRITE_COOLTRAINER_F, STAY, LEFT, TEXT_ROUTE24_COOLTRAINER_F3, OPP_COOLTRAINER_F, 9      ; Nugget Bridge Trainer 1 (New trainer added by G-Dubs)
	object_event 10,  5, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROUTE24_TM_THUNDER_WAVE, TM_THUNDER_WAVE
	object_event  6,  5, SPRITE_COOLTRAINER_M, STAY, DOWN, TEXT_ROUTE24_COOLTRAINER_M4

	def_warps_to ROUTE_24
