SSAnne2F_Script:
    call EnableAutoTextBoxDrawing
    ld hl, SSAnne6TrainerHeaders     
    ld de, SSAnne2F_ScriptPointers
    ld a, [wSSAnne2FCurScript]
    call ExecuteCurMapScriptInTable
    ld [wSSAnne2FCurScript], a
    ret
    
SSAnne2FSetCurScript:
    ld [wSSAnne2FCurScript], a
	ld [wCurMapScript], a
    ret

SSAnne2FResetScripts:
	xor a
	ld [wJoyIgnore], a
	ld [wSSAnne2FCurScript], a
	ret

SSAnne2F_ScriptPointers:
	def_script_pointers
	dw_const SSAnne2FDefaultScript,                 SCRIPT_SSANNE2F_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_SSANNE2F_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_SSANNE2F_END_BATTLE
	dw_const SSAnne2FRivalStartBattleScript,        SCRIPT_SSANNE2F_RIVAL_START_BATTLE
	dw_const SSAnne2FRivalAfterBattleScript,        SCRIPT_SSANNE2F_RIVAL_AFTER_BATTLE
	dw_const SSAnne2FRivalExitScript,               SCRIPT_SSANNE2F_RIVAL_EXIT

SSAnne2FDefaultScript:
	CheckEvent EVENT_BEAT_SS_ANNE_RIVAL
	ret nz
	ld hl, .PlayerCoordinatesArray
	call ArePlayerCoordsInArray
	ret nc
	call StopAllMusic
	ld c, BANK(Music_MeetRival)
	ld a, MUSIC_MEET_RIVAL
	call PlayMusic
	ld a, [wCoordIndex]
	ldh [hSavedCoordIndex], a
	ld a, HS_SS_ANNE_2F_RIVAL
	ld [wMissableObjectIndex], a
	predef ShowObject
	call Delay3
	ld a, SSANNE2F_RIVAL
	ldh [hSpriteIndex], a
	call SetSpriteMovementBytesToFF
	xor a
	ldh [hJoyHeld], a
	ld a, D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ldh a, [hSavedCoordIndex]
	cp $2
	jr nz, .player_standing_right
	ld de, .RivalDownFourMovement
	jr .move_sprite
.player_standing_right
	ld de, .RivalDownThreeMovement
.move_sprite
	call MoveSprite
	ld a, SCRIPT_SSANNE2F_RIVAL_START_BATTLE
	jp SSAnne2FSetCurScript

.RivalDownFourMovement:
	db NPC_MOVEMENT_DOWN
.RivalDownThreeMovement:
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db -1 ; end

.PlayerCoordinatesArray:
	dbmapcoord 36,  7
	dbmapcoord 37,  7
	db -1 ; end

SSAnne2FSetFacingDirectionScript:
	ld a, [wXCoord]
	cp 37
	jr nz, .player_standing_left
	ld a, PLAYER_DIR_LEFT
	ld [wPlayerMovingDirection], a
	ld a, SPRITE_FACING_RIGHT
	jr .set_facing_direction
.player_standing_left
	xor a ; SPRITE_FACING_DOWN
.set_facing_direction
	ldh [hSpriteFacingDirection], a
	ld a, SSANNE2F_RIVAL
	ldh [hSpriteIndex], a
	jp SetSpriteFacingDirectionAndDelay

SSAnne2FRivalStartBattleScript:
	ld a, [wStatusFlags5]
	bit BIT_SCRIPTED_NPC_MOVEMENT, a
	ret nz
	call SSAnne2FSetFacingDirectionScript
	xor a
	ld [wJoyIgnore], a
	ld a, TEXT_SSANNE2F_RIVAL
	ldh [hTextID], a
	call DisplayTextID
	call Delay3
	ld a, OPP_RIVAL2
	ld [wCurOpponent], a
	ld a, $1
	ld [wTrainerNo], a
	call SSAnne2FSetFacingDirectionScript
	ld a, SCRIPT_SSANNE2F_RIVAL_AFTER_BATTLE
	jp SSAnne2FSetCurScript

