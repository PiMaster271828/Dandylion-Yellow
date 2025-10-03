Route1_Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route1TrainerHeaders
	ld de, Route1_ScriptPointers
	ld a, [wRoute1CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute1CurScript], a
	ret

Route1_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_ROUTE1_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_ROUTE1_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_ROUTE1_END_BATTLE

Route1_TextPointers:
	def_text_pointers
	dw_const Route1Youngster1Text, TEXT_ROUTE1_YOUNGSTER1
	dw_const Route1Youngster2Text, TEXT_ROUTE1_YOUNGSTER2
	dw_const Route1SignText,       TEXT_ROUTE1_SIGN

Route1TrainerHeaders:
	def_trainers
	db -1 ; end

Route1Youngster1Text:
	text_asm
	farcall Route1PrintYoungster1Text
	jp TextScriptEnd

Route1Youngster2Text:
	text_asm
	farcall Route1PrintYoungster2Text
	jp TextScriptEnd

Route1SignText:
	text_asm
	farcall Route1PrintSignText
	jp TextScriptEnd
