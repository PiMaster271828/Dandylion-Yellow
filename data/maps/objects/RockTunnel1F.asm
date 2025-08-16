	object_const_def
	const_export ROCKTUNNEL1F_HIKER1
	const_export ROCKTUNNEL1F_HIKER2
	const_export ROCKTUNNEL1F_HIKER3
	const_export ROCKTUNNEL1F_SUPER_NERD1
	const_export ROCKTUNNEL1F_COOLTRAINER_F1
	const_export ROCKTUNNEL1F_COOLTRAINER_F2
	const_export ROCKTUNNEL1F_COOLTRAINER_F3
	const_export ROCKTUNNEL1F_SUPER_NERD2        ; New trainer added by G-Dubs 

   ;const_export ROCKTUNNEL1F_RARE_CANDY         ; Temporary item (Until the TM for Steel wing is added)
  /*const_export ROCKTUNNEL1F_TM_STEEL_WING*/    ; New TM added by G-Dubs (TM 51 Steel Wing)
	const_export ROCKTUNNEL1F_BOULDER1           ; New Strength Boulder added by G-Dubs

RockTunnel1F_Object:
	db $3 ; border block

	def_warp_events
	warp_event 15,  3, LAST_MAP, 2
	warp_event 15,  0, LAST_MAP, 2
	warp_event 15, 33, LAST_MAP, 3
	warp_event  3, 25, LAST_MAP, 3               ; Warp to B2F for Crystal Onix to be implemented
	warp_event 37,  3, ROCK_TUNNEL_B1F, 1
	warp_event  5,  3, ROCK_TUNNEL_B1F, 2
	warp_event 17, 11, ROCK_TUNNEL_B1F, 3
	warp_event 37, 17, ROCK_TUNNEL_B1F, 4

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
    object_event 19,  30, SPRITE_SUPER_NERD, STAY, LEFT, TEXT_ROCKTUNNEL1F_SUPER_NERD2, OPP_POKEMANIAC, 13             ; New trainer added by G-Dubs

   ;object_event 26, 18, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROCKTUNNEL1F_RARE_CANDY, RARE_CANDY                        ; Temporary item (Until the TM for Steel wing is added)
   ;object_event 26, 18, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROCKTUNNEL1F_TM_STEEL_WING                                 ; New TM added by G-Dubs (TM 51 Steel Wing) 
    object_event  5, 25, SPRITE_BOULDER, STAY, BOULDER_MOVEMENT_BYTE_2, TEXT_ROCKTUNNEL1F_BOULDER1                     ; New Strength Boulder added by G-Dubs

	def_warps_to ROCK_TUNNEL_1F
