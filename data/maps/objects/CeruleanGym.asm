	object_const_def
	const_export CERULEANGYM_MISTY
	const_export CERULEANGYM_COOLTRAINER_F1
	const_export CERULEANGYM_SWIMMER1
	const_export CERULEANGYM_BEAUTY1        ; New trainer added by G-Dubs
	const_export CERULEANGYM_BEAUTY2        ; New trainer added by G-Dubs
	const_export CERULEANGYM_BEAUTY3        ; New trainer added by G-Dubs
	const_export CERULEANGYM_FISHER         ; New trainer added by G-Dubs
	const_export CERULEANGYM_COOLTRAINER_F2 ; New trainer added by G-Dubs 
	const_export CERULEANGYM_GYM_GUIDE

CeruleanGym_Object:
	db $3 ; border block

	def_warp_events
	warp_event  4, 13, LAST_MAP, 4
	warp_event  5, 13, LAST_MAP, 4

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_BRUNETTE_GIRL, STAY, DOWN, TEXT_CERULEANGYM_MISTY, OPP_MISTY, 1
	object_event  2,  3, SPRITE_COOLTRAINER_F, STAY, RIGHT, TEXT_CERULEANGYM_COOLTRAINER_F1, OPP_JR_TRAINER_F, 1
	object_event  8,  7, SPRITE_SWIMMER, STAY, LEFT, TEXT_CERULEANGYM_SWIMMER1, OPP_SWIMMER, 1
	object_event  0, 13, SPRITE_DAISY, STAY, UP, TEXT_CERULEANGYM_BEAUTY1, OPP_BEAUTY, 1                          ; New trainer added by G-Dubs 
	object_event  1,  6, SPRITE_SWIMMER, STAY, RIGHT, TEXT_CERULEANGYM_BEAUTY2, OPP_BEAUTY, 2                     ; New trainer added by G-Dubs
	object_event  3,  1, SPRITE_DAISY, STAY, LEFT, TEXT_CERULEANGYM_BEAUTY3, OPP_BEAUTY, 3                        ; New trainer added by G-Dubs
	object_event  6,  1, SPRITE_FISHER, STAY, DOWN, TEXT_CERULEANGYM_FISHER, OPP_FISHER, 12                       ; New trainer added by G-Dubs
	object_event  9, 13, SPRITE_COOLTRAINER_F, STAY, UP, TEXT_CERULEANGYM_COOLTRAINER_F2, OPP_JR_TRAINER_F, 27    ; New trainer added by G-Dubs
	object_event  7, 10, SPRITE_GYM_GUIDE, STAY, DOWN, TEXT_CERULEANGYM_GYM_GUIDE

	def_warps_to CERULEAN_GYM
