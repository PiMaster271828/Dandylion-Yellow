ViridianForest_Script:
	call EnableAutoTextBoxDrawing
	ld hl, ViridianForestTrainerHeaders
	ld de, ViridianForest_ScriptPointers
	ld a, [wViridianForestCurScript]
	call ExecuteCurMapScriptInTable
	ld [wViridianForestCurScript], a
	ret

ViridianForest_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_VIRIDIANFOREST_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_VIRIDIANFOREST_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_VIRIDIANFOREST_END_BATTLE

ViridianForest_TextPointers:
	def_text_pointers
	dw_const ViridianForestYoungster1Text,      TEXT_VIRIDIANFOREST_YOUNGSTER1
	dw_const ViridianForestYoungster2Text,      TEXT_VIRIDIANFOREST_YOUNGSTER2
	dw_const ViridianForestYoungster3Text,      TEXT_VIRIDIANFOREST_YOUNGSTER3
	dw_const ViridianForestYoungster4Text,      TEXT_VIRIDIANFOREST_YOUNGSTER4
	dw_const ViridianForestCooltrainerFText,    TEXT_VIRIDIANFOREST_COOLTRAINER_F
	dw_const ViridianForestYoungster5Text,      TEXT_VIRIDIANFOREST_YOUNGSTER5
	dw_const PickUpItemText,                    TEXT_VIRIDIANFOREST_POTION1
	dw_const PickUpItemText,                    TEXT_VIRIDIANFOREST_POTION2
	dw_const PickUpItemText,                    TEXT_VIRIDIANFOREST_POKE_BALL
	dw_const ViridianForestYoungster6Text,      TEXT_VIRIDIANFOREST_YOUNGSTER6
	dw_const ViridianForestYoungster7Text,      TEXT_VIRIDIANFOREST_YOUNGSTER7    ; New trainer added by Vlad
	dw_const ViridianForestYoungster8Text,      TEXT_VIRIDIANFOREST_YOUNGSTER8    ; New trainer added by G-Dubs
	dw_const ViridianForestYoungster9Text,      TEXT_VIRIDIANFOREST_YOUNGSTER9    ; New trainer added by G-Dubs
	dw_const ViridianForestYoungster10Text,      TEXT_VIRIDIANFOREST_YOUNGSTER10  ; New trainer added by G-Dubs
	dw_const ViridianForestTrainerTips1Text,    TEXT_VIRIDIANFOREST_TRAINER_TIPS1
	dw_const ViridianForestUseAntidoteSignText, TEXT_VIRIDIANFOREST_USE_ANTIDOTE_SIGN
	dw_const ViridianForestTrainerTips2Text,    TEXT_VIRIDIANFOREST_TRAINER_TIPS2
	dw_const ViridianForestTrainerTips3Text,    TEXT_VIRIDIANFOREST_TRAINER_TIPS3
	dw_const ViridianForestTrainerTips4Text,    TEXT_VIRIDIANFOREST_TRAINER_TIPS4
	dw_const ViridianForestLeavingSignText,     TEXT_VIRIDIANFOREST_LEAVING_SIGN

ViridianForestTrainerHeaders:
	def_trainers 2
ViridianForestTrainerHeader0:
	trainer EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_0, 4, ViridianForestYoungster2BattleText, ViridianForestYoungster2EndBattleText, ViridianForestYoungster2AfterBattleText
ViridianForestTrainerHeader1:
	trainer EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_1, 4, ViridianForestYoungster3BattleText, ViridianForestYoungster3EndBattleText, ViridianForestYoungster3AfterBattleText
ViridianForestTrainerHeader2:
	trainer EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_2, 1, ViridianForestYoungster4BattleText, ViridianForestYoungster4EndBattleText, ViridianForestYoungster4AfterBattleText
ViridianForestTrainerHeader3:
	trainer EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_3, 0, ViridianForestCooltrainerFBattleText, ViridianForestCooltrainerFEndBattleText, ViridianForestCooltrainerFAfterBattleText
ViridianForestTrainerHeader4:
	trainer EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_4, 4, ViridianForestYoungster5BattleText, ViridianForestYoungster5EndBattleText, ViridianForestYoungster5AfterBattleText
