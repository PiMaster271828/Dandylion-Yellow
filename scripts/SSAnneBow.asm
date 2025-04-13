SSAnneBow_Script:
	call EnableAutoTextBoxDrawing
	ld hl, SSAnne5TrainerHeaders
	ld de, SSAnneBow_ScriptPointers
	ld a, [wSSAnneBowCurScript]
	call ExecuteCurMapScriptInTable
	ld [wSSAnneBowCurScript], a
	ret

SSAnneBow_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_SSANNEBOW_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_SSANNEBOW_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_SSANNEBOW_END_BATTLE

SSAnneBow_TextPointers:
	def_text_pointers
	dw_const SSAnneBowCooltrainerMText, TEXT_SSANNEBOW_COOLTRAINER_M
	dw_const SSAnneBowCooltrainerFText, TEXT_SSANNEBOW_COOLTRAINER_F	  ; NPC added by G-Dubs	
	dw_const SSAnneBowSuperNerdText,    TEXT_SSANNEBOW_SUPER_NERD	      ; NPC changed to trainer by G-Dubs
	dw_const SSAnneBowSailor1Text,      TEXT_SSANNEBOW_SAILOR1		      ; NPC changed to trainer by G-Dubs
	dw_const SSAnneBowSailor2Text,      TEXT_SSANNEBOW_SAILOR2
	dw_const SSAnneBowSailor3Text,      TEXT_SSANNEBOW_SAILOR3
	dw_const SSAnneBowGirlText,         TEXT_SSANNEBOW_GIRL			      ; New trainer added by G-Dubs
	dw_const SSAnneBowSailor4Text,      TEXT_SSANNEBOW_SAILOR4		      ; New trainer added by G-Dubs

SSAnne5TrainerHeaders:
	def_trainers 3      ; Changed from def_trainers 4 by G-Dubs
SSAnne5TrainerHeader0:
	trainer EVENT_BEAT_SS_ANNE_5_TRAINER_0, 0, SSAnneBowSailor1BattleText, SSAnneBowSailor1EndBattleText, SSAnneBowSailor1AfterBattleText            ; NPC changed to trainer by G-Dubs
SSAnne5TrainerHeader1:
	trainer EVENT_BEAT_SS_ANNE_5_TRAINER_1, 0, SSAnneBowSuperNerdBattleText, SSAnneBowSuperNerdEndBattleText, SSAnneBowSuperNerdAfterBattleText      ; NPC changed to trainer by G-Dubs
SSAnne5TrainerHeader2:
	trainer EVENT_BEAT_SS_ANNE_5_TRAINER_2, 3, SSAnneBowSailor2BattleText, SSAnneBowSailor2EndBattleText, SSAnneBowSailor2AfterBattleText
SSAnne5TrainerHeader3:
	trainer EVENT_BEAT_SS_ANNE_5_TRAINER_3, 3, SSAnneBowSailor3BattleText, SSAnneBowSailor3EndBattleText, SSAnneBowSailor3AfterBattleText
SSAnne5TrainerHeader4:	
	trainer EVENT_BEAT_SS_ANNE_5_TRAINER_4, 0, SSAnneBowGirlBattleText, SSAnneBowGirlEndBattleText, SSAnneBowGirlAfterBattleText                     ; New trainer added by G-Dubs
SSAnne5TrainerHeader5:	
	trainer EVENT_BEAT_SS_ANNE_5_TRAINER_5, 4, SSAnneBowSailor4BattleText, SSAnneBowSailor4EndBattleText, SSAnneBowSailor4AfterBattleText            ; New trainer added by G-Dubs
	db -1 ; end

SSAnneBowCooltrainerMText:
	text_far _SSAnneBowCooltrainerMText
	text_end
	
SSAnneBowCooltrainerFText:	                     ; New NPC added by G-Dubs
	text_asm
	ldh a, [hRandomAdd]
	bit 0, a                  ; Check bit 0 (least significant bit) for 50/50 chance
	jr nz, .SecondTextLabel   ; If bit is 1, go to second dialogue
	ld hl, .FirstText
	call PrintText
	jr .end
.SecondTextLabel:
	ld hl, .SecondText
	call PrintText
.end:
	jp TextScriptEnd

.FirstText:
	text_far _SSAnneBowCooltrainerFText1
	text_end

.SecondText:
	text_far _SSAnneBowCooltrainerFText2
	text_end

SSAnneBowSailor1Text:				             ; New trainer added by G-Dubs
	text_asm
	ld hl, SSAnne5TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

SSAnneBowSailor1BattleText:
	text_far _SSAnneBowSailor1BattleText	
	text_end

SSAnneBowSailor1EndBattleText:
	text_far _SSAnneBowSailor1EndBattleText
	text_end

SSAnneBowSailor1AfterBattleText:
	text_far _SSAnneBowSailor1AfterBattleText
	text_end

SSAnneBowSuperNerdText:				             ; New trainer added by G-Dubs
    text_asm
    ld hl, SSAnne5TrainerHeader1
    call TalkToTrainer
    jp TextScriptEnd

SSAnneBowSuperNerdBattleText:
    text_far _SSAnneBowSuperNerdBattleText
    text_end

SSAnneBowSuperNerdEndBattleText:
    text_far _SSAnneBowSuperNerdEndBattleText	
    text_end

SSAnneBowSuperNerdAfterBattleText:
    text_far _SSAnneBowSuperNerdAfterBattleText
    text_end

SSAnneBowSailor2Text:
	text_asm
	ld hl, SSAnne5TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

SSAnneBowSailor2BattleText:
	text_far _SSAnneBowSailor2BattleText
	text_end

SSAnneBowSailor2EndBattleText:
	text_far _SSAnneBowSailor2EndBattleText
	text_end

SSAnneBowSailor2AfterBattleText:
	text_far _SSAnneBowSailor2AfterBattleText
	text_end

SSAnneBowSailor3Text:
	text_asm
	ld hl, SSAnne5TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

SSAnneBowSailor3BattleText:
	text_far _SSAnneBowSailor3BattleText
	text_end

SSAnneBowSailor3EndBattleText:
	text_far _SSAnneBowSailor3EndBattleText
	text_end

SSAnneBowSailor3AfterBattleText:
	text_far _SSAnneBowSailor3AfterBattleText
	text_end

SSAnneBowGirlText:                               ; New trainer added by G-Dubs
	text_asm
	ld hl, SSAnne5TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

SSAnneBowGirlBattleText:		                 
	text_far _SSAnneBowGirlBattleText
	text_end

SSAnneBowGirlEndBattleText:
	text_far _SSAnneBowGirlEndBattleText	
	text_end
	
SSAnneBowGirlAfterBattleText:
	text_far _SSAnneBowGirlAfterBattleText
	text_end

SSAnneBowSailor4Text:                               ; New trainer added by G-Dubs	
	text_asm
	ld hl, SSAnne5TrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

SSAnneBowSailor4BattleText:		                 	
	text_far _SSAnneBowSailor4BattleText	
	text_end

SSAnneBowSailor4EndBattleText:
	text_far _SSAnneBowSailor4EndBattleText
	text_end

SSAnneBowSailor4AfterBattleText:
	text_far _SSAnneBowSailor4AfterBattleText	
	text_end
