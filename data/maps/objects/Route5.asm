object_const_def
	const_export ROUTE5_POKEFAN_F1     ; New trainer added by G-Dubs
	const_export ROUTE5_POKEFAN_M1     ; New trainer added by G-Dubs
	const_export ROUTE5_POKEFAN_F2     ; New trainer added by G-Dubs
	const_export ROUTE5_POKEFAN_M2     ; New trainer added by G-Dubs
	;const_export ROUTE5_POKEFAN_F3
	;const_export ROUTE5_POKEFAN_M3

Route5_Object:
	db $a ; border block

	def_warp_events
	warp_event 10, 29, ROUTE_5_GATE, 3
	warp_event  9, 29, ROUTE_5_GATE, 3
	warp_event 10, 33, ROUTE_5_GATE, 1
	warp_event 15, 29, UNDERGROUND_PATH_ROUTE_5, 1
	warp_event 10, 21, DAYCARE, 1

	def_bg_events
	bg_event 15, 32, TEXT_ROUTE5_UNDERGROUND_PATH_SIGN

	def_object_events
	object_event 18,  4, SPRITE_MIDDLE_AGED_WOMAN, STAY, LEFT, TEXT_ROUTE5_POKEFAN_F1, OPP_POKEFAN_F, 1     ; New trainer added by G-Dubs
	object_event  1,  4, SPRITE_MIDDLE_AGED_MAN, STAY, RIGHT, TEXT_ROUTE5_POKEFAN_M1, OPP_POKEFAN_M, 3      ; New trainer added by G-Dubs
	object_event  1, 15, SPRITE_MIDDLE_AGED_WOMAN, STAY, RIGHT, TEXT_ROUTE5_POKEFAN_F2, OPP_POKEFAN_F, 3    ; New trainer added by G-Dubs
	object_event 18, 15, SPRITE_MIDDLE_AGED_MAN, STAY, LEFT, TEXT_ROUTE5_POKEFAN_M2, OPP_POKEFAN_M, 1       ; New trainer added by G-Dubs

	def_warps_to ROUTE_5
