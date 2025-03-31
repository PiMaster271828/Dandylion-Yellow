	object_const_def
	const_export ROUTE6_COOLTRAINER_M1
	const_export ROUTE6_COOLTRAINER_F1
	const_export ROUTE6_YOUNGSTER1
	const_export ROUTE6_COOLTRAINER_M2
	const_export ROUTE6_COOLTRAINER_F2
	const_export ROUTE6_YOUNGSTER2
	const_export ROUTE6_COOLTRAINER_M3      ; New trainer added by G-Dubs
	const_export ROUTE6_COOLTRAINER_F3      ; New trainer added by G-Dubs
	const_export ROUTE6_YOUNGSTER3          ; New trainer added by G-Dubs
	const_export ROUTE6_SUPER_NERD          ; New trainer added by G-Dubs
	const_export ROUTE6_YOUNGSTER4          ; New trainer added by G-Dubs

Route6_Object:
	db $f ; border block

	def_warp_events
	warp_event 10,  5, ROUTE_6_GATE, 1                     ; Warp Event 1
	warp_event 17, 13, UNDERGROUND_PATH_ROUTE_6, 1         ; Warp Event 2

	def_bg_events
	bg_event 19, 15, TEXT_ROUTE6_UNDERGROUND_PATH_SIGN
	bg_event 14, 15, TEXT_ROUTE6_SIGN                      ; New sign added by G-Dubs

	def_object_events
	object_event 10, 21, SPRITE_COOLTRAINER_M, STAY, RIGHT, TEXT_ROUTE6_COOLTRAINER_M1, OPP_JR_TRAINER_M, 10
	object_event 11, 21, SPRITE_COOLTRAINER_F, STAY, LEFT, TEXT_ROUTE6_COOLTRAINER_F1, OPP_JR_TRAINER_F, 25
	object_event  0, 18, SPRITE_YOUNGSTER, STAY, RIGHT, TEXT_ROUTE6_YOUNGSTER1, OPP_BUG_CATCHER, 10
	object_event 10, 31, SPRITE_COOLTRAINER_M, STAY, LEFT, TEXT_ROUTE6_COOLTRAINER_M2, OPP_JR_TRAINER_M, 5
	object_event 10, 30, SPRITE_COOLTRAINER_F, STAY, LEFT, TEXT_ROUTE6_COOLTRAINER_F2, OPP_JR_TRAINER_F, 3
	object_event 19, 25, SPRITE_YOUNGSTER, STAY, LEFT, TEXT_ROUTE6_YOUNGSTER2, OPP_BUG_CATCHER, 11
	object_event  5,  4, SPRITE_COOLTRAINER_M, STAY, LEFT, TEXT_ROUTE6_COOLTRAINER_M3, OPP_JR_TRAINER_M, 4        ; New trainer added by G-Dubs
	object_event 14,  4, SPRITE_COOLTRAINER_F, STAY, RIGHT, TEXT_ROUTE6_COOLTRAINER_F3, OPP_JR_TRAINER_F, 4       ; New trainer added by G-Dubs
	object_event  0, 12, SPRITE_YOUNGSTER, STAY, RIGHT, TEXT_ROUTE6_YOUNGSTER3, OPP_BUG_CATCHER, 19               ; New trainer added by G-Dubs
	object_event  1, 29, SPRITE_SUPER_NERD, STAY, RIGHT, TEXT_ROUTE6_SUPER_NERD, OPP_ENGINEER, 1                  ; New trainer added by G-Dubs
	object_event  1, 28, SPRITE_YOUNGSTER, STAY, RIGHT, TEXT_ROUTE6_YOUNGSTER4, OPP_BUG_CATCHER, 20               ; New trainer added by G-Dubs
	

	def_warps_to ROUTE_6
