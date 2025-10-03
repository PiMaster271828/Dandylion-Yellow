object_const_def
	const_export ROUTE7_COOLTRAINER_M1   ; New trainer added by G-Dubs
	const_export ROUTE7_POKEFAN_M1       ; New trainer added by G-Dubs
	const_export ROUTE7_POKEFAN_F1       ; New trainer added by G-Dubs
	const_export ROUTE7_POKEFAN_M2       ; New trainer added by G-Dubs

Route7_Object:
	db $f ; border block

	def_warp_events
   
	warp_event 17, 10, ROUTE_7_GATE, 1                ; Warp Event 1
	warp_event  5, 13, UNDERGROUND_PATH_ROUTE_7, 1    ; Warp Event 2

	def_bg_events
	bg_event  3, 13, TEXT_ROUTE7_UNDERGROUND_PATH_SIGN
	bg_event 13,  7, TEXT_ROUTE7_SIGN

	def_object_events
	object_event 17, 12, SPRITE_COOLTRAINER_M, STAY, LEFT, TEXT_ROUTE7_COOLTRAINER_M1, OPP_FIREFIGHTER, 2      ; New trainer added by G-Dubs
	object_event 12,  7, SPRITE_MIDDLE_AGED_MAN, STAY, DOWN, TEXT_ROUTE7_POKEFAN_M1, OPP_POKEFAN_M, 5          ; New trainer added by G-Dubs
	object_event  2,  8, SPRITE_MIDDLE_AGED_WOMAN, STAY, RIGHT, TEXT_ROUTE7_POKEFAN_F1, OPP_POKEFAN_F, 4       ; New trainer added by G-Dubs
	object_event  2,  9, SPRITE_MIDDLE_AGED_MAN, STAY, RIGHT, TEXT_ROUTE7_POKEFAN_M2, OPP_POKEFAN_M, 6         ; New trainer added by G-Dubs
	object_event 17,  6, SPRITE_COOLTRAINER_M, STAY, LEFT, TEXT_ROUTE7_COOLTRAINER_M2, OPP_FIREFIGHTER, 3      ; New trainer added by G-Dubs

	def_warps_to ROUTE_7
