SSAnneKitchen_Script:
	call EnableAutoTextBoxDrawing
	ld hl, SSAnne12TrainerHeaders
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
	dw_const SSAnneKitchenCook2Text, TEXT_SSANNEKITCHEN_COOK2	; NPC changed to trainer by G-Dubs
	dw_const SSAnneKitchenCook3Text, TEXT_SSANNEKITCHEN_COOK3   ; NPC changed to trainer by G-Dubs
	dw_const SSAnneKitchenCook4Text, TEXT_SSANNEKITCHEN_COOK4   ; NPC changed to trainer by G-Dubs
	dw_const SSAnneKitchenCook5Text, TEXT_SSANNEKITCHEN_COOK5   ; NPC changed to trainer by G-Dubs
	dw_const SSAnneKitchenCook6Text, TEXT_SSANNEKITCHEN_COOK6   ; NPC changed to trainer by G-Dubs
	dw_const SSAnneKitchenCook7Text, TEXT_SSANNEKITCHEN_COOK7   ; NPC changed to trainer by G-Dubs

SSAnne12TrainerHeaders:
	def_trainers
SSAnne12TrainerHeader0:
	trainer EVENT_BEAT_SS_ANNE_12_TRAINER_0, 0, SSAnneKitchenCook1BattleText, SSAnneKitchenCook1EndBattleText, SSAnneKitchenCook1AfterBattleText     ; NPC changed to trainer by G-Dubs 
SSAnne12TrainerHeader1:
	trainer EVENT_BEAT_SS_ANNE_12_TRAINER_1, 0, SSAnneKitchenCook2BattleText, SSAnneKitchenCook2EndBattleText, SSAnneKitchenCook2AfterBattleText	 ; NPC changed to trainer by G-Dubs
SSAnne12TrainerHeader2:
	trainer EVENT_BEAT_SS_ANNE_12_TRAINER_2, 0, SSAnneKitchenCook3BattleText, SSAnneKitchenCook3EndBattleText, SSAnneKitchenCook3AfterBattleText	 ; NPC changed to trainer by G-Dubs
SSAnne12TrainerHeader3:
	trainer EVENT_BEAT_SS_ANNE_12_TRAINER_3, 0, SSAnneKitchenCook4BattleText, SSAnneKitchenCook4EndBattleText, SSAnneKitchenCook4AfterBattleText	 ; NPC changed to trainer by G-Dubs
SSAnne12TrainerHeader4:
	trainer EVENT_BEAT_SS_ANNE_12_TRAINER_4, 0, SSAnneKitchenCook5BattleText, SSAnneKitchenCook5EndBattleText, SSAnneKitchenCook5AfterBattleText	 ; NPC changed to trainer by G-Dubs
SSAnne12TrainerHeader5:
	trainer EVENT_BEAT_SS_ANNE_12_TRAINER_5, 0, SSAnneKitchenCook6BattleText, SSAnneKitchenCook6EndBattleText, SSAnneKitchenCook6AfterBattleText	 ; NPC changed to trainer by G-Dubs
SSAnne12TrainerHeader6:
	trainer EVENT_BEAT_SS_ANNE_12_TRAINER_6, 0, SSAnneKitchenCook7BattleText, SSAnneKitchenCook7EndBattleText, SSAnneKitchenCook7AfterBattleText	 ; NPC changed to trainer by G-Dubs
    db -1 ; end

SSAnneKitchenCook1Text:		           ; NPC changed to trainer by G-Dubs
	text_asm
	ld hl, SSAnne12TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

SSAnneKitchenCook2Text:		           ; NPC changed to trainer by G-Dubs
	text_asm
	ld hl, SSAnne12TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

SSAnneKitchenCook3Text:		           ; NPC changed to trainer by G-Dubs
	text_asm	
	ld hl, SSAnne12TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

SSAnneKitchenCook4Text:		           ; NPC changed to trainer by G-Dubs
	text_asm
	ld hl, SSAnne12TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

SSAnneKitchenCook5Text:			       ; NPC changed to trainer by G-Dubs
	text_asm
	ld hl, SSAnne12TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd
	
SSAnneKitchenCook6Text:			       ; NPC changed to trainer by G-Dubs
	text_asm
	ld hl, SSAnne12TrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd
	
