ViridianSchoolHouse_Script:
	call EnableAutoTextBoxDrawing
	ld hl, ViridianSchoolHouseTrainerHeaders
	ld de, ViridianSchoolHouse_ScriptPointers
	ld a, [wViridianSchoolHouseCurScript]
	call ExecuteCurMapScriptInTable
	ld [wViridianSchoolHouseCurScript], a
	ret

ViridianSchoolHouse_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_VIRIDIANSCHOOLHOUSE_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_VIRIDIANSCHOOLHOUSE_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_VIRIDIANSCHOOLHOUSE_END_BATTLE

ViridianSchoolHouse_TextPointers:
	def_text_pointers
	dw_const ViridianSchoolHouseLittleGirlText,    TEXT_VIRIDIANSCHOOLHOUSE_LITTLE_GIRL
	dw_const ViridianSchoolHouseBrunetteGirl1Text, TEXT_VIRIDIANSCHOOLHOUSE_BRUNETTE_GIRL1    ; NPC changed to trainer by G-Dubs
    dw_const ViridianSchoolHouseCooltrainerF1Text, TEXT_VIRIDIANSCHOOLHOUSE_COOLTRAINER_F1    ; NPC changed to trainer by G-Dubs
    dw_const ViridianSchoolHouseCooltrainerF2Text, TEXT_VIRIDIANSCHOOLHOUSE_COOLTRAINER_F2    ; New trainer added by G-Dubs
    dw_const ViridianSchoolHouseLittleBoy1Text,    TEXT_VIRIDIANSCHOOLHOUSE_LITTLE_BOY1       ; New trainer added by G-Dubs
    dw_const ViridianSchoolHouseBrunetteGirl2Text, TEXT_VIRIDIANSCHOOLHOUSE_BRUNETTE_GIRL2    ; New trainer added by G-Dubs
    dw_const ViridianSchoolHouseLittleBoy2Text,    TEXT_VIRIDIANSCHOOLHOUSE_LITTLE_BOY2       ; New trainer added by G-Dubs

ViridianSchoolHouseTrainerHeaders:
	def_trainers
ViridianSchoolHouseTrainerHeader0:
	trainer EVENT_BEAT_VIRIDIAN_TRAINERS_SCHOOL_TRAINER_0, 0, ViridianSchoolHouseBrunetteGirl1BattleText, ViridianSchoolHouseBrunetteGirl1EndBattleText, ViridianSchoolHouseBrunetteGirl1AfterBattleText    ; NPC changed to trainer by G-Dubs
ViridianSchoolHouseTrainerHeader1:
	trainer EVENT_BEAT_VIRIDIAN_TRAINERS_SCHOOL_TRAINER_1, 0, ViridianSchoolHouseCooltrainerF1BattleText, ViridianSchoolHouseCooltrainerF1EndBattleText, ViridianSchoolHouseCooltrainerF1AfterBattleText	; NPC changed to trainer by G-Dubs
ViridianSchoolHouseTrainerHeader2:
    trainer EVENT_BEAT_VIRIDIAN_TRAINERS_SCHOOL_TRAINER_2, 0, ViridianSchoolHouseCooltrainerF2BattleText, ViridianSchoolHouseCooltrainerF2EndBattleText, ViridianSchoolHouseCooltrainerF2AfterBattleText	; NPC changed to trainer by G-Dubs	
ViridianSchoolHouseTrainerHeader3:
    trainer EVENT_BEAT_VIRIDIAN_TRAINERS_SCHOOL_TRAINER_3, 0, ViridianSchoolHouseLittleBoy1BattleText, ViridianSchoolHouseLittleBoy1EndBattleText, ViridianSchoolHouseLittleBoy1AfterBattleText	            ; NPC changed to trainer by G-Dubs	
ViridianSchoolHouseTrainerHeader4:
    trainer EVENT_BEAT_VIRIDIAN_TRAINERS_SCHOOL_TRAINER_4, 0, ViridianSchoolHouseBrunetteGirl2BattleText, ViridianSchoolHouseBrunetteGirl2EndBattleText, ViridianSchoolHouseBrunetteGirl2AfterBattleText	; NPC changed to trainer by G-Dubs	
ViridianSchoolHouseTrainerHeader5:
    trainer EVENT_BEAT_VIRIDIAN_TRAINERS_SCHOOL_TRAINER_5, 0, ViridianSchoolHouseLittleBoy2BattleText, ViridianSchoolHouseLittleBoy2EndBattleText, ViridianSchoolHouseLittleBoy2AfterBattleText	            ; NPC changed to trainer by G-Dubs	
	db -1 ; end

