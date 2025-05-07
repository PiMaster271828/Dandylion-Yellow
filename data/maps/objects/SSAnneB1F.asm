object_const_def
	const_export SSANNEB1F_WAITER  ; NPC changed to trainer by G-Dubs

SSAnneB1F_Object:
	db $c ; border blocks

	def_warp_events
	warp_event 30,  3, SS_ANNE_B1F_ROOMS, 1      ; Warp event 1
	warp_event 26,  3, SS_ANNE_B1F_ROOMS, 3      ; Warp event 2
	warp_event 22,  3, SS_ANNE_B1F_ROOMS, 5      ; Warp event 3
	warp_event 18,  3, SS_ANNE_B1F_ROOMS, 7      ; Warp event 4
	warp_event 15,  3, SS_ANNE_B1F_ROOMS, 9      ; Warp event 5
	warp_event 11,  3, SS_ANNE_B1F_ROOMS, 11     ; Warp event 6
	warp_event  7,  3, SS_ANNE_B1F_ROOMS, 13     ; Warp event 7
	warp_event  3,  3, SS_ANNE_B1F_ROOMS, 15     ; Warp event 8
	warp_event 31,  5, SS_ANNE_1F, 12	 	     ; Warp event 9

	def_bg_events

	def_object_events
	object_event 17,  5, SPRITE_WAITER, WALK, LEFT_RIGHT, TEXT_SSANNEB1F_WAITER, OPP_WAITER, 3    ; New trainer added by G-Dubs

	def_warps_to SS_ANNE_B1F
