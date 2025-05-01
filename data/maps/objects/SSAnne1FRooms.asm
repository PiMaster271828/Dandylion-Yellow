	object_const_def
	const_export SSANNE1FROOMS_GENTLEMAN1
	const_export SSANNE1FROOMS_GENTLEMAN2
	const_export SSANNE1FROOMS_YOUNGSTER
	const_export SSANNE1FROOMS_COOLTRAINER_F
	const_export SSANNE1FROOMS_GENTLEMAN3        ; NPC changed to trainer by G-Dubs
	const_export SSANNE1FROOMS_GIRL1             ; NPC changed to trainer by G-Dubs
	const_export SSANNE1FROOMS_MIDDLE_AGED_MAN	 ; NPC changed to trainer by G-Dubs
	const_export SSANNE1FROOMS_GIRL2		     ; NPC changed to trainer by G-Dubs
    const_export SSANNE1FROOMS_GIRL3		     ; New trainer added by G-Dubs
	const_export SSANNE1FROOMS_GENTLEMAN4        ; New trainer added by G-Dubs
	const_export SSANNE1FROOMS_LITTLE_GIRL		 ; NPC changed to trainer by G-Dubs
	const_export SSANNE1FROOMS_WIGGLYTUFF
	const_export SSANNE1FROOMS_TM_BODY_SLAM
	
SSAnne1FRooms_Object:
	db $c ; border block

	def_warp_events
	warp_event  0,  0, SS_ANNE_1F, 3   ; Warp event 1
	warp_event 10,  0, SS_ANNE_1F, 4   ; Warp event 2
	warp_event 20,  0, SS_ANNE_1F, 5   ; Warp event 3
	warp_event 30,  0, SS_ANNE_1F, 6   ; Warp event 4
	warp_event  0, 10, SS_ANNE_1F, 7   ; Warp event 5
	warp_event 10, 10, SS_ANNE_1F, 8   ; Warp event 6
	warp_event 20, 10, SS_ANNE_1F, 9   ; Warp event 7	 ; New warp event added by G-Dubs
	warp_event 30, 10, SS_ANNE_1F, 10  ; Warp event 8	 ; New warp event added by G-Dubs

	def_bg_events
	bg_event 33, 14, TEXT_SSANNE1FROOMS_BED              ; Healing bed added by G-Dubs
	bg_event 33, 15, TEXT_SSANNE1FROOMS_BED              ; Healing bed added by G-Dubs

	def_object_events
	object_event  2,  3, SPRITE_GENTLEMAN, STAY, LEFT, TEXT_SSANNE1FROOMS_GENTLEMAN1, OPP_GENTLEMAN, 1
	object_event 11,  4, SPRITE_GENTLEMAN, STAY, UP, TEXT_SSANNE1FROOMS_GENTLEMAN2, OPP_GENTLEMAN, 2
	object_event 11, 14, SPRITE_YOUNGSTER, STAY, UP, TEXT_SSANNE1FROOMS_YOUNGSTER, OPP_YOUNGSTER, 8
	object_event 13, 11, SPRITE_COOLTRAINER_F, STAY, LEFT, TEXT_SSANNE1FROOMS_COOLTRAINER_F, OPP_LASS, 11
	object_event 21, 13, SPRITE_GENTLEMAN, STAY, RIGHT, TEXT_SSANNE1FROOMS_GENTLEMAN3, OPP_GENTLEMAN, 7                ; NPC changed to trainer by G-Dubs
	object_event 22,  3, SPRITE_GIRL, STAY, UP, TEXT_SSANNE1FROOMS_GIRL1, OPP_LADY, 2                                  ; NPC changed to trainer by G-Dubs
	object_event  0, 14, SPRITE_MIDDLE_AGED_MAN, STAY, RIGHT, TEXT_SSANNE1FROOMS_MIDDLE_AGED_MAN, OPP_POKEFAN_M, 4	   ; NPC changed to trainer by G-Dubs
	object_event 10, 13, SPRITE_GIRL, STAY, RIGHT, TEXT_SSANNE1FROOMS_GIRL2, OPP_LADY, 3                               ; NPC changed to trainer by G-Dubs
	object_event 32,  1, SPRITE_GIRL, STAY, DOWN, TEXT_SSANNE1FROOMS_GIRL3, OPP_LADY, 4                                ; New trainer added by G-Dubs
	object_event 33,  1, SPRITE_GENTLEMAN, STAY, DOWN, TEXT_SSANNE1FROOMS_GENTLEMAN4, OPP_GENTLEMAN, 8                 ; New trainer added by G-Dubs
	object_event  2, 11, SPRITE_LITTLE_GIRL, STAY, DOWN, TEXT_SSANNE1FROOMS_LITTLE_GIRL, OPP_SCHOOL_KID, 3              ; NPC changed to trainer by G-Dubs
	object_event  3, 11, SPRITE_JIGGLYPUFF, STAY, DOWN, TEXT_SSANNE1FROOMS_WIGGLYTUFF
	object_event 12, 15, SPRITE_POKE_BALL, STAY, NONE, TEXT_SSANNE1FROOMS_TM_BODY_SLAM, TM_BODY_SLAM
	
	def_warps_to SS_ANNE_1F_ROOMS
