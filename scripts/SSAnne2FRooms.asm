SSAnne2FRooms_Script:
	call DisableAutoTextBoxDrawing
	ld hl, SSAnne9TrainerHeaders
	ld de, SSAnne2FRooms_ScriptPointers
	ld a, [wSSAnne2FRoomsCurScript]
	call ExecuteCurMapScriptInTable
	ld [wSSAnne2FRoomsCurScript], a
	ret

SSAnne2FRooms_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_SSANNE2FROOMS_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_SSANNE2FROOMS_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_SSANNE2FROOMS_END_BATTLE

SSAnne2FRooms_TextPointers:
	def_text_pointers
	dw_const SSAnne2FRoomsGentleman1Text,   TEXT_SSANNE2FROOMS_GENTLEMAN1
	dw_const SSAnne2FRoomsFisherText,       TEXT_SSANNE2FROOMS_FISHER
	dw_const SSAnne2FRoomsGentleman2Text,   TEXT_SSANNE2FROOMS_GENTLEMAN2
	dw_const SSAnne2FRoomsCooltrainerFText, TEXT_SSANNE2FROOMS_COOLTRAINER_F
	dw_const SSAnne2FRoomsGentleman3Text,   TEXT_SSANNE2FROOMS_GENTLEMAN3      ; NPC changed to trainer by G-Dubs
	dw_const SSAnne2FRoomsGentleman4Text,   TEXT_SSANNE2FROOMS_GENTLEMAN4      ; NPC changed to trainer by G-Dubs
    dw_const SSAnne2FRoomsLittleBoyText,    TEXT_SSANNE2FROOMS_LITTLE_BOY	   ; NPC changed to trainer by G-Dubs
    dw_const SSAnne2FRoomsBrunetteGirlText, TEXT_SSANNE2FROOMS_BRUNETTE_GIRL   ; NPC changed to trainer by G-Dubs
    dw_const SSAnne2FRoomsBeauty1Text,       TEXT_SSANNE2FROOMS_BEAUTY1		   ; NPC changed to trainer by G-Dubs


	dw_const SSAnne2FRoomsGentleman5Text,   TEXT_SSANNE2FROOMS_GENTLEMAN5
	dw_const SSAnne2FRoomsGrampsText,       TEXT_SSANNE2FROOMS_GRAMPS
	
	
	dw_const PickUpItemText,                TEXT_SSANNE2FROOMS_MAX_ETHER
	dw_const PickUpItemText,                TEXT_SSANNE2FROOMS_RARE_CANDY

SSAnne9TrainerHeaders:
	def_trainers
SSAnne9TrainerHeader0:
	trainer EVENT_BEAT_SS_ANNE_9_TRAINER_0, 2, SSAnne2FRoomsGentleman1BattleText, SSAnne2FRoomsGentleman1EndBattleText, SSAnne2FRoomsGentleman1AfterBattleText
SSAnne9TrainerHeader1:
	trainer EVENT_BEAT_SS_ANNE_9_TRAINER_1, 3, SSAnne2FRoomsFisherBattleText, SSAnne2FRoomsFisherEndBattleText, SSAnne2FRoomsFisherAfterBattleText
SSAnne9TrainerHeader2:
	trainer EVENT_BEAT_SS_ANNE_9_TRAINER_2, 3, SSAnne2FRoomsGentleman2BattleText, SSAnne2FRoomsGentleman2EndBattleText, SSAnne2FRoomsGentleman2AfterBattleText
SSAnne9TrainerHeader3:
	trainer EVENT_BEAT_SS_ANNE_9_TRAINER_3, 2, SSAnne2FRoomsCooltrainerFBattleText, SSAnne2FRoomsCooltrainerFEndBattleText, SSAnne2FRoomsCooltrainerFAfterBattleText
SSAnne9TrainerHeader4:
	trainer EVENT_BEAT_SS_ANNE_9_TRAINER_4, 3, SSAnne2FRoomsGentleman3BattleText, SSAnne2FRoomsGentleman3EndBattleText, SSAnne2FRoomsGentleman3AfterBattleText            ; NPC changed to trainer by G-Dubs
SSAnne9TrainerHeader5:
	trainer EVENT_BEAT_SS_ANNE_9_TRAINER_5, 2, SSAnne2FRoomsGentleman4BattleText, SSAnne2FRoomsGentleman4EndBattleText, SSAnne2FRoomsGentleman4AfterBattleText            ; NPC changed to trainer by G-Dubs
SSAnne9TrainerHeader6:	
	trainer EVENT_BEAT_SS_ANNE_9_TRAINER_6, 0, SSAnne2FRoomsLittleBoyBattleText, SSAnne2FRoomsLittleBoyEndBattleText, SSAnne2FRoomsLittleBoyAfterBattleText               ; NPC changed to trainer by G-Dubs		
SSAnne9TrainerHeader7:	
	trainer EVENT_BEAT_SS_ANNE_9_TRAINER_7, 0, SSAnne2FRoomsBrunetteGirlBattleText, SSAnne2FRoomsBrunetteGirlEndBattleText, SSAnne2FRoomsBrunetteGirlAfterBattleText      ; NPC changed to trainer by G-Dubs
SSAnne9TrainerHeader8:	
	trainer EVENT_BEAT_SS_ANNE_9_TRAINER_8, 0, SSAnne2FRoomsBeauty1BattleText, SSAnne2FRoomsBeauty1EndBattleText, SSAnne2FRoomsBeauty1AfterBattleText                     ; NPC changed to trainer by G-Dubs
;SSAnne9TrainerHeader9:	
	
	db -1 ; end

SSAnne2FRoomsGentleman1Text:
	text_asm
	ld hl, SSAnne9TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

SSAnne2FRoomsFisherText:
	text_asm
	ld hl, SSAnne9TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

