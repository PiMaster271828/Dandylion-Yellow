	object_const_def
	const_export VERMILIONGYM_LT_SURGE
	const_export VERMILIONGYM_GENTLEMAN
	const_export VERMILIONGYM_SUPER_NERD1
	const_export VERMILIONGYM_SAILOR1
	const_export VERMILIONGYM_SUPER_NERD2        ; New trainer added by G-Dubs	
	const_export VERMILIONGYM_COOLTRAINER_F      ; New trainer added by G-Dubs
	const_export VERMILIONGYM_SUPER_NERD3        ; New trainer added by G-Dubs
	const_export VERMILIONGYM_SOLDIER            ; New trainer added by G-Dubs
	const_export VERMILIONGYM_GYM_GUIDE

VermilionGym_Object:
	db $3 ; border block

	def_warp_events
	warp_event  4, 17, LAST_MAP, 4
	warp_event  5, 17, LAST_MAP, 4

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_ROCKER, STAY, DOWN, TEXT_VERMILIONGYM_LT_SURGE, OPP_LT_SURGE, 1
	object_event  9,  6, SPRITE_GENTLEMAN, STAY, LEFT, TEXT_VERMILIONGYM_GENTLEMAN, OPP_GENTLEMAN, 3
	object_event  3,  8, SPRITE_SUPER_NERD, STAY, LEFT, TEXT_VERMILIONGYM_SUPER_NERD1, OPP_ROCKER, 1
	object_event  0, 10, SPRITE_SAILOR, STAY, RIGHT, TEXT_VERMILIONGYM_SAILOR1, OPP_SAILOR, 8
	object_event  0,  6, SPRITE_SUPER_NERD, STAY, RIGHT, TEXT_VERMILIONGYM_SUPER_NERD2, OPP_GUITARIST, 7          ; New trainer added by G-Dubs
	object_event  7,  8, SPRITE_COOLTRAINER_F, STAY, RIGHT, TEXT_VERMILIONGYM_COOLTRAINER_F, OPP_GUITARIST, 4     ; New trainer added by G-Dubs
	object_event  9, 10, SPRITE_SUPER_NERD, STAY, LEFT, TEXT_VERMILIONGYM_SUPER_NERD3, OPP_GUITARIST, 1           ; New trainer added by G-Dubs
	object_event  2,  3, SPRITE_SAILOR, STAY, RIGHT, TEXT_VERMILIONGYM_SOLDIER, OPP_SOLDIER, 1                    ; New trainer added by G-Dubs
	object_event  4, 14, SPRITE_GYM_GUIDE, STAY, DOWN, TEXT_VERMILIONGYM_GYM_GUIDE

	def_warps_to VERMILION_GYM
