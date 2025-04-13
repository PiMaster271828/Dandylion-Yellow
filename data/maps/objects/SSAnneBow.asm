	object_const_def
	const_export SSANNEBOW_COOLTRAINER_M    
	const_export SSANNEBOW_COOLTRAINER_F    ; NPC added by G-Dubs
	const_export SSANNEBOW_SUPER_NERD		; NPC changed to trainer by G-Dubs
	const_export SSANNEBOW_SAILOR1			; NPC changed to trainer by G-Dubs
	const_export SSANNEBOW_SAILOR2
	const_export SSANNEBOW_SAILOR3
	const_export SSANNEBOW_GIRL             ; New trainer added by G-Dubs
	const_export SSANNEBOW_SAILOR4			; New trainer added by G-Dubs

SSAnneBow_Object:
	db $23 ; border block

	def_warp_events
	warp_event 13,  6, SS_ANNE_3F, 1
	warp_event 13,  7, SS_ANNE_3F, 1

	def_bg_events

	def_object_events
	object_event  6, 11, SPRITE_COOLTRAINER_M, STAY, NONE, TEXT_SSANNEBOW_COOLTRAINER_M
	object_event 10, 11, SPRITE_COOLTRAINER_F, STAY, NONE, TEXT_SSANNEBOW_COOLTRAINER_F            ; NPC added by G-Dubs
	object_event  5,  2, SPRITE_SUPER_NERD, STAY, UP, TEXT_SSANNEBOW_SUPER_NERD, OPP_POKEMANIAC, 9 ; NPC changed to trainer by G-Dubs
	object_event  5,  8, SPRITE_SAILOR, STAY, DOWN, TEXT_SSANNEBOW_SAILOR1, OPP_SAILOR, 9          ; NPC changed to trainer by G-Dubs
	object_event  4,  5, SPRITE_SAILOR, STAY, DOWN, TEXT_SSANNEBOW_SAILOR2, OPP_SAILOR, 1
	object_event  9,  8, SPRITE_SAILOR, STAY, UP, TEXT_SSANNEBOW_SAILOR3, OPP_SAILOR, 2
	object_event  1,  7, SPRITE_GIRL, STAY, LEFT, TEXT_SSANNEBOW_GIRL, OPP_LADY, 1                 ; New trainer added by G-Dubs
	object_event 11,  2, SPRITE_SAILOR, STAY, DOWN, TEXT_SSANNEBOW_SAILOR4, OPP_SAILOR, 7 	       ; New trainer added by G-Dubs 

	def_warps_to SS_ANNE_BOW
