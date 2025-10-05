	object_const_def
	const_export PALLETTOWN_OAK
	const_export PALLETTOWN_GIRL
	const_export PALLETTOWN_FISHER

PalletTown_Object:
	db $b ; border block

	def_warp_events
	warp_event  5,  7, REDS_HOUSE_1F, 1
	warp_event 17,  7, BLUES_HOUSE, 1
	warp_event 16, 13, OAKS_LAB, 2

	def_bg_events
	bg_event 17, 15, TEXT_PALLETTOWN_OAKSLAB_SIGN
	bg_event  7, 11, TEXT_PALLETTOWN_SIGN
	bg_event  8,  7, TEXT_PALLETTOWN_PLAYERSHOUSE_SIGN
	bg_event 15,  7, TEXT_PALLETTOWN_RIVALSHOUSE_SIGN

	def_object_events
	object_event 12,  6, SPRITE_OAK, STAY, NONE, TEXT_PALLETTOWN_OAK
	object_event  5, 10, SPRITE_GIRL, WALK, ANY_DIR, TEXT_PALLETTOWN_GIRL
	object_event 18, 16, SPRITE_FISHER, WALK, ANY_DIR, TEXT_PALLETTOWN_FISHER

	def_warps_to PALLET_TOWN
