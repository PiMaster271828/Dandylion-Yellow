CeruleanGym_Script:
	ld hl, wCurrentMapScriptFlags
	bit BIT_CUR_MAP_LOADED_2, [hl]
	res BIT_CUR_MAP_LOADED_2, [hl]
	call nz, .LoadNames
	call EnableAutoTextBoxDrawing
	ld hl, CeruleanGymTrainerHeaders
	ld de, CeruleanGym_ScriptPointers
	ld a, [wCeruleanGymCurScript]
	call ExecuteCurMapScriptInTable
	ld [wCeruleanGymCurScript], a
	ret

.LoadNames:
	ld hl, .CityName
	ld de, .LeaderName
	jp LoadGymLeaderAndCityName

.CityName:
	db "CERULEAN CITY@"

.LeaderName:
	db "MISTY@"

CeruleanGymResetScripts:
	xor a ; SCRIPT_CERULEANGYM_DEFAULT
	ld [wJoyIgnore], a
	ld [wCeruleanGymCurScript], a
	ld [wCurMapScript], a
	ret

CeruleanGym_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_CERULEANGYM_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_CERULEANGYM_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_CERULEANGYM_END_BATTLE
	dw_const CeruleanGymMistyPostBattleScript,      SCRIPT_CERULEANGYM_MISTY_POST_BATTLE

CeruleanGymMistyPostBattleScript:
	ld a, [wIsInBattle]
	cp $ff
	jp z, CeruleanGymResetScripts
	ld a, D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a

CeruleanGymReceiveTM11:
	ld a, TEXT_CERULEANGYM_MISTY_CASCADE_BADGE_INFO
	ldh [hTextID], a
	call DisplayTextID
	SetEvent EVENT_BEAT_MISTY
	lb bc, TM_BUBBLEBEAM, 1
	call GiveItem
	jr nc, .BagFull
	ld a, TEXT_CERULEANGYM_MISTY_RECEIVED_TM11
	ldh [hTextID], a
	call DisplayTextID
	SetEvent EVENT_GOT_TM11
	jr .gymVictory
.BagFull
	ld a, TEXT_CERULEANGYM_MISTY_TM11_NO_ROOM
	ldh [hTextID], a
	call DisplayTextID
.gymVictory
	ld hl, wObtainedBadges
	set BIT_CASCADEBADGE, [hl]
	ld hl, wBeatGymFlags
	set BIT_CASCADEBADGE, [hl]

	; deactivate gym trainers
	SetEvents EVENT_BEAT_CERULEAN_GYM_TRAINER_0, EVENT_BEAT_CERULEAN_GYM_TRAINER_1, EVENT_BEAT_CERULEAN_GYM_TRAINER_2, EVENT_BEAT_CERULEAN_GYM_TRAINER_3, EVENT_BEAT_CERULEAN_GYM_TRAINER_4, EVENT_BEAT_CERULEAN_GYM_TRAINER_5, EVENT_BEAT_CERULEAN_GYM_TRAINER_6 

	jp CeruleanGymResetScripts

CeruleanGym_TextPointers:
	def_text_pointers
	dw_const CeruleanGymMistyText,                 TEXT_CERULEANGYM_MISTY
	dw_const CeruleanGymCooltrainerF1Text,         TEXT_CERULEANGYM_COOLTRAINER_F1
	dw_const CeruleanGymSwimmer1Text,              TEXT_CERULEANGYM_SWIMMER1
	dw_const CeruleanGymBeauty1Text,               TEXT_CERULEANGYM_BEAUTY1                        ; New trainer added by G-Dubs
	dw_const CeruleanGymBeauty2Text,               TEXT_CERULEANGYM_BEAUTY2                        ; New trainer added by G-Dubs
	dw_const CeruleanGymBeauty3Text,               TEXT_CERULEANGYM_BEAUTY3                        ; New trainer added by G-Dubs
	dw_const CeruleanGymFisherText,                TEXT_CERULEANGYM_FISHER                         ; New trainer added by G-Dubs
	dw_const CeruleanGymCooltrainerF2Text,         TEXT_CERULEANGYM_COOLTRAINER_F2                 ; New trainer added by G-Dubs
	dw_const CeruleanGymGymGuideText,              TEXT_CERULEANGYM_GYM_GUIDE
	dw_const CeruleanGymMistyCascadeBadgeInfoText, TEXT_CERULEANGYM_MISTY_CASCADE_BADGE_INFO
	dw_const CeruleanGymMistyReceivedTM11Text,     TEXT_CERULEANGYM_MISTY_RECEIVED_TM11
	dw_const CeruleanGymMistyTM11NoRoomText,       TEXT_CERULEANGYM_MISTY_TM11_NO_ROOM

