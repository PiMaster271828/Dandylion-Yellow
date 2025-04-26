SSAnneKitchen_Script:
	call EnableAutoTextBoxDrawing
	ld hl, SSAnne11TrainerHeaders
	ld de, SSAnneKitchen_ScriptPointers
	ld a, [wSSAnneKitchenCurScript]
	call ExecuteCurMapScriptInTable
	ld [wSSAnneKitchenCurScript], a
	ret

SSAnneKitchen_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_SSANNEKITCHEN_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_SSANNEKITCHEN_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_SSANNEKITCHEN_END_BATTLE

SSAnneKitchen_TextPointers:
	def_text_pointers
	dw_const SSAnneKitchenCook1Text, TEXT_SSANNEKITCHEN_COOK1   ; NPC changed to trainer by G-Dubs
	dw_const SSAnneKitchenCook2Text, TEXT_SSANNEKITCHEN_COOK2
	dw_const SSAnneKitchenCook3Text, TEXT_SSANNEKITCHEN_COOK3
	dw_const SSAnneKitchenCook4Text, TEXT_SSANNEKITCHEN_COOK4
	dw_const SSAnneKitchenCook5Text, TEXT_SSANNEKITCHEN_COOK5
	dw_const SSAnneKitchenCook6Text, TEXT_SSANNEKITCHEN_COOK6
	dw_const SSAnneKitchenCook7Text, TEXT_SSANNEKITCHEN_COOK7

SSAnne11TrainerHeaders:
	def_trainers
SSAnne11TrainerHeader0:
	trainer EVENT_BEAT_SS_ANNE_11_TRAINER_0, 0, SSAnneKitchenCook1BattleText, SSAnneKitchenCook1EndBattleText, SSAnneKitchenCook1AfterBattleText     ; NPC changed to trainer by G-Dubs 
/*
SSAnne11TrainerHeader1:
	trainer EVENT_BEAT_SS_ANNE_11_TRAINER_1, 0, SSAnneKitchenCook2BattleText, SSAnneKitchenCook2EndBattleText, SSAnneKitchenCook2AfterBattleText	 ; NPC changed to trainer by G-Dubs
SSAnne11TrainerHeader2:
	trainer EVENT_BEAT_SS_ANNE_11_TRAINER_2, 0, SSAnneKitchenCook3BattleText, SSAnneKitchenCook3EndBattleText, SSAnneKitchenCook3AfterBattleText	 ; NPC changed to trainer by G-Dubs
SSAnne11TrainerHeader3:
	trainer EVENT_BEAT_SS_ANNE_11_TRAINER_3, 0, SSAnneKitchenCook4BattleText, SSAnneKitchenCook4EndBattleText, SSAnneKitchenCook4AfterBattleText	 ; NPC changed to trainer by G-Dubs
SSAnne11TrainerHeader4:
	trainer EVENT_BEAT_SS_ANNE_11_TRAINER_4, 0, SSAnneKitchenCook5BattleText, SSAnneKitchenCook5EndBattleText, SSAnneKitchenCook5AfterBattleText	 ; NPC changed to trainer by G-Dubs
SSAnne11TrainerHeader5:
	trainer EVENT_BEAT_SS_ANNE_11_TRAINER_5, 0, SSAnneKitchenCook6BattleText, SSAnneKitchenCook6EndBattleText, SSAnneKitchenCook6AfterBattleText	 ; NPC changed to trainer by G-Dubs
SSAnne11TrainerHeader6:
	trainer EVENT_BEAT_SS_ANNE_11_TRAINER_6, 0, SSAnneKitchenCook7BattleText, SSAnneKitchenCook7EndBattleText, SSAnneKitchenCook7AfterBattleText	 ; NPC changed to trainer by G-Dubs
*/

SSAnneKitchenCook1Text:		           ; NPC changed to trainer by G-Dubs
	text_asm
	ld hl, SSAnne11TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

SSAnneKitchenCook2Text:
	text_far _SSAnneKitchenCook2Text
	text_end

SSAnneKitchenCook3Text:
	text_far _SSAnneKitchenCook3Text
	text_end

SSAnneKitchenCook4Text:
	text_far _SSAnneKitchenCook4Text
	text_end

SSAnneKitchenCook5Text:
	text_far _SSAnneKitchenCook5Text
	text_end

SSAnneKitchenCook6Text:
	text_far _SSAnneKitchenCook6Text
	text_end

SSAnneKitchenCook7Text:
	text_asm
	ld hl, .MainCourseIsText
	call PrintText
	ldh a, [hRandomAdd]
	bit 7, a
	jr z, .not_dialog_1
	ld hl, .SalmonDuSaladText
	jr .done
.not_dialog_1
	bit 4, a
	jr z, .not_dialog_2
	ld hl, .EelsAuBarbecueText
	jr .done
.not_dialog_2
	ld hl, .PrimeBeefSteakText
.done
	call PrintText
	jp TextScriptEnd

.MainCourseIsText:
	text_far _SSAnneKitchenCook7MainCourseIsText
	text_end

.SalmonDuSaladText:
	text_far SSAnneKitchenCook7SalmonDuSaladText
	text_end

.EelsAuBarbecueText:
	text_far SSAnneKitchenCook7EelsAuBarbecueText
	text_end

.PrimeBeefSteakText:
	text_far SSAnneKitchenCook7PrimeBeefSteakText
	text_end


SSAnneKitchenCook1BattleText:	                      ; NPC changed to trainer by G-Dubs
	text_far _SSAnneKitchenCook1BattleText
	text_end

SSAnneKitchenCook1EndBattleText:
	text_far _SSAnneKitchenCook1EndBattleText
	text_end	

SSAnneKitchenCook1AfterBattleText:	

	text_far _SSAnneKitchenCook1AfterBattleText
	text_end