SSAnne2FRoomsGentleman2Text:
	text_asm
	ld hl, SSAnne9TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

SSAnne2FRoomsCooltrainerFText:
	text_asm
	ld hl, SSAnne9TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

SSAnne2FRoomsGentleman3Text:		   ; NPC changed to trainer by G-Dubs
	text_asm
	ld hl, SSAnne9TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

SSAnne2FRoomsGentleman4Text:		   ; NPC changed to trainer by G-Dubs
	text_asm
	ld hl, SSAnne9TrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

SSAnne2FRoomsLittleBoyText:			   ; NPC changed to trainer by G-Dubs
	text_asm
	ld hl, SSAnne9TrainerHeader6
	call TalkToTrainer
	jp TextScriptEnd

SSAnne2FRoomsBrunetteGirlText:
	text_asm
	ld hl, SSAnne9TrainerHeader7
	call TalkToTrainer
	jp TextScriptEnd

SSAnne2FRoomsBeauty1Text:
	text_asm
	ld hl, SSAnne9TrainerHeader8
	call TalkToTrainer
	jp TextScriptEnd







SSAnne2FRoomsGentleman5Text:
	text_asm
	call SaveScreenTilesToBuffer1
	ld hl, .Text
	call PrintText
	call LoadScreenTilesFromBuffer1
	ld a, SNORLAX
	call DisplayPokedex
	jp TextScriptEnd

.Text:
	text_far _SSAnne2FRoomsGentleman5Text
	text_end

SSAnne2FRoomsGrampsText:
	text_far _SSAnne2FRoomsGrampsText
	text_end






SSAnne2FRoomsGentleman1BattleText:
	text_far _SSAnne2FRoomsGentleman1BattleText
	text_end

SSAnne2FRoomsGentleman1EndBattleText:
	text_far _SSAnne2FRoomsGentleman1EndBattleText
	text_end

SSAnne2FRoomsGentleman1AfterBattleText:
	text_far _SSAnne2FRoomsGentleman1AfterBattleText
	text_end

SSAnne2FRoomsFisherBattleText:
	text_far _SSAnne2FRoomsFisherBattleText
	text_end

SSAnne2FRoomsFisherEndBattleText:
	text_far _SSAnne2FRoomsFisherEndBattleText
	text_end

SSAnne2FRoomsFisherAfterBattleText:
	text_far _SSAnne2FRoomsFisherAfterBattleText
	text_end

SSAnne2FRoomsGentleman2BattleText:
	text_far _SSAnne2FRoomsGentleman2BattleText
	text_end

SSAnne2FRoomsGentleman2EndBattleText:
	text_far _SSAnne2FRoomsGentleman2EndBattleText
	text_end

SSAnne2FRoomsGentleman2AfterBattleText:
	text_far _SSAnne2FRoomsGentleman2AfterBattleText
	text_end

SSAnne2FRoomsCooltrainerFBattleText:
	text_far _SSAnne2FRoomsCooltrainerFBattleText
	text_end

SSAnne2FRoomsCooltrainerFEndBattleText:
	text_far _SSAnne2FRoomsCooltrainerFEndBattleText
	text_end

SSAnne2FRoomsCooltrainerFAfterBattleText:
	text_far _SSAnne2FRoomsCooltrainerFAfterBattleText
	text_end

SSAnne2FRoomsGentleman3BattleText:						   ; NPC changed to trainer by G-Dubs
	text_far _SSAnne2FRoomsGentleman3BattleText
	text_end

SSAnne2FRoomsGentleman3EndBattleText:
	text_far _SSAnne2FRoomsGentleman3EndBattleText
	text_end

SSAnne2FRoomsGentleman3AfterBattleText:
	text_far _SSAnne2FRoomsGentleman3AfterBattleText
	text_end

SSAnne2FRoomsGentleman4BattleText:						   ; NPC changed to trainer by G-Dubs
	text_far _SSAnne2FRoomsGentleman4BattleText
	text_end

SSAnne2FRoomsGentleman4EndBattleText:
	text_far _SSAnne2FRoomsGentleman4EndBattleText
	text_end

SSAnne2FRoomsGentleman4AfterBattleText:
	text_far _SSAnne2FRoomsGentleman4AfterBattleText
	text_end

SSAnne2FRoomsLittleBoyBattleText:						   ; NPC changed to trainer by G-Dubs
	text_far _SSAnne2FRoomsLittleBoyBattleText
	text_end

SSAnne2FRoomsLittleBoyEndBattleText:
	text_far _SSAnne2FRoomsLittleBoyEndBattleText
	text_end

SSAnne2FRoomsLittleBoyAfterBattleText:
	text_far _SSAnne2FRoomsLittleBoyAfterBattleText
	text_end

SSAnne2FRoomsBrunetteGirlBattleText:					   ; NPC changed to trainer by G-Dubs
	text_far _SSAnne2FRoomsBrunetteGirlBattleText
	text_end

SSAnne2FRoomsBrunetteGirlEndBattleText:
	text_far _SSAnne2FRoomsBrunetteGirlEndBattleText
	text_end

SSAnne2FRoomsBrunetteGirlAfterBattleText:
	text_far _SSAnne2FRoomsBrunetteGirlAfterBattleText
	text_end

SSAnne2FRoomsBeauty1BattleText:					           ; NPC changed to trainer by G-Dubs
	text_far _SSAnne2FRoomsBeauty1BattleText
	text_end

SSAnne2FRoomsBeauty1EndBattleText:
	text_far _SSAnne2FRoomsBeauty1EndBattleText
	text_end

SSAnne2FRoomsBeauty1AfterBattleText:
	text_far _SSAnne2FRoomsBeauty1AfterBattleText
	text_end