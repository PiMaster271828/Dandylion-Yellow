	object_const_def
	const_export ROCKTUNNELB1F_COOLTRAINER_F1
	const_export ROCKTUNNELB1F_HIKER1
	const_export ROCKTUNNELB1F_SUPER_NERD1
	const_export ROCKTUNNELB1F_SUPER_NERD2
	const_export ROCKTUNNELB1F_HIKER2
	const_export ROCKTUNNELB1F_COOLTRAINER_F2
	const_export ROCKTUNNELB1F_HIKER3
	const_export ROCKTUNNELB1F_SUPER_NERD3
	const_export ROCKTUNNELB1F_COOLTRAINER_F3    ; New trainer added by G-Dubs
	const_export ROCKTUNNELB1F_COOLTRAINER_F4    ; New trainer added by G-Dubs
   ;const_export ROCKTUNNELB1F_MAX_ETHER         ; New item added by G-Dubs
   ;const_export ROCK_TUNNELB1F_1F_REVIVE        ; New item added by G-Dubs
   ;const_export ROCK_TUNNELB1F_TM_ROCK_TOMB     ; New item added by G-Dubs

RockTunnelB1F_Object:
	db $3 ; border block

	def_warp_events
	warp_event 33, 25, ROCK_TUNNEL_1F, 3    ; Warp Event 1
	warp_event 27,  3, ROCK_TUNNEL_1F, 4    ; Warp Event 2
	warp_event 23, 11, ROCK_TUNNEL_1F, 5    ; Warp Event 3
	warp_event  3,  3, ROCK_TUNNEL_1F, 6    ; Warp Event 4
	warp_event  3, 25, ROCK_TUNNEL_1F, 7    ; Warp Event 5      ; New Warp Event added by G-Dubs
	warp_event  3, 33, ROCK_TUNNEL_1F, 8    ; Warp Event 6      ; New Warp Event added by G-Dubs
	warp_event 10, 26, ROCK_TUNNEL_B2F, 1   ; Warp Event 7      ; New Warp Event added by G-Dubs
	warp_event 22,  2, ROCK_TUNNEL_B2F, 2   ; Warp Event 8      ; New Warp Event added by G-Dubs
	warp_event 21,  7, ROCK_TUNNEL_B2F, 3   ; Warp Event 9      ; New Warp Event added by G-Dubs
	warp_event 16,  2, ROCK_TUNNEL_B2F, 4   ; Warp Event 10     ; New Warp Event added by G-Dubs
	warp_event  9,  3, ROCK_TUNNEL_B2F, 5   ; Warp Event 11     ; New Warp Event added by G-Dubs
	warp_event  4, 30, ROCK_TUNNEL_B2F, 6   ; Warp Event 12     ; New Warp Event added by G-Dubs

	def_bg_events

	def_object_events
	object_event 11, 13, SPRITE_COOLTRAINER_F, STAY, DOWN, TEXT_ROCKTUNNELB1F_COOLTRAINER_F1, OPP_JR_TRAINER_F, 9
	object_event  6, 10, SPRITE_HIKER, STAY, DOWN, TEXT_ROCKTUNNELB1F_HIKER1, OPP_HIKER, 9
	object_event  3,  5, SPRITE_SUPER_NERD, STAY, DOWN, TEXT_ROCKTUNNELB1F_SUPER_NERD1, OPP_POKEMANIAC, 3
	object_event 20, 21, SPRITE_SUPER_NERD, STAY, RIGHT, TEXT_ROCKTUNNELB1F_SUPER_NERD2, OPP_POKEMANIAC, 4
	object_event 30, 10, SPRITE_HIKER, STAY, DOWN, TEXT_ROCKTUNNELB1F_HIKER2, OPP_HIKER, 10
	object_event 14, 28, SPRITE_COOLTRAINER_F, STAY, RIGHT, TEXT_ROCKTUNNELB1F_COOLTRAINER_F2, OPP_JR_TRAINER_F, 10
	object_event 33,  5, SPRITE_HIKER, STAY, RIGHT, TEXT_ROCKTUNNELB1F_HIKER3, OPP_HIKER, 11
	object_event 26, 30, SPRITE_SUPER_NERD, STAY, DOWN, TEXT_ROCKTUNNELB1F_SUPER_NERD3, OPP_POKEMANIAC, 5
	object_event 35, 19, SPRITE_COOLTRAINER_F, STAY, UP, TEXT_ROCKTUNNELB1F_COOLTRAINER_F3, OPP_LASS, 23               ; New trainer added by G-Dubs
    object_event 14, 11, SPRITE_COOLTRAINER_F, STAY, RIGHT, TEXT_ROCKTUNNELB1F_COOLTRAINER_F4, OPP_COOLTRAINER_F, 11   ; New trainer added by G-Dubs
   ;object_event 16,  7, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROCKTUNNELB1F_MAX_ETHER, MAX_ETHER                         ; New item added by G-Dubs
   ;object_event  9, 31, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROCKTUNNELB1F_REVIVE, REVIVE                               ; New item added by G-Dubs
   ;object_event  3, 19, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROCKTUNNELB1F_TM_ROCK_TOMB, TM_ROCK_TOMB                   ; New item added by G-Dubs (TM 86 Rock Tomb)
   
   	def_warps_to ROCK_TUNNEL_B1F
