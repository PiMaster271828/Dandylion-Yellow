SSAnne1F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, SSAnne7TrainerHeaders
	ld de, SSAnne1F_ScriptPointers
	ld a, [wSSAnne1FCurScript]
	call ExecuteCurMapScriptInTable
	ld [wSSAnne1FCurScript], a
	ret

SSAnne1FResetScript:
	xor a
	ld [wJoyIgnore], a
SSAnne1FSetScript:
	ld [wSSAnne1FCurScript], a
	ld [wCurMapScript], a
	ret

SSAnne1F_ScriptPointers:
	def_script_pointers
	dw_const SSAnne1FDefaultScript,              	SCRIPT_SSANNE1F_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_SSANNE1F_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_SSANNE1F_END_BATTLE
	dw_const SSAnne1FRocketScript1,                 SCRIPT_SSANNE1F_ROCKET_SCRIPT1
	dw_const SSAnne1FRocketScript2,                 SCRIPT_SSANNE1F_ROCKET_SCRIPT2
	dw_const SSAnne1FRocketScript3,                 SCRIPT_SSANNE1F_ROCKET_SCRIPT3
	dw_const SSAnne1FRocketScript4,                 SCRIPT_SSANNE1F_ROCKET_SCRIPT4
	dw_const SSAnne1FRocketScript5,                 SCRIPT_SSANNE1F_ROCKET_SCRIPT5
	dw_const SSAnne1FRocketScript6,                 SCRIPT_SSANNE1F_ROCKET_SCRIPT6
	dw_const SSAnne1FRocketScript7,                 SCRIPT_SSANNE1F_ROCKET_SCRIPT7
	dw_const SSAnne1FRocketScript8,                 SCRIPT_SSANNE1F_ROCKET_SCRIPT8
	dw_const SSAnne1FRocketScript9,                 SCRIPT_SSANNE1F_ROCKET_SCRIPT9
	dw_const SSAnne1FRocketScript10,                SCRIPT_SSANNE1F_ROCKET_SCRIPT10


SSAnne1FDefaultScript:
	CheckEvent EVENT_GOT_HM01
	ret z
	CheckEvent EVENT_BEAT_SS_ANNE_JESSIE_JAMES
	call z, SSAnne1FTeamRocketScript
	ret

SSAnne1FTeamRocketScript:	
	ld hl, .PlayerCoordinatesArray
	call ArePlayerCoordsInArray
	ret nc
	call StopAllMusic
	ld c, BANK(Music_MeetJessieJames)
	ld a, MUSIC_MEET_JESSIE_JAMES
	call PlayMusic
	xor a
	ld a, HS_SS_ANNE_1F_JESSIE
	call SSAnne1FScript_ShowObject
	ld a, HS_SS_ANNE_1F_JAMES
	call SSAnne1FScript_ShowObject
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld a, TEXT_SSANNE1F_ROCKET_TEXT
	ldh [hTextID], a
	call DisplayTextID
	xor a
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
;	ld a, $1
;	ld [wSimulatedJoypadStatesIndex], a
;	ld a, D_RIGHT
;	ld [wSimulatedJoypadStatesEnd], a
;	call StartSimulatingJoypadStates
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, SCRIPT_SSANNE1F_ROCKET_SCRIPT1
	call SSAnne1FSetScript
	ret

.PlayerCoordinatesArray:
	dbmapcoord 19,  6
	dbmapcoord 19,  7
	db -1 ; end

MovementData_1:
	db $06
MovementData_2:
	db $06
	db $06
	db $06
	db $06
	db $06
	db $FF

SSAnne1FRocketScript1:
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	call Delay3
	ld a, SSANNE1F_JESSIE
	ldh [hSpriteIndex], a
	ld a, [wYCoord]
	cp $6
	jr z, .Player_Top10
	ld de, MovementData_1
	jr .continue1
.Player_Top10
	ld de, MovementData_2
