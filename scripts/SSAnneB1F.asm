SSAnneB1F_Script:
	call DisableAutoTextBoxDrawing
	ld hl, SSAnne11TrainerHeaders
	ld de, SSAnneB1F_ScriptPointers
	ld a, [wSSAnneB1FCurScript]
	call ExecuteCurMapScriptInTable
	ld [wSSAnneB1FCurScript], a
	ret

SSAnneB1F_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_SSANNEB1F_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_SSANNEB1F_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_SSANNEB1F_END_BATTLE

SSAnneB1F_TextPointers:
	def_text_pointers
	dw_const SSAnneB1FWaiterText,         TEXT_SSANNEB1F_WAITER	          ; New trainer added by G-Dubs


SSAnne11TrainerHeaders:
	def_trainers
SSAnne11TrainerHeader0:
	trainer EVENT_BEAT_SS_ANNE_11_TRAINER_0, 0, SSAnneB1FWaiterBattleText, SSAnneB1FWaiterEndBattleText, SSAnneB1FWaiterAfterBattleText    ; New trainer added by G-Dubs
	db -1 ; end

SSAnneB1FWaiterText:		                         ; New trainer added by G-Dubs
	text_asm
	ld hl, SSAnne11TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

SSAnneB1FWaiterBattleText:
	text_far _SSAnneB1FWaiterBattleText
	text_end

SSAnneB1FWaiterEndBattleText:
	text_far _SSAnneB1FWaiterEndBattleText
	text_end

SSAnneB1FWaiterAfterBattleText:
	text_far _SSAnneB1FWaiterAfterBattleText
	text_end