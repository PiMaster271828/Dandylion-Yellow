	object_const_def
	const_export SSANNE2F_WAITER  ; NPC changed to trainer by G-Dubs
	const_export SSANNE2F_RIVAL

SSAnne2F_Object:
	db $c ; border block

	def_warp_events
	warp_event  5, 11, SS_ANNE_2F_ROOMS, 1       ; Warp event 1
	warp_event  9, 11, SS_ANNE_2F_ROOMS, 3       ; Warp event 2
	warp_event 13, 11, SS_ANNE_2F_ROOMS, 5       ; Warp event 3
	warp_event 17, 11, SS_ANNE_2F_ROOMS, 7       ; Warp event 4      ; New warp event added by G-Dubs
	warp_event 22, 11, SS_ANNE_2F_ROOMS, 9       ; Warp event 5
	warp_event 26, 11, SS_ANNE_2F_ROOMS, 11	     ; Warp event 6
	warp_event 30, 11, SS_ANNE_2F_ROOMS, 13      ; Warp event 7
	warp_event 34, 11, SS_ANNE_2F_ROOMS, 15      ; Warp event 8		 ; New warp event added by G-Dubs
	warp_event  2,  4, SS_ANNE_1F, 11            ; Warp event 9
	warp_event  2, 12, SS_ANNE_3F, 2             ; Warp event 10
	warp_event 36,  4, SS_ANNE_CAPTAINS_ROOM, 1  ; Warp event 11

	def_bg_events

	def_object_events
	object_event  3,  7, SPRITE_WAITER, WALK, UP_DOWN, TEXT_SSANNE2F_WAITER, OPP_WAITER, 2    ; NPC changed to trainer by G-Dubs
	object_event 36,  4, SPRITE_BLUE, STAY, DOWN, TEXT_SSANNE2F_RIVAL, OPP_RIVAL1, 1

	def_warps_to SS_ANNE_2F
