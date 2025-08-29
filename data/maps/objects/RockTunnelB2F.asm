	object_const_def
	const_export ROCKTUNNELB2F_COOLTRAINER_M1    ; New trainer added by G-Dubs
	const_export ROCKTUNNELB2F_COOLTRAINER_F1    ; New trainer added by G-Dubs
	const_export ROCKTUNNELB2F_HIKER1            ; New trainer added by G-Dubs
	const_export ROCKTUNNELB2F_SUPER_NERD1       ; New trainer added by G-Dubs
    const_export ROCKTUNNELB2F_HIKER2            ; New trainer added by G-Dubs
	const_export ROCKTUNNELB2F_LANCE1            ; New trainer added by G-Dubs
   ;const_export ROCKTUNNELB2F_ELIXIR            ; New item added by G-Dubs
   ;const_export ROCKTUNNELB1F_ESCAPE_ROPE       ; New item added by G-Dubs
   ;const_export ROCKTUNNELB2F_REVIVE            ; New item added by G-Dubs
   ;const_export ROCKTUNNELB2F_PP_UP             ; New item added by G-Dubs
   ;const_export ROCKTUNNELB2F_TM_STEEL_WING     ; New item added by G-Dubs
   ;const_export ROCKTUNNELB1F_CRYSTAL_ONIX      ; New Static Encounter added by G-Dubs
	
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
	object_event 12, 12, SPRITE_COOLTRAINER_M, STAY, DOWN, TEXT_ROCKTUNNELB2F_COOLTRAINER_M1, OPP_JR_TRAINER_M, 6      ; New trainer added by G-Dubs
	object_event 29,  2, SPRITE_COOLTRAINER_F, STAY, DOWN, TEXT_ROCKTUNNELB2F_COOLTRAINER_F1, OPP_JR_TRAINER_F, 4      ; New trainer added by G-Dubs
	object_event  8, 15, SPRITE_HIKER, STAY, LEFT, TEXT_ROCKTUNNELB2F_HIKER1, OPP_HIKER, 17                            ; New trainer added by G-Dubs
	object_event 14, 18, SPRITE_SUPER_NERD, STAY, DOWN, TEXT_ROCKTUNNELB2F_SUPER_NERD1, OPP_POKEMANIAC, 14             ; New trainer added by G-Dubs
	object_event 24, 23, SPRITE_HIKER, STAY, DOWN, TEXT_ROCKTUNNELB2F_HIKER2, OPP_HIKER, 18                            ; New trainer added by G-Dubs
	object_event  7, 18, SPRITE_LANCE, STAY, DOWN, TEXT_ROCKTUNNELB2F_LANCE1, OPP_DRAGON_TAMER, 1                      ; New trainer added by G-Dubs
   ;object_event  5, 16, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROCKTUNNELB2F_ELIXIR, ELIXIR                               ; New item added by G-Dubs
   ;object_event 18, 17, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROCKTUNNELB2F_ESCAPE_ROPE, ESCAPE_ROPE                     ; New item added by G-Dubs
   ;object_event  6, 24, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROCKTUNNELB2F_REVIVE, REVIVE                               ; New item added by G-Dubs
   ;object_event 29, 21, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROCKTUNNELB2F_PP_UP, PP_UP                                 ; New item added by G-Dubs
   ;object_event 15, 20, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROCKTUNNELB2F_TM_STEEL_WING, TM_STEEL_WING                 ; New item added by G-Dubs (TM 51 Steel Wing)
   ;object_event 25,  8, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROCKTUNNELB2F_GREAT_BALL, GREAT BALL                       ; New item added by G-Dubs
   ;object_event 15, 29, SPRITE_ONIX, STAY, DOWN, TEXT_ROCKTUNNELB2F_CRYSTAL_ONIX, CRYSTAL_ONIX, 50                    ; New Static Encounter dded by G-Dubs

	def_warps_to ROCK_TUNNEL_B2F