ViridianSchoolHouseLittleGirlText:
	text_far _ViridianSchoolHouseLittleGirlText
	text_end

ViridianSchoolHouseBrunetteGirl1Text:	                        ; NPC changed to trainer by G-Dubs
	text_asm
	ld hl, ViridianSchoolHouseTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

ViridianSchoolHouseCooltrainerF1Text:	                        ; NPC changed to trainer by G-Dubs
	text_asm
	ld hl, ViridianSchoolHouseTrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

ViridianSchoolHouseCooltrainerF2Text:	                        ; NPC changed to trainer by G-Dubs
	text_asm
	ld hl, ViridianSchoolHouseTrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

ViridianSchoolHouseLittleBoy1Text:	                            ; NPC changed to trainer by G-Dubs
	text_asm
	ld hl, ViridianSchoolHouseTrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd	

ViridianSchoolHouseBrunetteGirl2Text::
    text_asm
	ld hl, ViridianSchoolHouseTrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

ViridianSchoolHouseLittleBoy2Text:	                            ; NPC changed to trainer by G-Dubs
	text_asm
	ld hl, ViridianSchoolHouseTrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

ViridianSchoolHouseBrunetteGirl1BattleText: 			        ; NPC changed to trainer by G-Dubs		
	text_far _ViridianSchoolHouseBrunetteGir1BattleText
	text_end

ViridianSchoolHouseBrunetteGirl1EndBattleText:	
	text_far _ViridianSchoolHouseBrunetteGirl1EndBattleText
	text_end

ViridianSchoolHouseBrunetteGirl1AfterBattleText:		   
	text_far _ViridianSchoolHouseBrunetteGirl1AfterBattleText
	text_end

ViridianSchoolHouseCooltrainerF1BattleText: 			        ; NPC changed to trainer by G-Dubs
	text_far _ViridianSchoolHouseCooltrainerF1BattleText
	text_end

ViridianSchoolHouseCooltrainerF1EndBattleText:
	text_far _ViridianSchoolHouseCooltrainerF1EndBattleText
	text_end

ViridianSchoolHouseCooltrainerF1AfterBattleText:
	text_far _ViridianSchoolHouseCooltrainerF1AfterBattleText
	text_end

ViridianSchoolHouseCooltrainerF2BattleText: 			        ; NPC changed to trainer by G-Dubs
	text_far _ViridianSchoolHouseCooltrainerF2BattleText
	text_end

ViridianSchoolHouseCooltrainerF2EndBattleText:
	text_far _ViridianSchoolHouseCooltrainerF2EndBattleText
	text_end

ViridianSchoolHouseCooltrainerF2AfterBattleText:
	text_far _ViridianSchoolHouseCooltrainerF2AfterBattleText
	text_end

ViridianSchoolHouseLittleBoy1BattleText: 			            ; NPC changed to trainer by G-Dubs
	text_far _ViridianSchoolHouseLittleBoy1BattleText
	text_end

ViridianSchoolHouseLittleBoy1EndBattleText:
	text_far _ViridianSchoolHouseLittleBoy1EndBattleText
	text_end

ViridianSchoolHouseLittleBoy1AfterBattleText:
	text_far _ViridianSchoolHouseLittleBoy1AfterBattleText
	text_end

ViridianSchoolHouseBrunetteGirl2BattleText: 			        ; NPC changed to trainer by G-Dubs
	text_far _ViridianSchoolHouseBrunetteGirl2BattleText
	text_end

ViridianSchoolHouseBrunetteGirl2EndBattleText: 			   
	text_far _ViridianSchoolHouseBrunetteGirl2EndBattleText
	text_end

ViridianSchoolHouseBrunetteGirl2AfterBattleText: 			   
	text_far _ViridianSchoolHouseBrunetteGirl2AfterBattleText
	text_end

ViridianSchoolHouseLittleBoy2BattleText: 				        ; NPC changed to trainer by G-Dubs
	text_far _ViridianSchoolHouseLittleBoy2BattleText
	text_end

ViridianSchoolHouseLittleBoy2EndBattleText:
	text_far _ViridianSchoolHouseLittleBoy2EndBattleText
	text_end

ViridianSchoolHouseLittleBoy2AfterBattleText:
	text_far _ViridianSchoolHouseLittleBoy2AfterBattleText
	text_end

