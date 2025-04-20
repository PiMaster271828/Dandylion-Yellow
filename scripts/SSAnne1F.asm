SSAnne1F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, SSAnne7TrainerHeaders
	ld de, SSAnne1F_ScriptPointers
	ld a, [wSSAnne1FCurScript]
	call ExecuteCurMapScriptInTable
	ld [wSSAnne1FCurScript], a
	ret

SSAnne1F_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_SSANNE1F_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_SSANNE1F_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_SSANNE1F_END_BATTLE

SSAnne1F_TextPointers:
	def_text_pointers
	dw_const SSAnne1FWaiterText, TEXT_SSANNE1F_WAITER      ; NPC changed to trainer by G-Dubs
	dw_const SSAnne1FSailorText, TEXT_SSANNE1F_SAILOR

SSAnne7TrainerHeaders:
	def_trainers
SSAnne7TrainerHeader0:
    trainer EVENT_BEAT_SS_ANNE_7_TRAINER_0, 0, SSAnne1FWaiterBattleText, SSAnne1FWaiterEndBattleText, SSAnne1FWaiterAfterBattleText	  ; NPC changed to trainer by G-Dubs
	db -1 ; end

SSAnne1FWaiterText:  	                         ; NPC changed to trainer by G-Dubs
	text_asm
	ld hl, SSAnne7TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

SSAnne1FSailorText:
	text_far _SSAnne1FSailorText
	text_end

SSAnne1FWaiterBattleText:		                 ; NPC changed to trainer by G-Dubs
	text_far _SSAnne1FWaiterBattleText
	text_end

SSAnne1FWaiterEndBattleText:
	text_far _SSAnne1FWaiterEndBattleText	
	text_end

SSAnne1FWaiterAfterBattleText:
	text_far _SSAnne1FWaiterAfterBattleText
	text_end


	

