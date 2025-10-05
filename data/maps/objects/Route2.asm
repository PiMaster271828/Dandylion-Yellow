	object_const_def
	const_export ROUTE2_YOUNGSTER1
	const_export ROUTE2_YOUNGSTER2
	const_export ROUTE2_YOUNGSTER3
	const_export ROUTE2_MOON_STONE
	const_export ROUTE2_HP_UP

Route2_Object:
	db $f ; border block

	def_warp_events
	warp_event 16,  9, DIGLETTS_CAVE_ROUTE_2, 1
	warp_event  5, 11, VIRIDIAN_FOREST_NORTH_GATE, 1  ; Changed Warp to correct door
	warp_event 17, 19, ROUTE_2_TRADE_HOUSE, 1
	warp_event 19, 35, ROUTE_2_GATE, 2
	warp_event 18, 39, ROUTE_2_GATE, 3
	warp_event  5, 43, VIRIDIAN_FOREST_SOUTH_GATE, 3
	warp_event 20, 35, ROUTE_2_GATE, 2
	warp_event  6, 11, VIRIDIAN_FOREST_NORTH_GATE, 2  ; New Warp Added by Vlad

	def_bg_events
	bg_event  7, 65, TEXT_ROUTE2_SIGN_SOUTH
	bg_event 15, 10, TEXT_ROUTE2_DIGLETTS_CAVE_SIGN
	bg_event 19, 15, TEXT_ROUTE2_ALT_SIGN_NORTH       ; New sign added by G-Dubs
	bg_event 14, 65, TEXT_ROUTE2_ALT_SIGN_SOUTH       ; New sign added by G-Dubs
	bg_event 12, 10, TEXT_ROUTE2_SIGN_NORTH           ; New sign added by G-Dubs

	def_object_events
	object_event 13, 63, SPRITE_YOUNGSTER, STAY, LEFT, TEXT_ROUTE2_YOUNGSTER1                        ; New NPC added by G-Dubs
	object_event  2, 59, SPRITE_YOUNGSTER, STAY, RIGHT, TEXT_ROUTE2_YOUNGSTER2, OPP_YOUNGSTER, 17    ; New trainer added by G-Dubs
	object_event  2, 50, SPRITE_YOUNGSTER, STAY, RIGHT, TEXT_ROUTE2_YOUNGSTER3, OPP_BUG_CATCHER, 23  ; New trainer added by G-Dubs
	object_event 15, 54, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROUTE2_MOON_STONE, MOON_STONE
	object_event 15, 45, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROUTE2_HP_UP, HP_UP
   ;object_event  6, 38, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROUTE2_POTION, POTION                    ; New item added by G-Dubs             

	def_warps_to ROUTE_2

	; unused
	warp_to  4,  7, 4
	db $12, $c7, $9, $7
	warp_to  4,  7, 4
	warp_to  4,  7, 4
	warp_to  4,  7, 4
