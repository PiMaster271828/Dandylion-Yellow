SSAnne1FRooms_Script:
	call EnableAutoTextBoxDrawing
	ld hl, SSAnne8TrainerHeaders
	ld de, SSAnne1FRooms_ScriptPointers
	ld a, [wSSAnne1FRoomsCurScript]
	call ExecuteCurMapScriptInTable
	ld [wSSAnne1FRoomsCurScript], a
	ret

SSAnne1FRooms_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_SSANNE1FROOMS_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_SSANNE1FROOMS_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_SSANNE1FROOMS_END_BATTLE

SSAnne1FRooms_TextPointers:
	def_text_pointers
	dw_const SSAnne1FRoomsGentleman1Text,    TEXT_SSANNE1FROOMS_GENTLEMAN1
	dw_const SSAnne1FRoomsGentleman2Text,    TEXT_SSANNE1FROOMS_GENTLEMAN2
	dw_const SSAnne1FRoomsYoungsterText,     TEXT_SSANNE1FROOMS_YOUNGSTER
	dw_const SSAnne1FRoomsCooltrainerFText,  TEXT_SSANNE1FROOMS_COOLTRAINER_F
	dw_const SSAnne1FRoomsGentleman3Text,    TEXT_SSANNE1FROOMS_GENTLEMAN3          ; NPC changed to trainer by G-Dubs
	dw_const SSAnne1FRoomsGirl1Text,         TEXT_SSANNE1FROOMS_GIRL1               ; NPC changed to trainer by G-Dubs
	dw_const SSAnne1FRoomsMiddleAgedManText, TEXT_SSANNE1FROOMS_MIDDLE_AGED_MAN	    ; NPC changed to trainer by G-Dubs
    dw_const SSAnne1FRoomsGirl2Text,         TEXT_SSANNE1FROOMS_GIRL2               ; NPC changed to trainer by G-Dubs
	dw_const SSAnne1FRoomsGirl3Text,         TEXT_SSANNE1FROOMS_GIRL3               ; New trainer added by G-Dubs
	dw_const SSAnne1FRoomsGentleman4Text,    TEXT_SSANNE1FROOMS_GENTLEMAN4          ; New trainer added by G-Dubs
	dw_const SSAnne1FRoomsLittleGirlText,    TEXT_SSANNE1FROOMS_LITTLE_GIRL
	dw_const SSAnne1FRoomsWigglytuffText,    TEXT_SSANNE1FROOMS_WIGGLYTUFF
	dw_const PickUpItemText,                 TEXT_SSANNE1FROOMS_TM_BODY_SLAM
    dw_const SSAnne1FRoomsBedText,           TEXT_SSANNE1FROOMS_BED                 ; Healing bed added by G-Dubs

SSAnne8TrainerHeaders:
	def_trainers
SSAnne8TrainerHeader0:
	trainer EVENT_BEAT_SS_ANNE_8_TRAINER_0,  2, SSAnne1FRoomsGentleman1BattleText, SSAnne1FRoomsGentleman1EndBattleText, SSAnne1FRoomsGentleman1AfterBattleText
SSAnne8TrainerHeader1:
	trainer EVENT_BEAT_SS_ANNE_8_TRAINER_1,  3, SSAnne1FRoomsGentleman2BattleText, SSAnne1FRoomsGentleman2EndBattleText, SSAnne1FRoomsGentleman2AfterBattleText
SSAnne8TrainerHeader2:
	trainer EVENT_BEAT_SS_ANNE_8_TRAINER_2,  2, SSAnne1FRoomsYoungsterBattleText, SSAnne1FRoomsYoungsterEndBattleText, SSAnne1FRoomsYoungsterAfterBattleText
SSAnne8TrainerHeader3:
	trainer EVENT_BEAT_SS_ANNE_8_TRAINER_3,  2, SSAnne1FRoomsCooltrainerFBattleText, SSAnne1FRoomsCooltrainerFEndBattleText, SSAnne1FRoomsCooltrainerFAfterBattleText
SSAnne8TrainerHeader4:
	trainer EVENT_BEAT_SS_ANNE_8_TRAINER_4,  2, SSAnne1FRoomsGentleman3BattleText, SSAnne1FRoomsGentleman3EndBattleText, SSAnne1FRoomsGentleman3AfterBattleText               ; NPC changed to trainer by G-Dubs
SSAnne8TrainerHeader5:	
	trainer EVENT_BEAT_SS_ANNE_8_TRAINER_5,  0, SSAnne1FRoomsGirl1BattleText, SSAnne1FRoomsGirl1EndBattleText, SSAnne1FRoomsGirl1AfterBattleText                              ; NPC changed to trainer by G-Dubs
