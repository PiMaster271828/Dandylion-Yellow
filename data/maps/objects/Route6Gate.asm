	object_const_def
	const_export ROUTE6GATE_GUARD

Route6Gate_Object:
	db $a ; border block

	def_warp_events
	warp_event  3,  5, ROUTE_6, 1           ; Warp Event 1
	warp_event  4,  5, ROUTE_6, 1           ; Warp Event 2
	warp_event  3,  0, SAFFRON_CITY, 9      ; Warp Event 3
	warp_event  4,  0, SAFFRON_CITY, 10     ; Warp Event 4

	def_bg_events

	def_object_events
	object_event  6,  3, SPRITE_GUARD, STAY, LEFT, TEXT_ROUTE6GATE_GUARD

	def_warps_to ROUTE_6_GATE
