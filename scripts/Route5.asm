Route5_Script:
    call EnableAutoTextBoxDrawing
	ld hl, Route5TrainerHeaders
	ld de, Route5_ScriptPointers
	ld a, [wRoute5CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute5CurScript], a
	ret

Route5_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_ROUTE5_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_ROUTE5_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_ROUTE5_END_BATTLE

Route5_TextPointers:
	def_text_pointers
	dw_const Route5PokefanF1Text,           TEXT_ROUTE5_POKEFAN_F1                  ; New trainer added by G-Dubs
	dw_const Route5PokefanM1Text,           TEXT_ROUTE5_POKEFAN_M1                  ; New trainer added by G-Dubs
	dw_const Route5PokefanF2Text,           TEXT_ROUTE5_POKEFAN_F2                  ; New trainer added by G-Dubs
	dw_const Route5PokefanM2Text,           TEXT_ROUTE5_POKEFAN_M2                  ; New trainer added by G-Dubs
	dw_const Route5PokefanF3Text,           TEXT_ROUTE5_POKEFAN_F3                  ; New trainer added by G-Dubs
	dw_const Route5PokefanM3Text,           TEXT_ROUTE5_POKEFAN_M3                  ; New trainer added by G-Dubs
	dw_const Route5UndergroundPathSignText, TEXT_ROUTE5_UNDERGROUND_PATH_SIGN
	dw_const Route5SignText,                TEXT_ROUTE5_SIGN                         ; New sign added by G-Dubs

Route5TrainerHeaders:
	def_trainers
Route5TrainerHeader0:    
	trainer EVENT_BEAT_ROUTE_5_TRAINER_0, 2, Route5PokefanF1BattleText, Route5PokefanF1EndBattleText, Route5PokefanF1AfterBattleText  ; New trainer added by G-Dubs
Route5TrainerHeader1:
    trainer EVENT_BEAT_ROUTE_5_TRAINER_1, 2, Route5PokefanM1BattleText, Route5PokefanM1EndBattleText, Route5PokefanM1AfterBattleText  ; New trainer added by G-Dubs
Route5TrainerHeader2:    
	trainer EVENT_BEAT_ROUTE_5_TRAINER_2, 2, Route5PokefanF2BattleText, Route5PokefanF2EndBattleText, Route5PokefanF2AfterBattleText  ; New trainer added by G-Dubs
Route5TrainerHeader3:    
	trainer EVENT_BEAT_ROUTE_5_TRAINER_3, 2, Route5PokefanM2BattleText, Route5PokefanM2EndBattleText, Route5PokefanM2AfterBattleText  ; New trainer added by G-Dubs
Route5TrainerHeader4:    
	trainer EVENT_BEAT_ROUTE_5_TRAINER_4, 2, Route5PokefanF3BattleText, Route5PokefanF3EndBattleText, Route5PokefanF3AfterBattleText  ; New trainer added by G-Dubs
Route5TrainerHeader5:    
	trainer EVENT_BEAT_ROUTE_5_TRAINER_5, 2, Route5PokefanM3BattleText, Route5PokefanM3EndBattleText, Route5PokefanM3AfterBattleText  ; New trainer added by G-Dubs

    db -1 ; end

Route5PokefanF1Text:                             ; New trainer added by G-Dubs
	text_asm
	ld hl, Route5TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

Route5PokefanF1BattleText:
	text_far _Route5PokefanF1BattleText
	text_end

Route5PokefanF1EndBattleText:
	text_far _Route5PokefanF1EndBattleText
	text_end

Route5PokefanF1AfterBattleText:
	text_far _Route5PokefanF1AfterBattleText
	text_end

Route5PokefanM1Text:                             ; New trainer added by G-Dubs
	text_asm
	ld hl, Route5TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

Route5PokefanM1BattleText:
	text_far _Route5PokefanM1BattleText
	text_end

Route5PokefanM1EndBattleText:
	text_far _Route5PokefanM1EndBattleText
	text_end

Route5PokefanM1AfterBattleText:
	text_far _Route5PokefanM1AfterBattleText
	text_end

Route5PokefanF2Text:                             ; New trainer added by G-Dubs
	text_asm
	ld hl, Route5TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

Route5PokefanF2BattleText:
	text_far _Route5PokefanF2BattleText
	text_end

Route5PokefanF2EndBattleText:
	text_far _Route5PokefanF2EndBattleText
	text_end

Route5PokefanF2AfterBattleText:
	text_far _Route5PokefanF2AfterBattleText
	text_end

Route5PokefanM2Text:                             ; New trainer added by G-Dubs
	text_asm
	ld hl, Route5TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

Route5PokefanM2BattleText:
	text_far _Route5PokefanM2BattleText
	text_end

Route5PokefanM2EndBattleText:
	text_far _Route5PokefanM2EndBattleText
	text_end

Route5PokefanM2AfterBattleText:
	text_far _Route5PokefanM2AfterBattleText
	text_end

Route5PokefanF3Text:                             ; New trainer added by G-Dubs
	text_asm
	ld hl, Route5TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

Route5PokefanF3BattleText:
	text_far _Route5PokefanF3BattleText
	text_end

Route5PokefanF3EndBattleText:
	text_far _Route5PokefanF3EndBattleText
	text_end

Route5PokefanF3AfterBattleText:
	text_far _Route5PokefanF3AfterBattleText
	text_end

Route5PokefanM3Text:                             ; New trainer added by G-Dubs
	text_asm
	ld hl, Route5TrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

Route5PokefanM3BattleText:
	text_far _Route5PokefanM3BattleText
	text_end

Route5PokefanM3EndBattleText:
	text_far _Route5PokefanM3EndBattleText
	text_end

Route5PokefanM3AfterBattleText:
	text_far _Route5PokefanM3AfterBattleText
	text_end

Route5UndergroundPathSignText:                   ; Original Route 5 Sign (Underground Path)
	text_far _Route5UndergroundPathSignText
	text_end

Route5SignText:                                  ; New sign added by G-Dubs (Route 5 Sign)
	text_far _Route5SignText
	text_end
