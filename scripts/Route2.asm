Route2_Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route2TrainerHeaders
	ld de, Route2_ScriptPointers
	ld a, [wRoute2CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute2CurScript], a
	ret

Route2_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_ROUTE2_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_ROUTE2_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_ROUTE2_END_BATTLE

Route2_TextPointers:
	def_text_pointers
    dw_const Route2Youngster1Text,       TEXT_ROUTE2_YOUNGSTER1           ; New NPC added by G-Dubs
   ;dw_const Route2Youngster2Text,       TEXT_ROUTE2_YOUNGSTER2           ; New trainer added by G-Dubs
   ;dw_const Route2Youngster3Text,       TEXT_ROUTE2_YOUNGSTER3           ; New trainer added by G-Dubs
	dw_const PickUpItemText,             TEXT_ROUTE2_MOON_STONE
	dw_const PickUpItemText,             TEXT_ROUTE2_HP_UP
	dw_const Route2SignSouthText,        TEXT_ROUTE2_SIGN_SOUTH
	dw_const Route2DiglettsCaveSignText, TEXT_ROUTE2_DIGLETTS_CAVE_SIGN
	dw_const Route2AltSignNorthText,     TEXT_ROUTE2_ALT_SIGN_NORTH       ; New sign added by G-Dubs
    dw_const Route2AltSignSouthText,     TEXT_ROUTE2_ALT_SIGN_SOUTH       ; New sign added by G-Dubs
	dw_const Route2SignNorthText,        TEXT_ROUTE2_SIGN_NORTH           ; New sign added by G-Dubs

    Route2TrainerHeaders:
		def_trainers 2
	;Route2TrainerHeader0:
	;	trainer EVENT_BEAT_ROUTE_3_TRAINER_0, 2, Route2Youngster1BattleText, Route2Youngster1EndBattleText, Route2Youngster1AfterBattleText
    db -1 ; end

Route2Youngster1Text:                       ; New NPC added by G-Dubs
	text_far _Route2Youngster1Text
	text_end

Route2SignSouthText:
	text_far _Route2SignSouthText
	text_end

Route2DiglettsCaveSignText:
	text_far _Route2DiglettsCaveSignText
	text_end

Route2AltSignNorthText:                     ; New sign added by G-Dubs
	text_far _Route2AltSignNorthText
	text_end

Route2AltSignSouthText:                     ; New sign added by G-Dubs
	text_far _Route2AltSignSouthText
	text_end

Route2SignNorthText:                        ; New sign added by G-Dubs
	text_far _Route2SignNorthText
	text_end