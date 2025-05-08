SSAnneB1FRooms_Script:
	call EnableAutoTextBoxDrawing
	ld hl, SSAnne10TrainerHeaders
	ld de, SSAnneB1FRooms_ScriptPointers
	ld a, [wSSAnneB1FRoomsCurScript]
	call ExecuteCurMapScriptInTable
	ld [wSSAnneB1FRoomsCurScript], a
	ret

SSAnneB1FRooms_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_SSANNEB1FROOMS_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_SSANNEB1FROOMS_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_SSANNEB1FROOMS_END_BATTLE

SSAnneB1FRooms_TextPointers:
	def_text_pointers
	dw_const SSAnneB1FRoomsSailor1Text,   TEXT_SSANNEB1FROOMS_SAILOR1
	dw_const SSAnneB1FRoomsSailor2Text,   TEXT_SSANNEB1FROOMS_SAILOR2
	dw_const SSAnneB1FRoomsSailor3Text,   TEXT_SSANNEB1FROOMS_SAILOR3
	dw_const SSAnneB1FRoomsSailor4Text,   TEXT_SSANNEB1FROOMS_SAILOR4
	dw_const SSAnneB1FRoomsSailor5Text,   TEXT_SSANNEB1FROOMS_SAILOR5
	dw_const SSAnneB1FRoomsFisher1Text,   TEXT_SSANNEB1FROOMS_FISHER1
	dw_const SSAnneB1FRoomsSuperNerdText, TEXT_SSANNEB1FROOMS_SUPER_NERD  ; NPC changed to trainer by G-Dubs
    dw_const SSAnneB1FRoomsFisher2Text,   TEXT_SSANNEB1FROOMS_FISHER2     ; New trainer added by G-Dubs
	dw_const SSAnneB1FRoomsSailor6Text,   TEXT_SSANNEB1FROOMS_SAILOR6	  ; New trainer added by G-Dubs
	dw_const SSAnneB1FRoomsFisher3Text,   TEXT_SSANNEB1FROOMS_FISHER3	  ; New trainer added by G-Dubs 
	dw_const SSAnneB1FRoomsMachokeText,   TEXT_SSANNEB1FROOMS_MACHOKE
	dw_const PickUpItemText,              TEXT_SSANNEB1FROOMS_ETHER
	dw_const PickUpItemText,              TEXT_SSANNEB1FROOMS_TM_REST
	dw_const PickUpItemText,              TEXT_SSANNEB1FROOMS_MAX_POTION

SSAnne10TrainerHeaders:
	def_trainers
SSAnne10TrainerHeader0:
	trainer EVENT_BEAT_SS_ANNE_10_TRAINER_0, 2, SSAnneB1FRoomsSailor1BattleText, SSAnneB1FRoomsSailor1EndBattleText, SSAnneB1FRoomsSailor1AfterBattleText
SSAnne10TrainerHeader1:
	trainer EVENT_BEAT_SS_ANNE_10_TRAINER_1, 3, SSAnneB1FRoomsSailor2BattleText, SSAnneB1FRoomsSailor2EndBattleText, SSAnneB1FRoomsSailor2AfterBattleText
SSAnne10TrainerHeader2:
	trainer EVENT_BEAT_SS_ANNE_10_TRAINER_2, 2, SSAnneB1FRoomsSailor3BattleText, SSAnneB1FRoomsSailor3EndBattleText, SSAnneB1FRoomsSailor3AfterBattleText
SSAnne10TrainerHeader3:
	trainer EVENT_BEAT_SS_ANNE_10_TRAINER_3, 2, SSAnneB1FRoomsSailor4BattleText, SSAnneB1FRoomsSailor4EndBattleText, SSAnneB1FRoomsSailor4AfterBattleText
SSAnne10TrainerHeader4:
	trainer EVENT_BEAT_SS_ANNE_10_TRAINER_4, 2, SSAnneB1FRoomsSailor5BattleText, SSAnneB1FRoomsSailor5EndBattleText, SSAnneB1FRoomsSailor5AfterBattleText
