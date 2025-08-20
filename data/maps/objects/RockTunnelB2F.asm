	object_const_def
	

RockTunnelB2F_Object:
	db $3 ; border block

	def_warp_events
	warp_event  7,  3, ROCK_TUNNEL_B1F, 7   ; Warp Event 1      ; New Warp Event added by G-Dubs
	warp_event 19, 11, ROCK_TUNNEL_B1F, 8   ; Warp Event 2      ; New Warp Event added by G-Dubs
	warp_event 15,  3, ROCK_TUNNEL_B1F, 9   ; Warp Event 3      ; New Warp Event added by G-Dubs
	warp_event 33,  7, ROCK_TUNNEL_B1F, 10  ; Warp Event 4      ; New Warp Event added by G-Dubs
	warp_event 35, 17, ROCK_TUNNEL_B1F, 11  ; Warp Event 5      ; New Warp Event added by G-Dubs
	warp_event 15, 33, ROCK_TUNNEL_B1F, 12  ; Warp Event 6      ; New Warp Event added by G-Dubs

	def_bg_events

	def_object_events
	

	def_warps_to ROCK_TUNNEL_B2F
