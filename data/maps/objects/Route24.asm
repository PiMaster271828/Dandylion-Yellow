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
	bg_event 19, 10, TEXT_ROUTE24_SIGN              ; New sign added by G-Dubs

	def_object_events
	object_event 11, 13, SPRITE_COOLTRAINER_M, STAY, LEFT, TEXT_ROUTE24_COOLTRAINER_M1, OPP_ROCKET, 6
	object_event  5, 17, SPRITE_COOLTRAINER_M, STAY, UP, TEXT_ROUTE24_COOLTRAINER_M2, OPP_JR_TRAINER_M, 2
	object_event 10, 16, SPRITE_COOLTRAINER_M, STAY, RIGHT, TEXT_ROUTE24_COOLTRAINER_M3, OPP_JR_TRAINER_M, 3      ; Nugget Bridge Trainer 6 (Moved from #5 by G-Dubs)
	object_event 11, 19, SPRITE_COOLTRAINER_F, STAY, LEFT, TEXT_ROUTE24_COOLTRAINER_F1, OPP_LASS, 7               ; Nugget Bridge Trainer 5 (Moved from #4 by G-Dubs)
	object_event 10, 22, SPRITE_YOUNGSTER, STAY, RIGHT, TEXT_ROUTE24_YOUNGSTER1, OPP_YOUNGSTER, 4                 ; Nugget Bridge Trainer 4 (Moved from #3 by G-Dubs)
	object_event 11, 25, SPRITE_COOLTRAINER_F, STAY, LEFT, TEXT_ROUTE24_COOLTRAINER_F2, OPP_LASS, 8               ; Nugget Bridge Trainer 3 (Moved from #2 by G-Dubs)
	object_event 10, 28, SPRITE_YOUNGSTER, STAY, RIGHT, TEXT_ROUTE24_YOUNGSTER2, OPP_BUG_CATCHER, 9               ; Nugget Bridge Trainer 2 (Moved from #1 by G-Dubs)
	object_event 11, 31, SPRITE_COOLTRAINER_F, STAY, LEFT, TEXT_ROUTE24_COOLTRAINER_F3, OPP_COOLTRAINER_F, 9      ; Nugget Bridge Trainer 1 (New trainer added by G-Dubs)
	object_event 10,  5, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROUTE24_TM_THUNDER_WAVE, TM_THUNDER_WAVE
	object_event  6,  5, SPRITE_COOLTRAINER_M, STAY, DOWN, TEXT_ROUTE24_COOLTRAINER_M4

	def_warps_to ROUTE_24