.continue1
	call MoveSprite
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, SCRIPT_SSANNE1F_ROCKET_SCRIPT2
	call SSAnne1FSetScript
	ret

SSAnne1FRocketScript2:
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, [wStatusFlags5]
	bit BIT_SCRIPTED_NPC_MOVEMENT, a
	ret nz

SSAnne1FRocketScript3:
	ld a, $2
	ld [wSprite01StateData1MovementStatus], a               ;Note the number is the sprite index in the maps/objects file, so sprite 6 is the 6th sprite that is listed, which is Jessie in this case
	ld a, [wYCoord]
	cp $6
	jr z, .Player_Top11
	ld a, SPRITE_FACING_DOWN
	ld [wSprite01StateData1FacingDirection], a
	jr .next1
.Player_Top11
	ld a, SPRITE_FACING_LEFT
	ld [wSprite01StateData1FacingDirection], a
.next1

SSAnne1FRocketScript4:
	ld a, SSANNE1F_JAMES
	ldh [hSpriteIndex], a
	ld a, [wYCoord]
	cp $6
	jr z, .Player_Top20
	ld de, MovementData_2
	jr .continue2
.Player_Top20
	ld de, MovementData_1
.continue2
	call MoveSprite
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, SCRIPT_SSANNE1F_ROCKET_SCRIPT5
	call SSAnne1FSetScript
	ret

SSAnne1FRocketScript5:
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, [wStatusFlags5]
	bit BIT_SCRIPTED_NPC_MOVEMENT, a
	ret nz

SSAnne1FRocketScript6:
	ld a, $2
	ld [wSprite02StateData1MovementStatus], a   
	ld a, [wYCoord]
	cp $6
	jr z, .Player_Top21
	ld a, SPRITE_FACING_LEFT
	ld [wSprite02StateData1FacingDirection], a
	jr .next2
.Player_Top21       
	ld a, SPRITE_FACING_UP
	ld [wSprite02StateData1FacingDirection], a
.next2
	call Delay3
	ld a, ~(A_BUTTON | B_BUTTON)
	ld [wJoyIgnore], a
	ld a, TEXT_SSANNE1F_JESSIE
	ldh [hTextID], a
	call DisplayTextID

SSAnne1FRocketScript7:
	ld hl, wStatusFlags3
	set BIT_TALKED_TO_TRAINER, [hl]
	set BIT_PRINT_END_BATTLE_TEXT, [hl]
	ld hl, SSAnne1FJessieJamesEndBattleText
	ld de, SSAnne1FJessieJamesEndBattleText
	call SaveEndBattleTextPointers
	ld a, 1                                 ; Lines added by G-Dubs to make sure we are in a trainer battle
	ld [wIsTrainerBattle], a
	ld a, OPP_JESSIE_JAMES
	ld [wCurOpponent], a
	ld a, $03
	ld [wTrainerNo], a
	xor a
	ldh [hJoyHeld], a
	ld [wJoyIgnore], a
	ld a, SCRIPT_SSANNE1F_ROCKET_SCRIPT8
	call SSAnne1FSetScript
	ret

SSAnne1FRocketScript8:
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, [wIsInBattle]
	cp $ff
	jp z, SSAnne1FResetScript
	xor a                                   ; Lines added by G-Dubs to make sure we are no longer in a trainer battle
	ld [wIsTrainerBattle], a
	ld a, $2
	ld [wSprite01StateData1MovementStatus], a
	ld [wSprite02StateData1MovementStatus], a
	xor a
	ld [wSprite01StateData1FacingDirection], a
	ld [wSprite02StateData1FacingDirection], a
	ld a, ~(A_BUTTON | B_BUTTON)
	ld [wJoyIgnore], a
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld a, TEXT_SSANNE1F_JESSIE_JAMES_AFTER_BATTLE
	ldh [hTextID], a
	call DisplayTextID
	xor a
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	call StopAllMusic
	ld c, BANK(Music_MeetJessieJames)
	ld a, MUSIC_MEET_JESSIE_JAMES
	call PlayMusic
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, SCRIPT_SSANNE1F_ROCKET_SCRIPT9
	call SSAnne1FSetScript
	ret