SSAnneKitchenCook7Text:			       ; NPC changed to trainer by G-Dubs
	text_asm
	ld hl, SSAnne12TrainerHeader6
	call TalkToTrainer
	jp TextScriptEnd

SSAnneKitchenCook1BattleText:	                      ; NPC changed to trainer by G-Dubs
	text_far _SSAnneKitchenCook1BattleText
	text_end

SSAnneKitchenCook1EndBattleText:
	text_far _SSAnneKitchenCook1EndBattleText
	text_end	

SSAnneKitchenCook1AfterBattleText:	
	text_far _SSAnneKitchenCook1AfterBattleText
	text_end

SSAnneKitchenCook2BattleText:	                      ; NPC changed to trainer by G-Dubs
	text_far _SSAnneKitchenCook2BattleText
	text_end

SSAnneKitchenCook2EndBattleText:	
	text_far _SSAnneKitchenCook2EndBattleText
	text_end

SSAnneKitchenCook2AfterBattleText:	
	text_far _SSAnneKitchenCook2AfterBattleText
	text_end

SSAnneKitchenCook3BattleText:	                      ; NPC changed to trainer by G-Dubs
	text_far _SSAnneKitchenCook3BattleText
	text_end

SSAnneKitchenCook3EndBattleText:	
	text_far _SSAnneKitchenCook3EndBattleText
	text_end	

SSAnneKitchenCook3AfterBattleText:	
	text_far _SSAnneKitchenCook3AfterBattleText
	text_end

SSAnneKitchenCook4BattleText:	                      ; NPC changed to trainer by G-Dubs	
	text_far _SSAnneKitchenCook4BattleText
	text_end

SSAnneKitchenCook4EndBattleText:	
	text_far _SSAnneKitchenCook4EndBattleText
	text_end

SSAnneKitchenCook4AfterBattleText:	
	text_far _SSAnneKitchenCook4AfterBattleText
	text_end

SSAnneKitchenCook5BattleText:	                      ; NPC changed to trainer by G-Dubs
	text_far _SSAnneKitchenCook5BattleText	
	text_end

SSAnneKitchenCook5EndBattleText:	
	text_far _SSAnneKitchenCook5EndBattleText
	text_end

SSAnneKitchenCook5AfterBattleText:			
	text_far _SSAnneKitchenCook5AfterBattleText
	text_end

SSAnneKitchenCook6BattleText:	                      ; NPC changed to trainer by G-Dubs
	text_far _SSAnneKitchenCook6BattleText
	text_end	

SSAnneKitchenCook6EndBattleText:	
	text_far _SSAnneKitchenCook6EndBattleText
	text_end		

SSAnneKitchenCook6AfterBattleText:			
	text_far _SSAnneKitchenCook6AfterBattleText	
	text_end

SSAnneKitchenCook7BattleText:	                      ; NPC changed to trainer by G-Dubs
	text_far _SSAnneKitchenCook7BattleText
	text_end

SSAnneKitchenCook7EndBattleText:
	text_far _SSAnneKitchenCook7EndBattleText
	text_end

SSAnneKitchenCook7AfterBattleText:
	text_asm
	ldh a, [hRandomAdd]           ; Load a random number (0–255) into a
    bit 7, a
	jr z, .not_dialog_1           ; If bit 7 is 0 (number < 128), jump to .not_dialog_1 (to check bit 4)
	ld hl, .SalmonDuSaladText
	call PrintText                ; Otherwise (bit 7 is 1), print "Salmon Du Salad" text
	jr .done
.not_dialog_1
	bit 4, a
	jr z, .not_dialog_2           ; If bit 4 is 0, jump to .not_dialog_2 (Prime Beef Steak)
	ld hl, .EelsAuBarbecueText
	call PrintText                ; If bit 4 is 1, print "Eels Au Barbecue" text
	jr .done
.not_dialog_2
	ld hl, .PrimeBeefSteakText
	call PrintText                ; Otherwise, print "Prime Beef Steak" text
.done
	jp TextScriptEnd

.SalmonDuSaladText:
	text_far _SSAnneKitchenCook7AfterBattleSalmonDuSaladText
	text_end

.EelsAuBarbecueText:
	text_far _SSAnneKitchenCook7AfterBattleEelsAuBarbecueText
	text_end

.PrimeBeefSteakText:
	text_far _SSAnneKitchenCook7AfterBattlePrimeBeefSteakText
	text_end
	