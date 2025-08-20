	object_const_def
	const_export ROCKTUNNEL1F_HIKER1
	const_export ROCKTUNNEL1F_HIKER2
	const_export ROCKTUNNEL1F_HIKER3
	const_export ROCKTUNNEL1F_SUPER_NERD1
	const_export ROCKTUNNEL1F_COOLTRAINER_F1
	const_export ROCKTUNNEL1F_COOLTRAINER_F2
	const_export ROCKTUNNEL1F_COOLTRAINER_F3
	const_export ROCKTUNNEL1F_SUPER_NERD2        ; New trainer added by G-Dubs
	const_export ROCKTUNNEL1F_COOLTRAINER_F4     ; New trainer added by G-Dubs  
   ;const_export ROCKTUNNEL1F_NUGGET             ; New item added by G-Dubs
   ;const_export ROCKTUNNEL1F_RARE_CANDY         ; New item added by G-Dubs
   ;const_export ROCKTUNNEL1F_TM_STEEL_WING      ; New TM added by G-Dubs (TM 51 Steel Wing)
	const_export ROCKTUNNEL1F_BOULDER1           ; New Strength Boulder added by G-Dubs
	const_export ROCKTUNNEL1F_BOULDER2           ; New Strength Boulder added by G-Dubs

RockTunnel1F_Object:
	db $3 ; border block

	def_warp_events
	warp_event 15,  3, ROUTE_10, 2               ; Warp Event 1
	warp_event 15, 33, ROUTE_10, 3               ; Warp Event 2
	warp_event 37,  3, ROCK_TUNNEL_B1F, 1        ; Warp Event 3
	warp_event  5,  3, ROCK_TUNNEL_B1F, 2        ; Warp Event 4
	warp_event 17, 11, ROCK_TUNNEL_B1F, 3        ; Warp Event 5
	warp_event 37, 17, ROCK_TUNNEL_B1F, 4        ; Warp Event 6
	warp_event 29,  5, ROCK_TUNNEL_B1F, 5        ; Warp Event 7      ; New Warp Event added by G-Dubs
	warp_event  3, 25, ROCK_TUNNEL_B1F, 6        ; Warp Event 8      ; New Warp Event added by G-Dubs

	def_bg_events
	bg_event 11, 29, TEXT_ROCKTUNNEL1F_SIGN

	def_object_events
	object_event  7,  5, SPRITE_HIKER, STAY, DOWN, TEXT_ROCKTUNNEL1F_HIKER1, OPP_HIKER, 12
	object_event  5, 16, SPRITE_HIKER, STAY, DOWN, TEXT_ROCKTUNNEL1F_HIKER2, OPP_HIKER, 13
	object_event 17, 15, SPRITE_HIKER, STAY, LEFT, TEXT_ROCKTUNNEL1F_HIKER3, OPP_HIKER, 14
	object_event 23,  8, SPRITE_SUPER_NERD, STAY, LEFT, TEXT_ROCKTUNNEL1F_SUPER_NERD1, OPP_POKEMANIAC, 7
	object_event 37, 21, SPRITE_COOLTRAINER_F, STAY, LEFT, TEXT_ROCKTUNNEL1F_COOLTRAINER_F1, OPP_JR_TRAINER_F, 17
	object_event 22, 24, SPRITE_COOLTRAINER_F, STAY, DOWN, TEXT_ROCKTUNNEL1F_COOLTRAINER_F2, OPP_JR_TRAINER_F, 18
	object_event 32, 24, SPRITE_COOLTRAINER_F, STAY, RIGHT, TEXT_ROCKTUNNEL1F_COOLTRAINER_F3, OPP_JR_TRAINER_F, 19
	object_event 19, 30, SPRITE_SUPER_NERD, STAY, LEFT, TEXT_ROCKTUNNEL1F_SUPER_NERD2, OPP_POKEMANIAC, 13              ; New trainer added by G-Dubs
	object_event  8, 14, SPRITE_COOLTRAINER_F, STAY, UP, TEXT_ROCKTUNNEL1F_COOLTRAINER_F4, OPP_LASS, 21                ; New trainer added by G-Dubs
   ;object_event 30,  4, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROCKTUNNEL1F_NUGGET, NUGGET                                ; New item added by G-Dubs
   ;object_event 27,  5, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROCKTUNNEL1F_RARE_CANDY, RARE_CANDY                        ; New item added by G-Dubs
   ;object_event 26, 18, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROCKTUNNEL1F_TM_STEEL_WING, TM_STEEL_WING                  ; New TM added by G-Dubs (TM 51 Steel Wing)
	object_event 27,  5, SPRITE_BOULDER, STAY, BOULDER_MOVEMENT_BYTE_2, TEXT_ROCKTUNNEL1F_BOULDER1                     ; New Strength Boulder added by G-Dubs
	object_event  5, 25, SPRITE_BOULDER, STAY, BOULDER_MOVEMENT_BYTE_2, TEXT_ROCKTUNNEL1F_BOULDER2                     ; New Strength Boulder added by G-Dubs

	def_warps_to ROCK_TUNNEL_1F