SSAnne1FRocketScript9:
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	call GBFadeOutToBlack
	ld a, HS_SS_ANNE_1F_JESSIE
	call SSAnne1FScript_HideObject
	ld a, HS_SS_ANNE_1F_JAMES
	call SSAnne1FScript_HideObject
	call UpdateSprites
	call Delay3
	call GBFadeInFromBlack
	ld a, SCRIPT_SSANNE1F_ROCKET_SCRIPT10
	call SSAnne1FSetScript
	ret

SSAnne1FRocketScript10:
	call PlayDefaultMusic
	xor a
	ldh [hJoyHeld], a
	ld [wJoyIgnore], a
	SetEvent EVENT_BEAT_SS_ANNE_JESSIE_JAMES
	ld a, SCRIPT_SSANNE1F_DEFAULT
	call SSAnne1FSetScript
	ret

SSAnne1FScript_ShowObject:
	ld [wMissableObjectIndex], a
	predef ShowObject
	call UpdateSprites
	call Delay3
	ret

SSAnne1FScript_HideObject:
	ld [wMissableObjectIndex], a
	predef HideObject
	ret
SSAnne1F_TextPointers:
	def_text_pointers
	dw_const SSAnne1FJessieJamesBattleText,	     TEXT_SSANNE1F_JESSIE
	dw_const SSAnne1FJamesText,			         TEXT_SSANNE1F_JAMES
	dw_const SSAnne1FWaiterText,			     TEXT_SSANNE1F_WAITER           ; NPC changed to trainer by G-Dubs
	dw_const SSAnne1FSailorText,			     TEXT_SSANNE1F_SAILOR
	dw_const SSAnne1FRocketText,			     TEXT_SSANNE1F_ROCKET_TEXT      ; NPC changed to trainer by G-Dubs
	dw_const SSAnne1FJessieJamesAfterBattleText, TEXT_SSANNE1F_JESSIE_JAMES_AFTER_BATTLE

SSAnne7TrainerHeaders:
	def_trainers
SSAnne7TrainerHeader0:
    trainer EVENT_BEAT_SS_ANNE_7_TRAINER_0, 0, SSAnne1FWaiterBattleText, SSAnne1FWaiterEndBattleText, SSAnne1FWaiterAfterBattleText	  ; NPC changed to trainer by G-Dubs
	db -1 ; end


SSAnne1FRocketText:
	text_far _SSAnneJessieJamesText
	text_asm
	ld c, 10
	call DelayFrames
	ld a, $0
	ld [wEmotionBubbleSpriteIndex], a
	ld a, EXCLAMATION_BUBBLE
	ld [wWhichEmotionBubble], a
	predef EmotionBubble
	ld c, 20
	call DelayFrames
	jp TextScriptEnd

SSAnne1FJessieJamesBattleText:
	text_far _SSAnneJessieJamesBattleText
	text_end

SSAnne1FJessieJamesEndBattleText:
	text_far _SSAnneJessieJamesEndBattleText
	text_end

SSAnne1FJessieJamesAfterBattleText:
	text_far _SSAnneJessieJamesAfterBattleText
	text_end

SSAnne1FJamesText:
	text_end

SSAnne1FWaiterText:  	                         ; NPC changed to trainer by G-Dubs
	text_asm
	ld hl, SSAnne7TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

SSAnne1FSailorText:
	text_far _SSAnne1FSailorText
	text_end

SSAnne1FWaiterBattleText:		                 ; NPC changed to trainer by G-Dubs
	text_far _SSAnne1FWaiterBattleText
	text_end

SSAnne1FWaiterEndBattleText:
	text_far _SSAnne1FWaiterEndBattleText	
	text_end

SSAnne1FWaiterAfterBattleText:
	text_far _SSAnne1FWaiterAfterBattleText
	text_end
