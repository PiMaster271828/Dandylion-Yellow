	object_const_def
	const_export SSANNEKITCHEN_COOK1   ; NPC changed to trainer by G-Dubs
	const_export SSANNEKITCHEN_COOK2   ; NPC changed to trainer by G-Dubs
	const_export SSANNEKITCHEN_COOK3   ; NPC changed to trainer by G-Dubs
	const_export SSANNEKITCHEN_COOK4   ; NPC changed to trainer by G-Dubs
	const_export SSANNEKITCHEN_COOK5   ; NPC changed to trainer by G-Dubs
	const_export SSANNEKITCHEN_COOK6   ; NPC changed to trainer by G-Dubs
	const_export SSANNEKITCHEN_COOK7   ; NPC changed to trainer by G-Dubs

SSAnneKitchen_Object:
	db $c ; border block

	def_warp_events
	warp_event  6,  0, SS_ANNE_1F, 13

	def_bg_events

	def_object_events
	object_event  1,  8, SPRITE_COOK, WALK, UP_DOWN, TEXT_SSANNEKITCHEN_COOK1, OPP_CHEF, 1    ; NPC changed to trainer by G-Dubs
	object_event  5,  8, SPRITE_COOK, WALK, UP_DOWN, TEXT_SSANNEKITCHEN_COOK2, OPP_CHEF, 2    ; NPC changed to trainer by G-Dubs
	object_event  9,  7, SPRITE_COOK, WALK, UP_DOWN, TEXT_SSANNEKITCHEN_COOK3, OPP_CHEF, 3    ; NPC changed to trainer by G-Dubs
	object_event 13,  6, SPRITE_COOK, STAY, NONE, TEXT_SSANNEKITCHEN_COOK4, OPP_CHEF, 4       ; NPC changed to trainer by G-Dubs
	object_event 13,  8, SPRITE_COOK, STAY, NONE, TEXT_SSANNEKITCHEN_COOK5, OPP_CHEF, 5       ; NPC changed to trainer by G-Dubs
	object_event 13, 10, SPRITE_COOK, STAY, NONE, TEXT_SSANNEKITCHEN_COOK6, OPP_CHEF, 6       ; NPC changed to trainer by G-Dubs
	object_event 11, 13, SPRITE_COOK, STAY, UP, TEXT_SSANNEKITCHEN_COOK7, OPP_CHEF, 7         ; NPC changed to trainer by G-Dubs

	def_warps_to SS_ANNE_KITCHEN
