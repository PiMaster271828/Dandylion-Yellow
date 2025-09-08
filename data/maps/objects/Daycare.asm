	object_const_def
	const_export DAYCARE_GENTLEMAN

Daycare_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, ROUTE_5, 4
	warp_event  3,  7, ROUTE_5, 4

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GENTLEMAN, STAY, RIGHT, TEXT_DAYCARE_GENTLEMAN

	def_warps_to DAYCARE