ViridianForestTrainerHeader5:                                                                                                                                                  ; New trainer header added by Vlad
	trainer EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_5, 4, ViridianForestYoungster7BattleText, ViridianForestYoungster7EndBattleText, ViridianForestYoungster7AfterBattleText
ViridianForestTrainerHeader6:                                                                                                                                                  ; New trainer header added by G-Dubs
	trainer EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_6, 1, ViridianForestYoungster8BattleText, ViridianForestYoungster8EndBattleText, ViridianForestYoungster8AfterBattleText  
ViridianForestTrainerHeader7:                                                                                                                                                  ; New trainer header added by G-Dubs
	trainer EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_7, 1, ViridianForestYoungster9BattleText, ViridianForestYoungster9EndBattleText, ViridianForestYoungster9AfterBattleText
ViridianForestTrainerHeader8:                                                                                                                                                  ; New trainer header added by G-Dubs
	trainer EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_8, 4, ViridianForestYoungster10BattleText, ViridianForestYoungster10EndBattleText, ViridianForestYoungster10AfterBattleText
;ViridianForestTrainerHeader9:                                                                                                                                                  ; New trainer header added by G-Dubs
;	trainer EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_9, 4, ViridianForestYoungster11BattleText, ViridianForestYoungster11EndBattleText, ViridianForestYoungster11AfterBattleText
	db -1 ; end

ViridianForestYoungster1Text:
	text_far _ViridianForestYoungster1Text
	text_end

ViridianForestYoungster2Text:
	text_asm
	ld hl, ViridianForestTrainerHeader0
	jr ViridianForestTalkToTrainer

ViridianForestYoungster3Text:
	text_asm
	ld hl, ViridianForestTrainerHeader1
	jr ViridianForestTalkToTrainer

ViridianForestYoungster4Text:
	text_asm
	ld hl, ViridianForestTrainerHeader2
	jr ViridianForestTalkToTrainer

ViridianForestCooltrainerFText:
	text_asm
	ld hl, ViridianForestTrainerHeader3
	jr ViridianForestTalkToTrainer

ViridianForestYoungster5Text:
	text_asm
	ld hl, ViridianForestTrainerHeader4 
	jr ViridianForestTalkToTrainer                           ; New line added by Vlad (How did they code this?)

ViridianForestYoungster7Text:                                ; New trainer added by Vlad
	text_asm
	ld hl, ViridianForestTrainerHeader5
	jr ViridianForestTalkToTrainer

ViridianForestYoungster8Text:                                ; New trainer added by G-Dubs
	text_asm
	ld hl, ViridianForestTrainerHeader6
	jr ViridianForestTalkToTrainer

ViridianForestYoungster9Text:                                ; New trainer added by G-Dubs
	text_asm
	ld hl, ViridianForestTrainerHeader7
	jr ViridianForestTalkToTrainer

ViridianForestYoungster10Text:                               ; New trainer added by G-Dubs
	text_asm
	ld hl, ViridianForestTrainerHeader8
	jr ViridianForestTalkToTrainer
/*
ViridianForestYoungster11Text:                               ; New trainer added by G-Dubs
	text_asm
	ld hl, ViridianForestTrainerHeader9
	jr ViridianForestTalkToTrainer
*/
ViridianForestTalkToTrainer:
	call TalkToTrainer
	jp TextScriptEnd

ViridianForestYoungster2BattleText:
	text_far _ViridianForestYoungster2BattleText
	text_end

ViridianForestYoungster2EndBattleText:
	text_far _ViridianForestYoungster2EndBattleText
	text_end

ViridianForestYoungster2AfterBattleText:
	text_far _ViridianForestYoungster2AfterBattleText
	text_end

ViridianForestYoungster3BattleText:
	text_far _ViridianForestYoungster3BattleText
	text_end

ViridianForestYoungster3EndBattleText:
	text_far _ViridianForestYoungster3EndBattleText
	text_end

ViridianForestYoungster3AfterBattleText:
	text_far _ViridianForestYoungster3AfterBattleText
	text_end

ViridianForestYoungster4BattleText:
	text_far _ViridianForestYoungster4BattleText
	text_end

