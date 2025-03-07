	object_const_def
	const_export MTMOONB2F_SUPER_NERD
	const_export MTMOONB2F_JESSIE
	const_export MTMOONB2F_ROCKET1               ; Trainer from Red & Blue added by G-Dubs
	const_export MTMOONB2F_ROCKET2
	const_export MTMOONB2F_ROCKET3
	const_export MTMOONB2F_ROCKET4
	const_export MTMOONB2F_ROCKET5
    const_export MTMOONB2F_ROCKET6
	const_export MTMOONB2F_JAMES
	const_export MTMOONB2F_DOME_FOSSIL
	const_export MTMOONB2F_HELIX_FOSSIL
	const_export MTMOONB2F_HP_UP
	const_export MTMOONB2F_TM_MEGA_PUNCH

MtMoonB2F_Object:
	db $3 ; border block

	def_warp_events
	warp_event 25,  5, MT_MOON_B1F,  2 ; Warp Event 1
	warp_event 21, 15, MT_MOON_B1F,  5 ; Warp Event 2
	warp_event 15, 27, MT_MOON_B1F,  6 ; Warp Event 3
	warp_event  5,  7, MT_MOON_B1F,  7 ; Warp Event 4
	warp_event 37, 33, MT_MOON_B1F,  9 ; Warp Event 5
	warp_event  3, 33, MT_MOON_B1F, 10 ; Warp Event 6

	def_bg_events

	def_object_events
	object_event 12,  8, SPRITE_SUPER_NERD, STAY, RIGHT, TEXT_MTMOONB2F_SUPER_NERD, OPP_SUPER_NERD, 2
	object_event  9,  3, SPRITE_JESSIE, STAY, LEFT, TEXT_MTMOONB2F_JESSIE
	object_event 11, 16, SPRITE_ROCKET, STAY, DOWN, TEXT_MTMOONB2F_ROCKET1, OPP_ROCKET, 1               ; Trainer from Red & Blue added by G-Dubs
	object_event 15, 22, SPRITE_ROCKET, STAY, DOWN, TEXT_MTMOONB2F_ROCKET2, OPP_ROCKET, 2
	object_event 29,  7, SPRITE_ROCKET, STAY, UP, TEXT_MTMOONB2F_ROCKET3, OPP_ROCKET, 3
	object_event 29, 15, SPRITE_ROCKET, STAY, LEFT, TEXT_MTMOONB2F_ROCKET4, OPP_ROCKET, 4
	object_event 30, 15, SPRITE_ROCKET, STAY, RIGHT, TEXT_MTMOONB2F_ROCKET5, OPP_ROCKET, 42             ; New trainer added by G-Dubs
    object_event  1, 12, SPRITE_ROCKET, STAY, DOWN, TEXT_MTMOONB2F_ROCKET6, OPP_ROCKET, 43              ; New trainer added by G-Dubs
	object_event  9,  4, SPRITE_JAMES, STAY, LEFT, TEXT_MTMOONB2F_JAMES
	object_event 12,  6, SPRITE_FOSSIL, STAY, NONE, TEXT_MTMOONB2F_DOME_FOSSIL
	object_event 13,  6, SPRITE_FOSSIL, STAY, NONE, TEXT_MTMOONB2F_HELIX_FOSSIL
	object_event 25, 21, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTMOONB2F_HP_UP, HP_UP
	object_event 29,  1, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTMOONB2F_TM_MEGA_PUNCH, TM_MEGA_PUNCH

	def_warps_to MT_MOON_B2F
