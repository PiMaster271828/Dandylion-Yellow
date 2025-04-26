SSAnneB1F_Object:
	db $c ; border block

	def_warp_events
	warp_event 23,  3, SS_ANNE_B1F_ROOMS, 9      ; Warp event 1
	warp_event 19,  3, SS_ANNE_B1F_ROOMS, 7      ; Warp event 2
	warp_event 15,  3, SS_ANNE_B1F_ROOMS, 5      ; Warp event 3
	warp_event 11,  3, SS_ANNE_B1F_ROOMS, 3      ; Warp event 4
	warp_event  7,  3, SS_ANNE_B1F_ROOMS, 1      ; Warp event 5
	warp_event 27,  5, SS_ANNE_1F, 12	 	     ; Warp event 6

	def_bg_events

	def_object_events

	def_warps_to SS_ANNE_B1F
