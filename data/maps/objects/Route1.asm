	object_const_def
	const_export ROUTE1_YOUNGSTER1
	const_export ROUTE1_YOUNGSTER2
	const_export ROUTE1_YOUNGSTER3     ; New NPC added by G-Dubs
	const_export ROUTE1_YOUNGSTER4     ; New trainer added by G-Dubs

Route1_Object:
	db $b ; border block

	def_warp_events

	def_bg_events
	bg_event 13, 27, TEXT_ROUTE1_SIGN

	def_object_events
	object_event  7, 24, SPRITE_YOUNGSTER, WALK, UP_DOWN, TEXT_ROUTE1_YOUNGSTER1
	object_event 17, 13, SPRITE_YOUNGSTER, WALK, LEFT_RIGHT, TEXT_ROUTE1_YOUNGSTER2
	object_event 21, 22, SPRITE_YOUNGSTER, WALK, LEFT_RIGHT, TEXT_ROUTE1_YOUNGSTER3                ; New NPC added by G-Dubs
	object_event  9, 12, SPRITE_YOUNGSTER, STAY, RIGHT, TEXT_ROUTE1_YOUNGSTER4, OPP_YOUNGSTER, 16  ; New trainer added by G-Dubs	
	
	def_warps_to ROUTE_1

	; unused
	warp_to  4,  7, 4
