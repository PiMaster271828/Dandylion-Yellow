	object_const_def
	const_export ROUTE8_SUPER_NERD1
	const_export ROUTE8_GAMBLER1
	const_export ROUTE8_SUPER_NERD2
	const_export ROUTE8_COOLTRAINER_F1
	const_export ROUTE8_SUPER_NERD3
	const_export ROUTE8_COOLTRAINER_F2
	const_export ROUTE8_COOLTRAINER_F3
	const_export ROUTE8_GAMBLER2
	const_export ROUTE8_COOLTRAINER_F4
	const_export ROUTE8_SUPER_NERD4         ; New trainer added by G-Dubs
    const_export ROUTE8_GAMBLER3            ; New trainer added by G-Dubs
	const_export ROUTE8_SUPER_NERD5         ; New trainer added by G-Dubs
	const_export ROUTE8_SUPER_NERD6         ; New trainer added by G-Dubs

Route8_Object:
	db $2c ; border block

	def_warp_events
	warp_event  6, 10, ROUTE_8_GATE, 3
	warp_event  6, 11, ROUTE_8_GATE, 4
	warp_event 11,  3, UNDERGROUND_PATH_ROUTE_8, 1

	def_bg_events
	bg_event 16,  3, TEXT_ROUTE8_UNDERGROUND_SIGN

	def_object_events
	object_event  7,  5, SPRITE_SUPER_NERD, STAY, RIGHT, TEXT_ROUTE8_SUPER_NERD1, OPP_SUPER_NERD, 3
	object_event 12,  9, SPRITE_GAMBLER, STAY, UP, TEXT_ROUTE8_GAMBLER1, OPP_GAMBLER, 5
	object_event 40,  6, SPRITE_SUPER_NERD, STAY, UP, TEXT_ROUTE8_SUPER_NERD2, OPP_SUPER_NERD, 4
	object_event 24,  3, SPRITE_COOLTRAINER_F, STAY, LEFT, TEXT_ROUTE8_COOLTRAINER_F1, OPP_LASS, 13
	object_event 24,  4, SPRITE_SUPER_NERD, STAY, RIGHT, TEXT_ROUTE8_SUPER_NERD3, OPP_SUPER_NERD, 5
	object_event 24,  5, SPRITE_COOLTRAINER_F, STAY, LEFT, TEXT_ROUTE8_COOLTRAINER_F2, OPP_LASS, 14
	object_event 24,  6, SPRITE_COOLTRAINER_F, STAY, RIGHT, TEXT_ROUTE8_COOLTRAINER_F3, OPP_LASS, 15
	object_event 44, 13, SPRITE_GAMBLER, STAY, DOWN, TEXT_ROUTE8_GAMBLER2, OPP_GAMBLER, 7
	object_event 49, 12, SPRITE_COOLTRAINER_F, STAY, LEFT, TEXT_ROUTE8_COOLTRAINER_F4, OPP_LASS, 16
	object_event  8, 14, SPRITE_SUPER_NERD, STAY, RIGHT, TEXT_ROUTE8_SUPER_NERD4, OPP_SUPER_NERD, 6     ; New trainer added by G-Dubs
	object_event 32, 11, SPRITE_GAMBLER, STAY, RIGHT, TEXT_ROUTE8_GAMBLER3, OPP_GAMBLER, 6              ; New trainer added by G-Dubs
	object_event 17, 10, SPRITE_SUPER_NERD, STAY, RIGHT, TEXT_ROUTE8_SUPER_NERD5, OPP_SUPER_NERD, 7     ; New trainer added by G-Dubs
	object_event 20,  5, SPRITE_SUPER_NERD, STAY, LEFT, TEXT_ROUTE8_SUPER_NERD6, OPP_SUPER_NERD, 8      ; New trainer added by G-Dubs

	def_warps_to ROUTE_8
