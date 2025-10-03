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
	dw_const PickUpItemText,             TEXT_ROUTE2_MOON_STONE
	dw_const PickUpItemText,             TEXT_ROUTE2_HP_UP
	dw_const Route2SignSouthText,        TEXT_ROUTE2_SIGN_SOUTH
	dw_const Route2DiglettsCaveSignText, TEXT_ROUTE2_DIGLETTS_CAVE_SIGN
	dw_const Route2AltSignNorthText,     TEXT_ROUTE2_ALT_SIGN_NORTH       ; New sign added by G-Dubs
    dw_const Route2AltSignSouthText,     TEXT_ROUTE2_ALT_SIGN_SOUTH       ; New sign added by G-Dubs
	dw_const Route2SignNorthText,        TEXT_ROUTE2_SIGN_NORTH           ; New sign added by G-Dubs

    Route2TrainerHeaders:
	def_trainers
    db -1 ; end

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