CeruleanGymTrainerHeaders:
	def_trainers 2
CeruleanGymTrainerHeader0:
	trainer EVENT_BEAT_CERULEAN_GYM_TRAINER_0, 3, CeruleanGymBattleText1, CeruleanGymEndBattleText1, CeruleanGymAfterBattleText1
CeruleanGymTrainerHeader1:
	trainer EVENT_BEAT_CERULEAN_GYM_TRAINER_1, 3, CeruleanGymBattleText2, CeruleanGymEndBattleText2, CeruleanGymAfterBattleText2
CeruleanGymTrainerHeader2:
	trainer EVENT_BEAT_CERULEAN_GYM_TRAINER_2, 1, CeruleanGymBattleText3, CeruleanGymEndBattleText3, CeruleanGymAfterBattleText3
CeruleanGymTrainerHeader3:
	trainer EVENT_BEAT_CERULEAN_GYM_TRAINER_3, 1, CeruleanGymBattleText4, CeruleanGymEndBattleText4, CeruleanGymAfterBattleText4
CeruleanGymTrainerHeader4:
	trainer EVENT_BEAT_CERULEAN_GYM_TRAINER_4, 1, CeruleanGymBattleText5, CeruleanGymEndBattleText5, CeruleanGymAfterBattleText5
CeruleanGymTrainerHeader5:
	trainer EVENT_BEAT_CERULEAN_GYM_TRAINER_5, 1, CeruleanGymBattleText6, CeruleanGymEndBattleText6, CeruleanGymAfterBattleText6
CeruleanGymTrainerHeader6:
	trainer EVENT_BEAT_CERULEAN_GYM_TRAINER_6, 1, CeruleanGymBattleText7, CeruleanGymEndBattleText7, CeruleanGymAfterBattleText7
	db -1 ; end

CeruleanGymMistyText:
	text_asm
	CheckEvent EVENT_BEAT_MISTY
	jr z, .beforeBeat
	CheckEventReuseA EVENT_GOT_TM11
	jr nz, .afterBeat
	call z, CeruleanGymReceiveTM11
	call DisableWaitingAfterTextDisplay
	jr .done
.afterBeat
	ld hl, .TM11ExplanationText
	call PrintText
	jr .done
.beforeBeat
	ld hl, .PreBattleText
	call PrintText
	ld hl, wStatusFlags3
	set BIT_TALKED_TO_TRAINER, [hl]
	set BIT_PRINT_END_BATTLE_TEXT, [hl]
	ld hl, CeruleanGymMistyReceivedCascadeBadgeText
	ld de, CeruleanGymMistyReceivedCascadeBadgeText
	call SaveEndBattleTextPointers
	ldh a, [hSpriteIndex]
	ld [wSpriteIndex], a
	call EngageMapTrainer
	call InitBattleEnemyParameters
	ld a, $2
	ld [wGymLeaderNo], a
	xor a
	ldh [hJoyHeld], a
	ld a, SCRIPT_CERULEANGYM_MISTY_POST_BATTLE
	ld [wCeruleanGymCurScript], a
.done
	jp TextScriptEnd

.PreBattleText:
	text_far _CeruleanGymMistyPreBattleText
	text_end

.TM11ExplanationText:
	text_far _CeruleanGymMistyTM11ExplanationText
	text_end

