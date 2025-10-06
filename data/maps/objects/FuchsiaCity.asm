	object_const_def
	const_export FUCHSIACITY_YOUNGSTER1
	const_export FUCHSIACITY_GAMBLER
	const_export FUCHSIACITY_ERIK
	const_export FUCHSIACITY_YOUNGSTER2
	const_export FUCHSIACITY_CHANSEY
	const_export FUCHSIACITY_VOLTORB
	const_export FUCHSIACITY_KANGASKHAN
	const_export FUCHSIACITY_SLOWPOKE
	const_export FUCHSIACITY_LAPRAS
	const_export FUCHSIACITY_FOSSIL
	const_export FUCHSIACITY_TAUROS    ; New object added by G-Dubs
   ;const_export FUCHSIACITY_TAUROS    ; New object added by G-Dubs

FuchsiaCity_Object:
	db $f ; border block

	def_warp_events
	warp_event 13, 15, FUCHSIA_MART, 1                     ; Warp Event 1
	warp_event 19, 35, FUCHSIA_BILLS_GRANDPAS_HOUSE, 1     ; Warp Event 2
	warp_event 31, 35, FUCHSIA_POKECENTER, 1               ; Warp Event 3
	warp_event 42, 34, WARDENS_HOUSE, 2                    ; Warp Event 4
	warp_event 41, 37, WARDENS_HOUSE, 1                    ; Warp Event 5      ; New warp event added by G-Dubs
	warp_event 30,  5, SAFARI_ZONE_GATE, 1                 ; Warp Event 6
	warp_event 16, 35, FUCHSIA_GYM, 1                      ; Warp Event 7
	warp_event 34, 15, FUCHSIA_MEETING_ROOM, 1             ; Warp Event 8
	warp_event 45, 37, FUCHSIA_GOOD_ROD_HOUSE, 2           ; Warp Event 9
	warp_event 45, 34, FUCHSIA_GOOD_ROD_HOUSE, 1           ; Warp Event 10
   ;warp_event 27, 35, FUCHSIA_MOVE_DELETERS_HOUSE, 1      ; Warp Event 11     ; New warp event added by G-Dubs

	def_bg_events
	bg_event 36, 17, TEXT_FUCHSIACITY_SIGN1
	bg_event 32,  7, TEXT_FUCHSIACITY_SIGN2
	bg_event 29,  7, TEXT_FUCHSIACITY_SAFARI_GAME_SIGN
	bg_event 14, 15, TEXT_FUCHSIACITY_MART_SIGN
	bg_event 32, 35, TEXT_FUCHSIACITY_POKECENTER_SIGN
	bg_event 42, 39, TEXT_FUCHSIACITY_WARDENS_HOME_SIGN
	bg_event 33, 17, TEXT_FUCHSIACITY_SAFARI_ZONE_SIGN
	bg_event 15, 37, TEXT_FUCHSIACITY_GYM_SIGN
	bg_event 51,  9, TEXT_FUCHSIACITY_CHANSEY_SIGN
	bg_event 43,  9, TEXT_FUCHSIACITY_VOLTORB_SIGN
	bg_event 19,  9, TEXT_FUCHSIACITY_KANGASKHAN_SIGN
	bg_event 43, 15, TEXT_FUCHSIACITY_SLOWPOKE_SIGN
	bg_event 25, 20, TEXT_FUCHSIACITY_LAPRAS_SIGN
	bg_event  9,  9, TEXT_FUCHSIACITY_FOSSIL_SIGN
	bg_event 43, 21, TEXT_FUCHSIACITY_TAUROS_SIGN          ; New sign added by G-Dubs
	bg_event 42, 39, TEXT_FUCHSIACITY_GOOD_ROD_HOUSE_SIGN  ; New sign added by G-Dubs
	
	def_object_events
	object_event 22, 16, SPRITE_YOUNGSTER, WALK, LEFT_RIGHT, TEXT_FUCHSIACITY_YOUNGSTER1
	object_event 42, 25, SPRITE_GAMBLER, WALK, LEFT_RIGHT, TEXT_FUCHSIACITY_GAMBLER
	object_event 42, 16, SPRITE_FISHER, STAY, DOWN, TEXT_FUCHSIACITY_ERIK
	object_event 42, 10, SPRITE_YOUNGSTER, STAY, UP, TEXT_FUCHSIACITY_YOUNGSTER2
	object_event 50,  8, SPRITE_CHANSEY, STAY, DOWN, TEXT_FUCHSIACITY_CHANSEY
	object_event 42,  8, SPRITE_POKE_BALL, STAY, NONE, TEXT_FUCHSIACITY_VOLTORB
	object_event 18,  8, SPRITE_MONSTER, WALK, LEFT_RIGHT, TEXT_FUCHSIACITY_KANGASKHAN
	object_event 42, 14, SPRITE_MONSTER, WALK, LEFT_RIGHT, TEXT_FUCHSIACITY_SLOWPOKE
	object_event 20, 21, SPRITE_LAPRAS, WALK, ANY_DIR, TEXT_FUCHSIACITY_LAPRAS
	object_event  8,  7, SPRITE_FOSSIL, STAY, NONE, TEXT_FUCHSIACITY_FOSSIL
	object_event 42, 20, SPRITE_QUADRUPED, STAY, DOWN, TEXT_FUCHSIACITY_TAUROS                ; New object added by G-Dubs

	def_warps_to FUCHSIA_CITY
