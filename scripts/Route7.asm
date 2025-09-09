Route7_Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route7TrainerHeaders
	ld de, Route7_ScriptPointers
	ld a, [wRoute7CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute7CurScript], a
	ret

Route7_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_ROUTE7_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_ROUTE7_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_ROUTE7_END_BATTLE

Route7_TextPointers:
	def_text_pointers
	dw_const Route7CooltrainerM1Text,       TEXT_ROUTE7_COOLTRAINER_M1         ; New trainer added by G-Dubs
	dw_const Route7PokeFanM1Text,           TEXT_ROUTE7_POKEFAN_M1             ; New trainer added by G-Dubs
	dw_const Route7UndergroundPathSignText, TEXT_ROUTE7_UNDERGROUND_PATH_SIGN
	dw_const Route7SignText,                TEXT_ROUTE7_SIGN                   ; New sign added by G-Dubs

Route7TrainerHeaders:
	def_trainers
Route7TrainerHeader0:    
	trainer EVENT_BEAT_ROUTE_7_TRAINER_0, 2, Route7CooltrainerM1BattleText, Route7CooltrainerM1EndBattleText, Route7CooltrainerM1AfterBattleText     ; New trainer added by G-Dubs
Route7TrainerHeader1:    
	trainer EVENT_BEAT_ROUTE_7_TRAINER_1, 3, Route7PokeFanM1BattleText, Route7PokeFanM1EndBattleText, Route7PokeFanM1AfterBattleText                 ; New trainer added by G-Dubs
	db -1 ; end

Route7CooltrainerM1Text:                              ; New trainer added by G-Dubs
	text_asm
	ld hl, Route7TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

Route7CooltrainerM1BattleText:
	text_far _Route7CooltrainerM1BattleText
	text_end

Route7CooltrainerM1EndBattleText:
	text_far _Route7CooltrainerM1EndBattleText
	text_end

Route7CooltrainerM1AfterBattleText:
	text_far _Route7CooltrainerM1AfterBattleText
	text_end

Route7PokeFanM1Text:                                  ; New trainer added by G-Dubs
	text_asm
	ld hl, Route7TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

Route7PokeFanM1BattleText:
	text_far _Route7PokeFanM1BattleText
	text_end

Route7PokeFanM1EndBattleText:
	text_far _Route7PokeFanM1EndBattleText
	text_end

Route7PokeFanM1AfterBattleText:
	text_far _Route7PokeFanM1AfterBattleText
	text_end

Route7UndergroundPathSignText:                   ; Original Route 7 Sign (Underground Path)
	text_far _Route7UndergroundPathSignText
	text_end

Route7SignText:                                  ; New sign added by G-Dubs (Route 5 Sign)
	text_far _Route7SignText
	text_end