CeruleanGymMistyCascadeBadgeInfoText:
	text_far _CeruleanGymMistyCascadeBadgeInfoText
	text_end

CeruleanGymMistyReceivedTM11Text:
	text_far _CeruleanGymMistyReceivedTM11Text
	sound_get_item_1
	text_end

CeruleanGymMistyTM11NoRoomText:
	text_far _CeruleanGymMistyTM11NoRoomText
	text_end

CeruleanGymMistyReceivedCascadeBadgeText:
	text_far _CeruleanGymMistyReceivedCascadeBadgeText
	text_end

CeruleanGymCooltrainerF1Text:
	text_asm
	ld hl, CeruleanGymTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

CeruleanGymBattleText1:
	text_far _CeruleanGymBattleText1
	text_end

CeruleanGymEndBattleText1:
	text_far _CeruleanGymEndBattleText1
	text_end

CeruleanGymAfterBattleText1:
	text_far _CeruleanGymAfterBattleText1
	text_end

CeruleanGymSwimmer1Text:
	text_asm
	ld hl, CeruleanGymTrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

CeruleanGymBattleText2:
	text_far _CeruleanGymBattleText2
	text_end

CeruleanGymEndBattleText2:
	text_far _CeruleanGymEndBattleText2
	text_end

CeruleanGymAfterBattleText2:
	text_far _CeruleanGymAfterBattleText2
	text_end

CeruleanGymBeauty1Text:
	text_asm
	ld hl, CeruleanGymTrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

CeruleanGymBattleText3:
	text_far _CeruleanGymBattleText3
	text_end

CeruleanGymEndBattleText3:
	text_far _CeruleanGymEndBattleText3
	text_end

CeruleanGymAfterBattleText3:
	text_far _CeruleanGymAfterBattleText3
	text_end

CeruleanGymBeauty2Text:
	text_asm
	ld hl, CeruleanGymTrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

CeruleanGymBattleText4:
	text_far _CeruleanGymBattleText4
	text_end

CeruleanGymEndBattleText4:
	text_far _CeruleanGymEndBattleText4
	text_end

CeruleanGymAfterBattleText4:
	text_far _CeruleanGymAfterBattleText4
	text_end

CeruleanGymBeauty3Text:
	text_asm
	ld hl, CeruleanGymTrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

CeruleanGymBattleText5:
	text_far _CeruleanGymBattleText5
	text_end

CeruleanGymEndBattleText5:
	text_far _CeruleanGymEndBattleText5
	text_end

CeruleanGymAfterBattleText5:
	text_far _CeruleanGymAfterBattleText5
	text_end

CeruleanGymFisherText:
	text_asm
	ld hl, CeruleanGymTrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

CeruleanGymBattleText6:
	text_far _CeruleanGymBattleText6
	text_end

CeruleanGymEndBattleText6:
	text_far _CeruleanGymEndBattleText6
	text_end

CeruleanGymAfterBattleText6:
	text_far _CeruleanGymAfterBattleText6
	text_end

CeruleanGymCooltrainerF2Text:
	text_asm
	ld hl, CeruleanGymTrainerHeader6
	call TalkToTrainer
	jp TextScriptEnd

CeruleanGymBattleText7:
	text_far _CeruleanGymBattleText7
	text_end

CeruleanGymEndBattleText7:
	text_far _CeruleanGymEndBattleText7
	text_end

CeruleanGymAfterBattleText7:
	text_far _CeruleanGymAfterBattleText7
	text_end

CeruleanGymGymGuideText:
	text_asm
	CheckEvent EVENT_BEAT_MISTY
	jr nz, .afterBeat
	ld hl, .ChampInMakingText
	call PrintText
	jr .done
.afterBeat
	ld hl, .BeatMistyText
	call PrintText
.done
	jp TextScriptEnd

.ChampInMakingText:
	text_far _CeruleanGymGymGuideChampInMakingText
	text_end

.BeatMistyText:
	text_far _CeruleanGymGymGuideBeatMistyText
	text_end
