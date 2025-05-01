	object_const_def
	const_export VIRIDIANSCHOOLHOUSE_LITTLE_GIRL
	const_export VIRIDIANSCHOOLHOUSE_BRUNETTE_GIRL1   ; NPC changed to trainer by G-Dubs
    const_export VIRIDIANSCHOOLHOUSE_COOLTRAINER_F1   ; NPC changed to trainer by G-Dubs
    const_export VIRIDIANSCHOOLHOUSE_COOLTRAINER_F2   ; New trainer added by G-Dubs
    const_export VIRIDIANSCHOOLHOUSE_LITTLE_BOY1      ; New trainer added by G-Dubs
    const_export VIRIDIANSCHOOLHOUSE_BRUNETTE_GIRL2   ; New trainer added by G-Dubs
	const_export VIRIDIANSCHOOLHOUSE_LITTLE_BOY2      ; New trainer added by G-Dubs
  
ViridianSchoolHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 3
	warp_event  3,  7, LAST_MAP, 3

	def_bg_events

	def_object_events
	object_event  4,  5, SPRITE_LITTLE_GIRL, STAY, UP, TEXT_VIRIDIANSCHOOLHOUSE_LITTLE_GIRL
    object_event  3,  5, SPRITE_BRUNETTE_GIRL, STAY, UP, TEXT_VIRIDIANSCHOOLHOUSE_BRUNETTE_GIRL1, OPP_SCHOOL_KID, 1         ; NPC changed to trainer by G-Dubs
    object_event  4,  1, SPRITE_COOLTRAINER_F, STAY, DOWN, TEXT_VIRIDIANSCHOOLHOUSE_COOLTRAINER_F1, OPP_TEACHER, 1          ; NPC changed to trainer by G-Dubs
    object_event  7,  5, SPRITE_COOLTRAINER_F, STAY, LEFT, TEXT_VIRIDIANSCHOOLHOUSE_COOLTRAINER_F2, OPP_TEACHER, 2          ; New trainer added by G-Dubs 	
    object_event  0,  4, SPRITE_LITTLE_BOY, STAY, RIGHT, TEXT_VIRIDIANSCHOOLHOUSE_LITTLE_BOY1, OPP_SCHOOL_KID, 5            ; New trainer added by G-Dubs
    object_event  0,  3, SPRITE_BRUNETTE_GIRL, STAY, RIGHT, TEXT_VIRIDIANSCHOOLHOUSE_BRUNETTE_GIRL2, OPP_SCHOOL_KID, 2      ; New trainer added by G-Dubs
	object_event  0,  2, SPRITE_LITTLE_BOY, STAY, RIGHT, TEXT_VIRIDIANSCHOOLHOUSE_LITTLE_BOY2, OPP_SCHOOL_KID, 6            ; New trainer added by G-Dubs
  	
	def_warps_to VIRIDIAN_SCHOOL_HOUSE
