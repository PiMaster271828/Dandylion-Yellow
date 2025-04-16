	object_const_def
	const_export SSANNE1F_WAITER
	const_export SSANNE1F_SAILOR

SSAnne1F_Object:
	db $c ; border block

	def_warp_events
	warp_event 19,  0, VERMILION_DOCK, 2         ; Warp event 1
	warp_event 20,  0, VERMILION_DOCK, 2         ; Warp event 2
	warp_event 29,  8, SS_ANNE_1F_ROOMS, 1	     ; Warp event 3
	warp_event 21,  8, SS_ANNE_1F_ROOMS, 2		 ; Warp event 4
	warp_event 18,  8, SS_ANNE_1F_ROOMS, 3		 ; Warp event 5
	warp_event 14,  8, SS_ANNE_1F_ROOMS, 4		 ; Warp event 6
	warp_event 10,  8, SS_ANNE_1F_ROOMS, 5		 ; Warp event 7
	warp_event  6,  8, SS_ANNE_1F_ROOMS, 6		 ; Warp event 8
	warp_event 25,  8, SS_ANNE_1F_ROOMS, 7		 ; Warp event 9 	 ; New warp event added by G-Dubs
	warp_event 33,  8, SS_ANNE_1F_ROOMS, 8		 ; Warp event 10	 ; New warp event added by G-Dubs
	warp_event  2,  6, SS_ANNE_2F, 7			 ; Warp event 11
	warp_event 37, 15, SS_ANNE_B1F, 6			 ; Warp event 12
	warp_event  3, 16, SS_ANNE_KITCHEN, 1		 ; Warp event 13

	def_bg_events

	def_object_events
	object_event 12,  6, SPRITE_WAITER, WALK, LEFT_RIGHT, TEXT_SSANNE1F_WAITER
	object_event 27,  6, SPRITE_SAILOR, STAY, NONE, TEXT_SSANNE1F_SAILOR

	def_warps_to SS_ANNE_1F