SSAnne8TrainerHeader6:
	trainer EVENT_BEAT_SS_ANNE_8_TRAINER_6,  0, SSAnne1FRoomsMiddleAgedManBattleText, SSAnne1FRoomsMiddleAgedManEndBattleText, SSAnne1FRoomsMiddleAgedManAfterBattleText      ; NPC changed to trainer by G-Dubs
SSAnne8TrainerHeader7:
	trainer EVENT_BEAT_SS_ANNE_8_TRAINER_7,  2, SSAnne1FRoomsGirl2BattleText, SSAnne1FRoomsGirl2EndBattleText, SSAnne1FRoomsGirl2AfterBattleText                              ; NPC changed to trainer by G-Dubs
SSAnne8TrainerHeader8:
	trainer EVENT_BEAT_SS_ANNE_8_TRAINER_8,  0, SSAnne1FRoomsGirl3BattleText, SSAnne1FRoomsGirl3EndBattleText, SSAnne1FRoomsGirl3AfterBattleText	                          ; New trainer added by G-Dubs
SSAnne8TrainerHeader9:	
	trainer EVENT_BEAT_SS_ANNE_8_TRAINER_9,  0, SSAnne1FRoomsGentleman4BattleText, SSAnne1FRoomsGentleman4EndBattleText, SSAnne1FRoomsGentleman4AfterBattleText               ; New trainer added by G-Dubs	
SSAnne8TrainerHeader10:
	trainer EVENT_BEAT_SS_ANNE_8_TRAINER_10, 0, SSAnne1FRoomsLittleGirlBattleText, SSAnne1FRoomsLittleGirlEndBattleText, SSAnne1FRoomsLittleGirlAfterBattleText               ; NPC changed to trainer by G-Dubs
	db -1 ; end

SSAnne1FRoomsGentleman1Text:
	text_asm
	ld hl, SSAnne8TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

SSAnne1FRoomsGentleman2Text:
	text_asm
	ld hl, SSAnne8TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

SSAnne1FRoomsYoungsterText:
	text_asm
	ld hl, SSAnne8TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

SSAnne1FRoomsCooltrainerFText:
	text_asm
	ld hl, SSAnne8TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

SSAnne1FRoomsGentleman3Text:                     ; NPC changed to trainer by G-Dubs
	text_asm
	ld hl, SSAnne8TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

SSAnne1FRoomsGirl1Text:                          ; NPC changed to trainer by G-Dubs
	text_asm
	ld hl, SSAnne8TrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

SSAnne1FRoomsMiddleAgedManText:					 ; NPC changed to trainer by G-Dubs
	text_asm 
	ld hl, SSAnne8TrainerHeader6
	call TalkToTrainer
	jp TextScriptEnd

SSAnne1FRoomsGirl2Text:							 ; NPC changed to trainer by G-Dubs
	text_asm
	ld hl, SSAnne8TrainerHeader7
	call TalkToTrainer
	jp TextScriptEnd

SSAnne1FRoomsGirl3Text:							 ; New trainer added by G-Dubs
	text_asm
	ld hl, SSAnne8TrainerHeader8
	call TalkToTrainer
	jp TextScriptEnd

SSAnne1FRoomsGentleman4Text:					 ; New trainer added by G-Dubs
	text_asm	
	ld hl, SSAnne8TrainerHeader9				
	call TalkToTrainer
	jp TextScriptEnd

SSAnne1FRoomsLittleGirlText:					 ; NPC changed to trainer by G-Dubs
	text_asm
	ld hl, SSAnne8TrainerHeader10
	call TalkToTrainer
	jp TextScriptEnd

SSAnne1FRoomsWigglytuffText:
	text_far _SSAnne1FRoomsWigglytuffText
	text_asm
	ld a, WIGGLYTUFF
	call PlayCry
	jp TextScriptEnd

SSAnne1FRoomsBedText:
	text_asm
	ld hl, .SSAnneBedText1
	call PrintText
	predef HealParty
	call GBFadeOutToWhite
	call Delay3
	call Delay3
	call Delay3
	call GBFadeInFromWhite
	ld hl, .SSAnneBedText2
	call PrintText
	jr .text_script_end

.text_script_end
	jp TextScriptEnd

.SSAnneBedText1
	text_far _SSAnne1FRoomsBedText1
	text_end
	
.SSAnneBedText2
	text_far _SSAnne1FRoomsBedText2	
	text_end

SSAnne1FRoomsGentleman1BattleText:
	text_far _SSAnne1FRoomsGentleman1BattleText
	text_end

SSAnne1FRoomsGentleman1EndBattleText:
	text_far _SSAnne1FRoomsGentleman1EndBattleText
	text_end

SSAnne1FRoomsGentleman1AfterBattleText:
	text_far _SSAnne1FRoomsGentleman1AfterBattleText
	text_end

