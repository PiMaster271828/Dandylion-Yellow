MtMoonB1F_Object:
	db $3 ; border block

	def_warp_events
	warp_event  1,  3, MT_MOON_1F, 3   ; Warp event 1
	warp_event 19, 11, MT_MOON_B2F, 1  ; Warp event 2
	warp_event 27,  9, MT_MOON_1F, 4   ; Warp event 3
	warp_event 25, 17, MT_MOON_1F, 5   ; Warp event 4
	warp_event 13, 13, MT_MOON_B2F, 2  ; Warp event 5
	warp_event  1, 27, MT_MOON_B2F, 3  ; Warp event 6
	warp_event 19,  3, MT_MOON_B2F, 4  ; Warp event 7
	warp_event 27,  3, LAST_MAP, 3     ; Warp Event 8
	warp_event 19, 21, MT_MOON_B2F, 5  ; Warp event 9      ; New ladder added by G-Dubs
	warp_event  1, 19, MT_MOON_B2F, 6  ; Warp event 10     ; New ladder added by G-Dubs

	def_bg_events

	def_object_events

	def_warps_to MT_MOON_B1F