ViridianForestYoungster4EndBattleText:
	text_far _ViridianForestYoungster4EndBattleText
	text_end

ViridianForestYoungster4AfterBattleText:
	text_far _ViridianForestYoungster4AfterBattleText
	text_end

ViridianForestCooltrainerFBattleText:
	text_far _ViridianForestCooltrainerFBattleText
	text_end

ViridianForestCooltrainerFEndBattleText:
	text_far _ViridianForestCooltrainerFEndBattleText
	text_end

ViridianForestCooltrainerFAfterBattleText:
	text_far _ViridianForestCooltrainerFAfterBattleText
	text_end

ViridianForestYoungster5BattleText:
	text_far _ViridianForestYoungster5BattleText
	text_end

ViridianForestYoungster5EndBattleText:
	text_far _ViridianForestYoungster5EndBattleText
	text_end

ViridianForestYoungster5AfterBattleText:
	text_far _ViridianForestYoungster5AfterBattleText
	text_end

ViridianForestYoungster6Text:
	text_far _ViridianForestYoungster6Text
	text_end

ViridianForestYoungster7BattleText:                          ; New trainer added by Vlad
	text_far _ViridianForestYoungster7BattleText
	text_end

ViridianForestYoungster7EndBattleText:
	text_far _ViridianForestYoungster7EndBattleText
	text_end

ViridianForestYoungster7AfterBattleText:
	text_far _ViridianForestYoungster7AfterBattleText
	text_end

ViridianForestYoungster8BattleText:                          ; New trainer added by G-Dubs
	text_far _ViridianForestYoungster8BattleText
	text_end

ViridianForestYoungster8EndBattleText:
	text_far _ViridianForestYoungster8EndBattleText
	text_end

ViridianForestYoungster8AfterBattleText:
	text_far _ViridianForestYoungster8AfterBattleText
	text_end

ViridianForestYoungster9BattleText:                          ; New trainer added by G-Dubs
	text_far _ViridianForestYoungster9BattleText
	text_end

ViridianForestYoungster9EndBattleText:
	text_far _ViridianForestYoungster9EndBattleText
	text_end

ViridianForestYoungster9AfterBattleText:
	text_far _ViridianForestYoungster9AfterBattleText
	text_end

ViridianForestYoungster10BattleText:                         ; New trainer added by G-Dubs
	text_far _ViridianForestYoungster10BattleText
	text_end

ViridianForestYoungster10EndBattleText:
	text_far _ViridianForestYoungster10EndBattleText
	text_end

ViridianForestYoungster10AfterBattleText:
	text_far _ViridianForestYoungster10AfterBattleText
	text_end
/*
ViridianForestYoungster11sBattleText:                         ; New trainer added by G-Dubs
	text_far _ViridianForestYoungster11BattleText
	text_end

ViridianForestYoungster11EndBattleText:
	text_far _ViridianForestYoungster11EndBattleText
	text_end

ViridianForestYoungster11AfterBattleText:
	text_far _ViridianForestYoungster11AfterBattleText
	text_end
*/
ViridianForestTrainerTips1Text:                              ; Signs must be at the end, for some reason...
	text_asm
	ld hl, ViridianForestPrintTrainerTips1Text
	jp ViridianForestSign_Common

ViridianForestUseAntidoteSignText:
	text_asm
	ld hl, ViridianForestPrintUseAntidoteSignText
	jp ViridianForestSign_Common

ViridianForestTrainerTips2Text:
	text_asm
	ld hl, ViridianForestPrintTrainerTips2Text
	jp ViridianForestSign_Common

ViridianForestTrainerTips3Text:
	text_asm
	ld hl, ViridianForestPrintTrainerTips3Text
	jp ViridianForestSign_Common

ViridianForestTrainerTips4Text:
	text_asm
	ld hl, ViridianForestPrintTrainerTips4Text
	jp ViridianForestSign_Common

ViridianForestLeavingSignText:
	text_asm
	ld hl, ViridianForestPrintTrainerTips1Text ; supposed to be ViridianForestPrintLeavingSignText
ViridianForestSign_Common:
	ld b, BANK(ViridianForestPrintTrainerTips1Text)
	call Bankswitch
	jp TextScriptEnd
