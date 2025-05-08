SSAnne3F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, SSAnne13TrainerHeaders
	ld de, SSAnne3F_ScriptPointers
	ld a, [wSSAnne3FCurScript]
	call ExecuteCurMapScriptInTable
	ld [wSSAnne3FCurScript], a
	ret

SSAnne3F_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_SSANNE3F_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_SSANNE3F_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_SSANNE3F_END_BATTLE

SSAnne3F_TextPointers:
	def_text_pointers
	dw_const SSAnne3FSailorText, TEXT_SSANNE3F_SAILOR      ; NPC changed to trainer by G-Dubs

SSAnne13TrainerHeaders:
	def_trainers
SSAnne13TrainerHeader0:
	trainer EVENT_BEAT_SS_ANNE_13_TRAINER_0, 0, SSAnne3FSailorBattleText, SSAnne3FSailorEndBattleText, SSAnne3FSailorAfterBattleText  ; NPC changed to trainer by G-Dubs
	db -1 ; end

SSAnne3FSailorText:
	text_asm
	ld hl, SSAnne13TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

SSAnne3FSailorBattleText:	                ; NPC changed to trainer by G-Dubs
	text_far _SSAnne3FSailorBattleText
	text_end

SSAnne3FSailorEndBattleText:
	text_far _SSAnne3FSailorEndBattleText
	text_end

SSAnne3FSailorAfterBattleText:
	text_far _SSAnne3FSailorAfterBattleText
	text_end