SSAnne2FRivalAfterBattleScript:
	ld a, [wIsInBattle]
	cp $ff
	jp z, SSAnne2FResetScripts
	call SSAnne2FSetFacingDirectionScript
	ld a, D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	SetEvent EVENT_BEAT_SS_ANNE_RIVAL
	ld a, TEXT_SSANNE2F_RIVAL_CUT_MASTER
	ldh [hTextID], a
	call DisplayTextID
	ld a, SSANNE2F_RIVAL
	ldh [hSpriteIndex], a
	call SetSpriteMovementBytesToFF
	ld a, [wXCoord]
	cp 37
	jr nz, .player_standing_left
	ld de, .RivalDownFourMovement
	jr .move_sprite
.player_standing_left
	ld de, .RivalWalkAroundPlayerMovement
.move_sprite
	ld a, SSANNE2F_RIVAL
	ldh [hSpriteIndex], a
	call MoveSprite
	call StopAllMusic
	farcall Music_RivalAlternateStart
	ld a, SCRIPT_SSANNE2F_RIVAL_EXIT
	jp SSAnne2FSetCurScript

.RivalWalkAroundPlayerMovement:
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_DOWN
.RivalDownFourMovement:
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db -1 ; end

SSAnne2FRivalExitScript:
	ld a, [wStatusFlags5]
	bit BIT_SCRIPTED_NPC_MOVEMENT, a
	ret nz
	xor a
	ld [wJoyIgnore], a
	ld a, HS_SS_ANNE_2F_RIVAL
	ld [wMissableObjectIndex], a
	predef HideObject
	call PlayDefaultMusic
	xor a
	ld [wJoyIgnore], a
	jp SSAnne2FSetCurScript

SSAnne2F_TextPointers:
	def_text_pointers
	dw_const SSAnne2FWaiterText,         TEXT_SSANNE2F_WAITER	          ; NPC changed to trainer by G-Dubs
	dw_const SSAnne2FRivalText,          TEXT_SSANNE2F_RIVAL
	dw_const SSAnne2FRivalCutMasterText, TEXT_SSANNE2F_RIVAL_CUT_MASTER

SSAnne6TrainerHeaders:
	def_trainers
SSAnne6TrainerHeader0:
	trainer EVENT_BEAT_SS_ANNE_6_TRAINER_0, 0, SSAnne2FWaiterBattleText, SSAnne2FWaiterEndBattleText, SSAnne2FWaiterAfterBattleText   ; NPC changed to trainer by G-Dubs
	db -1 ; end

SSAnne2FWaiterText:		                         ; NPC changed to trainer by G-Dubs
	text_asm
	ld hl, SSAnne6TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

SSAnne2FWaiterBattleText:
	text_far _SSAnne2FWaiterBattleText
	text_end

SSAnne2FWaiterEndBattleText:
	text_far _SSAnne2FWaiterEndBattleText
	text_end

SSAnne2FWaiterAfterBattleText:
	text_far _SSAnne2FWaiterAfterBattleText
	text_end

SSAnne2FRivalText:
	text_asm
	ld hl, .Text
	call PrintText
	ld hl, wStatusFlags3
	set BIT_TALKED_TO_TRAINER, [hl]
	set BIT_PRINT_END_BATTLE_TEXT, [hl]
	ld hl, SSAnne2FRivalDefeatedText
	ld de, SSAnne2FRivalVictoryText
	call SaveEndBattleTextPointers
	jp TextScriptEnd

.Text:
	text_far _SSAnne2FRivalText
	text_end

SSAnne2FRivalDefeatedText:
	text_far _SSAnne2FRivalDefeatedText
	text_end

SSAnne2FRivalVictoryText:
	text_far _SSAnne2FRivalVictoryText
	text_end

SSAnne2FRivalCutMasterText:
	text_far _SSAnne2FRivalCutMasterText
	text_end
