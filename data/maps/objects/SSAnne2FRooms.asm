	object_const_def
	const_export SSANNE2FROOMS_GENTLEMAN1
	const_export SSANNE2FROOMS_FISHER
	const_export SSANNE2FROOMS_GENTLEMAN2
	const_export SSANNE2FROOMS_COOLTRAINER_F
	const_export SSANNE2FROOMS_GENTLEMAN3        ; NPC changed to trainer by G-Dubs
	const_export SSANNE2FROOMS_GENTLEMAN4        ; NPC changed to trainer by G-Dubs
    const_export SSANNE2FROOMS_LITTLE_BOY		 ; NPC changed to trainer by G-Dubs
    const_export SSANNE2FROOMS_BRUNETTE_GIRL     ; NPC changed to trainer by G-Dubs
    const_export SSANNE2FROOMS_BEAUTY1           ; NPC changed to trainer by G-Dubs



	const_export SSANNE2FROOMS_GENTLEMAN5
	const_export SSANNE2FROOMS_GRAMPS
	const_export SSANNE2FROOMS_MAX_ETHER
    const_export SSANNE2FROOMS_RARE_CANDY

SSAnne2FRooms_Object:
	db $c ; border block

	def_warp_events
	warp_event  2,  5, SS_ANNE_2F, 1   ; Warp event 1
	warp_event  3,  5, SS_ANNE_2F, 1   ; Warp event 2
	warp_event 12,  5, SS_ANNE_2F, 2   ; Warp event 3
	warp_event 13,  5, SS_ANNE_2F, 2   ; Warp event 4
	warp_event 22,  5, SS_ANNE_2F, 3   ; Warp event 5
	warp_event 23,  5, SS_ANNE_2F, 3   ; Warp event 6
	warp_event 32,  5, SS_ANNE_2F, 4   ; Warp event 7
	warp_event 33,  5, SS_ANNE_2F, 4   ; Warp event 8
	warp_event  2, 15, SS_ANNE_2F, 5   ; Warp event 9
	warp_event  3, 15, SS_ANNE_2F, 5   ; Warp event 10
	warp_event 12, 15, SS_ANNE_2F, 6   ; Warp event 11
	warp_event 13, 15, SS_ANNE_2F, 6   ; Warp event 12
	warp_event 22, 15, SS_ANNE_2F, 7   ; Warp event 13     ; New warp event added by G-Dubs
	warp_event 23, 15, SS_ANNE_2F, 7   ; Warp event 14     ; New warp event added by G-Dubs
	warp_event 32, 15, SS_ANNE_2F, 8   ; Warp event 15     ; New warp event added by G-Dubs
	warp_event 33, 15, SS_ANNE_2F, 8   ; Warp event 16     ; New warp event added by G-Dubs

	def_bg_events

	def_object_events
	object_event 10,  2, SPRITE_GENTLEMAN, STAY, RIGHT, TEXT_SSANNE2FROOMS_GENTLEMAN1, OPP_GENTLEMAN, 3
	object_event 13,  4, SPRITE_FISHER, STAY, LEFT, TEXT_SSANNE2FROOMS_FISHER, OPP_FISHER, 1
	object_event 30,  4, SPRITE_GENTLEMAN, STAY, RIGHT, TEXT_SSANNE2FROOMS_GENTLEMAN2, OPP_GENTLEMAN, 5
	object_event 32,  1, SPRITE_COOLTRAINER_F, STAY, DOWN, TEXT_SSANNE2FROOMS_COOLTRAINER_F, OPP_LASS, 12
	object_event 21,  2, SPRITE_GENTLEMAN, STAY, DOWN, TEXT_SSANNE2FROOMS_GENTLEMAN3, OPP_GENTLEMAN, 4            ; NPC changed to trainer by G-Dubs
	object_event  2, 12, SPRITE_GENTLEMAN, STAY, DOWN, TEXT_SSANNE2FROOMS_GENTLEMAN4, OPP_GENTLEMAN, 7            ; NPC changed to trainer by G-Dubs
    object_event  1, 14, SPRITE_LITTLE_BOY, STAY, NONE, TEXT_SSANNE2FROOMS_LITTLE_BOY, OPP_SCHOOL_KID, 7          ; NPC changed to trainer by G-Dubs
	object_event 12, 12, SPRITE_BRUNETTE_GIRL, STAY, LEFT, TEXT_SSANNE2FROOMS_BRUNETTE_GIRL, OPP_SCHOOL_KID, 4    ; NPC changed to trainer by G-Dubs
    object_event 10, 12, SPRITE_BEAUTY, STAY, RIGHT, TEXT_SSANNE2FROOMS_BEAUTY1, OPP_BEAUTY, 4                    ; NPC changed to trainer by G-Dubs




	object_event  1,  2, SPRITE_GENTLEMAN, STAY, DOWN, TEXT_SSANNE2FROOMS_GENTLEMAN5
	object_event 22,  1, SPRITE_GRAMPS, STAY, DOWN, TEXT_SSANNE2FROOMS_GRAMPS
	object_event 12,  1, SPRITE_POKE_BALL, STAY, NONE, TEXT_SSANNE2FROOMS_MAX_ETHER, MAX_ETHER
	object_event 30,  2, SPRITE_POKE_BALL, STAY, NONE, TEXT_SSANNE2FROOMS_RARE_CANDY, RARE_CANDY

	def_warps_to SS_ANNE_2F_ROOMS