SSAnne10TrainerHeader5:
	trainer EVENT_BEAT_SS_ANNE_10_TRAINER_5, 3, SSAnneB1FRoomsFisher1BattleText, SSAnneB1FRoomsFisher1EndBattleText, SSAnneB1FRoomsFisher1AfterBattleText
SSAnne10TrainerHeader6:
	trainer EVENT_BEAT_SS_ANNE_10_TRAINER_6, 0, SSAnneB1FRoomsSuperNerdBattleText, SSAnneB1FRoomsSuperNerdEndBattleText, SSAnneB1FRoomsSuperNerdAfterBattleText     ; NPC changed to trainer by G-Dubs
SSAnne10TrainerHeader7:
	trainer EVENT_BEAT_SS_ANNE_10_TRAINER_7, 2, SSAnneB1FRoomsFisher2BattleText, SSAnneB1FRoomsFisher2EndBattleText, SSAnneB1FRoomsFisher2AfterBattleText           ; New trainer added by G-Dubs	
SSAnne10TrainerHeader8:
	trainer EVENT_BEAT_SS_ANNE_10_TRAINER_8, 2, SSAnneB1FRoomsSailor6BattleText, SSAnneB1FRoomsSailor6EndBattleText, SSAnneB1FRoomsSailor6AfterBattleText           ; New trainer added by G-Dubs	
SSAnne10TrainerHeader9:
	trainer EVENT_BEAT_SS_ANNE_10_TRAINER_9, 2, SSAnneB1FRoomsFisher3BattleText, SSAnneB1FRoomsFisher3EndBattleText, SSAnneB1FRoomsFisher3AfterBattleText           ; New trainer added by G-Dubs	
	db -1 ; end

SSAnneB1FRoomsSailor1Text:
	text_asm
	ld hl, SSAnne10TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

SSAnneB1FRoomsSailor2Text:
	text_asm
	ld hl, SSAnne10TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

SSAnneB1FRoomsSailor3Text:
	text_asm
	ld hl, SSAnne10TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

SSAnneB1FRoomsSailor4Text:
	text_asm
	ld hl, SSAnne10TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

SSAnneB1FRoomsSailor5Text:
	text_asm
	ld hl, SSAnne10TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

SSAnneB1FRoomsFisher1Text:
	text_asm
	ld hl, SSAnne10TrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

SSAnneB1FRoomsSuperNerdText:          ; NPC changed to trainer by G-Dubs
	text_asm
	ld hl, SSAnne10TrainerHeader6
	call TalkToTrainer
	jp TextScriptEnd

SSAnneB1FRoomsFisher2Text:	           ; New trainer added by G-Dubs
	text_asm
	ld hl, SSAnne10TrainerHeader7
	call TalkToTrainer
	jp TextScriptEnd

SSAnneB1FRoomsSailor6Text:	           ; New trainer added by G-Dubs
	text_asm
	ld hl, SSAnne10TrainerHeader8
	call TalkToTrainer
	jp TextScriptEnd

SSAnneB1FRoomsFisher3Text:	           ; New trainer added by G-Dubs
	text_asm
	ld hl, SSAnne10TrainerHeader9
	call TalkToTrainer
	jp TextScriptEnd

SSAnneB1FRoomsMachokeText:
	text_far _SSAnneB1FRoomsMachokeText
	text_asm
	ld a, MACHOKE
	call PlayCry
	jp TextScriptEnd

SSAnneB1FRoomsSailor1BattleText:
	text_far _SSAnneB1FRoomsSailor1BattleText
	text_end

SSAnneB1FRoomsSailor1EndBattleText:
	text_far _SSAnneB1FRoomsSailor1EndBattleText
	text_end

SSAnneB1FRoomsSailor1AfterBattleText:
	text_far _SSAnneB1FRoomsSailor1AfterBattleText
	text_end

SSAnneB1FRoomsSailor2BattleText:
	text_far _SSAnneB1FRoomsSailor2BattleText
	text_end