SSAnne1FRoomsGentleman2BattleText:
	text_far _SSAnne1FRoomsGentleman2BattleText
	text_end

SSAnne1FRoomsGentleman2EndBattleText:
	text_far _SSAnne1FRoomsGentleman2EndBattleText
	text_end

SSAnne1FRoomsGentleman2AfterBattleText:
	text_far _SSAnne1FRoomsGentleman2AfterBattleText
	text_end

SSAnne1FRoomsYoungsterBattleText:
	text_far _SSAnne1FRoomsYoungsterBattleText
	text_end

SSAnne1FRoomsYoungsterEndBattleText:
	text_far _SSAnne1FRoomsYoungsterEndBattleText
	text_end

SSAnne1FRoomsYoungsterAfterBattleText:
	text_far _SSAnne1FRoomsYoungsterAfterBattleText
	text_end

SSAnne1FRoomsCooltrainerFBattleText:
	text_far _SSAnne1FRoomsCooltrainerFBattleText
	text_end

SSAnne1FRoomsCooltrainerFEndBattleText:
	text_far _SSAnne1FRoomsCooltrainerFEndBattleText
	text_end

SSAnne1FRoomsCooltrainerFAfterBattleText:
	text_far _SSAnne1FRoomsCooltrainerFAfterBattleText
	text_end

SSAnne1FRoomsGentleman3BattleText:                         ; NPC changed to trainer by G-Dubs
	text_far _SSAnne1FRoomsGentleman3BattleText
	text_end

SSAnne1FRoomsGentleman3EndBattleText:
	text_far _SSAnne1FRoomsGentleman3EndBattleText
	text_end

SSAnne1FRoomsGentleman3AfterBattleText:
	text_far _SSAnne1FRoomsGentleman3AfterBattleText
	text_end

SSAnne1FRoomsGirl1BattleText:					           ; NPC changed to trainer by G-Dubs
	text_far _SSAnne1FRoomsGirl1BattleText
	text_end

SSAnne1FRoomsGirl1EndBattleText:	
	text_far _SSAnne1FRoomsGirl1EndBattleText	
	text_end

SSAnne1FRoomsGirl1AfterBattleText:
	text_far _SSAnne1FRoomsGirl1AfterBattleText
	text_end

SSAnne1FRoomsMiddleAgedManBattleText:			           ; NPC changed to trainer by G-Dubs
	text_far _SSAnne1FRoomsMiddleAgedManBattleText
	text_end

SSAnne1FRoomsMiddleAgedManEndBattleText:	
	text_far _SSAnne1FRoomsMiddleAgedManEndBattleText		
	text_end

SSAnne1FRoomsMiddleAgedManAfterBattleText:
	text_far _SSAnne1FRoomsMiddleAgedManAfterBattleText
	text_end

SSAnne1FRoomsGirl2BattleText:	                           ; NPC changed to trainer by G-Dubs
	text_far _SSAnne1FRoomsGirl2BattleText
	text_end

SSAnne1FRoomsGirl2EndBattleText:
	text_far _SSAnne1FRoomsGirl2EndBattleText	
	text_end

SSAnne1FRoomsGirl2AfterBattleText:
	text_far _SSAnne1FRoomsGirl2AfterBattleText
	text_end

SSAnne1FRoomsGirl3BattleText:	                           ; New trainer added by G-Dubs
	text_far _SSAnne1FRoomsGirl3BattleText
	text_end

SSAnne1FRoomsGirl3EndBattleText:
	text_far _SSAnne1FRoomsGirl3EndBattleText
	text_end	

SSAnne1FRoomsGirl3AfterBattleText:	
	text_far _SSAnne1FRoomsGirl3AfterBattleText	
	text_end

SSAnne1FRoomsGentleman4BattleText:	                       ; New trainer added by G-Dubs
	text_far _SSAnne1FRoomsGentleman4BattleText
	text_end

SSAnne1FRoomsGentleman4EndBattleText:
	text_far _SSAnne1FRoomsGentleman4EndBattleText
	text_end

SSAnne1FRoomsGentleman4AfterBattleText:	
	text_far _SSAnne1FRoomsGentleman4AfterBattleText		
	text_end

SSAnne1FRoomsLittleGirlBattleText:	                       ; NPC changed to trainer by G-Dubs
	text_far _SSAnne1FRoomsLittleGirlBattleText
	text_end

SSAnne1FRoomsLittleGirlEndBattleText:
	text_far _SSAnne1FRoomsLittleGirlEndBattleText
	text_end

SSAnne1FRoomsLittleGirlAfterBattleText:
	text_far _SSAnne1FRoomsLittleGirlAfterBattleText
	text_end