SSAnneB1FRoomsSailor2EndBattleText:
	text_far _SSAnneB1FRoomsSailor2EndBattleText
	text_end

SSAnneB1FRoomsSailor2AfterBattleText:
	text_far _SSAnneB1FRoomsSailor2AfterBattleText
	text_end

SSAnneB1FRoomsSailor3BattleText:
	text_far _SSAnneB1FRoomsSailor3BattleText
	text_end

SSAnneB1FRoomsSailor3EndBattleText:
	text_far _SSAnneB1FRoomsSailor3EndBattleText
	text_end

SSAnneB1FRoomsSailor3AfterBattleText:
	text_far _SSAnneB1FRoomsSailor3AfterBattleText
	text_end

SSAnneB1FRoomsSailor4BattleText:
	text_far _SSAnneB1FRoomsSailor4BattleText
	text_end

SSAnneB1FRoomsSailor4EndBattleText:
	text_far _SSAnneB1FRoomsSailor4EndBattleText
	text_end

SSAnneB1FRoomsSailor4AfterBattleText:
	text_far _SSAnneB1FRoomsSailor4AfterBattleText
	text_end

SSAnneB1FRoomsSailor5BattleText:
	text_far _SSAnneB1FRoomsSailor5BattleText
	text_end

SSAnneB1FRoomsSailor5EndBattleText:
	text_far _SSAnneB1FRoomsSailor5EndBattleText
	text_end

SSAnneB1FRoomsSailor5AfterBattleText:
	text_far _SSAnneB1FRoomsSailor5AfterBattleText
	text_end

SSAnneB1FRoomsFisher1BattleText:
	text_far _SSAnneB1FRoomsFisher1BattleText
	text_end

SSAnneB1FRoomsFisher1EndBattleText:
	text_far _SSAnneB1FRoomsFisher1EndBattleText
	text_end

SSAnneB1FRoomsFisher1AfterBattleText:
	text_far _SSAnneB1FRoomsFisher1AfterBattleText
	text_end

SSAnneB1FRoomsSuperNerdBattleText:	                  ; NPC changed to trainer by G-Dubs
	text_far _SSAnneB1FRoomsSuperNerdBattleText
	text_end

SSAnneB1FRoomsSuperNerdEndBattleText:
	text_far _SSAnneB1FRoomsSuperNerdEndBattleText
	text_end

SSAnneB1FRoomsSuperNerdAfterBattleText:
	text_far _SSAnneB1FRoomsSuperNerdAfterBattleText
	text_end

SSAnneB1FRoomsFisher2BattleText:	                  ; New trainer added by G-Dubs
	text_far _SSAnneB1FRoomsFisher2BattleText
	text_end

SSAnneB1FRoomsFisher2EndBattleText:
	text_far _SSAnneB1FRoomsFisher2EndBattleText
	text_end

SSAnneB1FRoomsFisher2AfterBattleText:
	text_far _SSAnneB1FRoomsFisher2AfterBattleText
	text_end

SSAnneB1FRoomsSailor6BattleText:	                  ; New trainer added by G-Dubs
	text_far _SSAnneB1FRoomsSailor6BattleText
	text_end

SSAnneB1FRoomsSailor6EndBattleText:
	text_far _SSAnneB1FRoomsSailor6EndBattleText
	text_end

SSAnneB1FRoomsSailor6AfterBattleText:
	text_far _SSAnneB1FRoomsSailor6AfterBattleText
	text_end

SSAnneB1FRoomsFisher3BattleText:	                  ; New trainer added by G-Dubs
	text_far _SSAnneB1FRoomsFisher3BattleText
	text_end

SSAnneB1FRoomsFisher3EndBattleText:
	text_far _SSAnneB1FRoomsFisher3EndBattleText
	text_end

SSAnneB1FRoomsFisher3AfterBattleText:
	text_far _SSAnneB1FRoomsFisher3AfterBattleText
	text_end
