PokemonTower7F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, PokemonTower7FTrainerHeaders
	ld de, PokemonTower7F_ScriptPointers
	ld a, [wPokemonTower7FCurScript]
	call ExecuteCurMapScriptInTable
	ld [wPokemonTower7FCurScript], a
;	call CallFunctionInTable
	ret

PokemonTower7FSetDefaultScript:
	xor a
	ld [wJoyIgnore], a
PokemonTower7FSetScript:
	ld [wPokemonTower7FCurScript], a
	ld [wCurMapScript], a
	ret

PokemonTower7F_ScriptPointers:
	def_script_pointers
	dw_const PokemonTower7FScript0,                 SCRIPT_POKEMONTOWER7F_SCRIPT0
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_POKEMONTOWER7F_START_BATTLE
	dw_const PokemonTower7FEndBattleScript,         SCRIPT_POKEMONTOWER7F_END_BATTLE
	dw_const PokemonTower7FScript1,                 SCRIPT_POKEMONTOWER7F_SCRIPT1
	dw_const PokemonTower7FScript2,                 SCRIPT_POKEMONTOWER7F_SCRIPT2
	dw_const PokemonTower7FScript3,                 SCRIPT_POKEMONTOWER7F_SCRIPT3
	dw_const PokemonTower7FScript4,                 SCRIPT_POKEMONTOWER7F_SCRIPT4
	dw_const PokemonTower7FScript5,                 SCRIPT_POKEMONTOWER7F_SCRIPT5
	dw_const PokemonTower7FScript6,                 SCRIPT_POKEMONTOWER7F_SCRIPT6
	dw_const PokemonTower7FScript7,                 SCRIPT_POKEMONTOWER7F_SCRIPT7
	dw_const PokemonTower7FScript8,                 SCRIPT_POKEMONTOWER7F_SCRIPT8
	dw_const PokemonTower7FScript9,                 SCRIPT_POKEMONTOWER7F_SCRIPT9
	dw_const PokemonTower7FScript10,                SCRIPT_POKEMONTOWER7F_SCRIPT10
	dw_const PokemonTower7FHideNPCScript,           SCRIPT_POKEMONTOWER7F_HIDE_NPC
	dw_const PokemonTower7FWarpToMrFujiHouseScript, SCRIPT_POKEMONTOWER7F_WARP_TO_MR_FUJI_HOUSE

PokemonTower7FScript0:
IF DEF(_DEBUG)
	call DebugPressedOrHeldB
	ret nz
ENDC
;	ld hl, PokemonTower7FJessieJamesCoords
;	call ArePlayerCoordsInArray
;	jp nc, CheckFightingMapTrainers
	CheckEvent EVENT_BEAT_POKEMONTOWER_7_TRAINER_3
	jp z, CheckFightingMapTrainers
	CheckEvent EVENT_BEAT_POKEMONTOWER_7_JESSIE_JAMES
	call z, PokemonTower7FScript_60d2a
	ret

;PokemonTower7FJessieJamesCoords:
;	dbmapcoord 10, 4
;	dbmapcoord 11, 4
;	db -1 ; end

PokemonTower7FEndBattleScript:
	ld hl, wMiscFlags
	res BIT_SEEN_BY_TRAINER, [hl]
	ld a, [wIsInBattle]
	cp $ff
	jp z, PokemonTower7FSetDefaultScript
	call EndTrainerBattle
	ld a, D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, [wSpriteIndex]
	ldh [hSpriteIndex], a
	call DisplayTextID
	call PokemonTower7FRocketLeaveMovementScript
	ld a, SCRIPT_POKEMONTOWER7F_HIDE_NPC
	ld [wPokemonTower7FCurScript], a
	ld [wCurMapScript], a
	ret

PokemonTower7FScript_60d2a:
	ld a, [wYCoord]
	cp $4
	ret nz
	ResetEvent EVENT_POKEMONTOWER_7_JESSIE_JAMES_ON_LEFT
	ld a, [wXCoord]
	cp $a
	jr z, .asm_60d47
	ld a, [wXCoord] ; why?
	cp $b
	ret nz
	SetEvent EVENT_POKEMONTOWER_7_JESSIE_JAMES_ON_LEFT
.asm_60d47
	call StopAllMusic
	ld c, BANK(Music_MeetJessieJames)
	ld a, MUSIC_MEET_JESSIE_JAMES
	call PlayMusic
	xor a
	ldh [hJoyHeld], a
	ld a, ~(A_BUTTON | B_BUTTON)
	ld [wJoyIgnore], a
	ld a, HS_POKEMON_TOWER_7F_JESSIE
	call PokemonTower7FScript_ShowObject
	ld a, HS_POKEMON_TOWER_7F_JAMES
	call PokemonTower7FScript_ShowObject
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld a, TEXT_POKEMONTOWER7F_TEXT4
	ldh [hTextID], a
	call DisplayTextID
;Having Player move down 1 (so we don't have to move pikachu because it's just a little trash)
	xor a
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld a, $1
	ld [wSimulatedJoypadStatesIndex], a
	ld a, D_DOWN
	ld [wSimulatedJoypadStatesEnd], a
	call StartSimulatingJoypadStates
;End of moving down
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, SCRIPT_POKEMONTOWER7F_SCRIPT1
	call PokemonTower7FSetScript
	ret

/*PokemonTower7FMovementData_60d7a:
	db $4
PokemonTower7FMovementData_60d7b:
	db $4
	db $4
	db $4
	db $FF
*/

PokemonTower7FMovementData_60d7a:
	db NPC_MOVEMENT_UP
PokemonTower7FMovementData_60d7b:
	db NPC_MOVEMENT_UP
	db NPC_MOVEMENT_UP
	db $FF

PokemonTower7FScript1:
	ld de, PokemonTower7FMovementData_60d7b
	CheckEvent EVENT_POKEMONTOWER_7_JESSIE_JAMES_ON_LEFT
	jr z, .asm_60d8c
	ld de, PokemonTower7FMovementData_60d7a
.asm_60d8c
	ld a, POKEMONTOWER7F_JESSIE
	ldh [hSpriteIndex], a
	call MoveSprite
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, SCRIPT_POKEMONTOWER7F_SCRIPT2
	call PokemonTower7FSetScript
	ret

PokemonTower7FScript2:
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, [wStatusFlags5]
	bit BIT_SCRIPTED_NPC_MOVEMENT, a
	ret nz
PokemonTower7FScript3:
	ld a, SPRITE_FACING_UP
	ld [wSprite01StateData1FacingDirection], a
	CheckEvent EVENT_POKEMONTOWER_7_JESSIE_JAMES_ON_LEFT
	jr z, .asm_60dba
	ld a, SPRITE_FACING_RIGHT
	ld [wSprite01StateData1FacingDirection], a
.asm_60dba
	ld a, $2
	ld [wSprite01StateData1MovementStatus], a
PokemonTower7FScript4:
	ld de, PokemonTower7FMovementData_60d7a
	CheckEvent EVENT_POKEMONTOWER_7_JESSIE_JAMES_ON_LEFT
	jr z, .asm_60dcc
	ld de, PokemonTower7FMovementData_60d7b
.asm_60dcc
	ld a, POKEMONTOWER7F_JAMES
	ldh [hSpriteIndex], a
	call MoveSprite
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, SCRIPT_POKEMONTOWER7F_SCRIPT5
	call PokemonTower7FSetScript
	ret

PokemonTower7FScript5:
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, [wStatusFlags5]
	bit BIT_SCRIPTED_NPC_MOVEMENT, a
	ret nz
PokemonTower7FScript6:
	ld a, $2
	ld [wSprite02StateData1MovementStatus], a
	ld a, SPRITE_FACING_LEFT
	ld [wSprite02StateData1FacingDirection], a
	CheckEvent EVENT_POKEMONTOWER_7_JESSIE_JAMES_ON_LEFT
	jr z, .asm_60dff
	ld a, SPRITE_FACING_UP
	ld [wSprite02StateData1FacingDirection], a
.asm_60dff
	call Delay3
	ld a, ~(A_BUTTON | B_BUTTON)
	ld [wJoyIgnore], a
	ld a, TEXT_POKEMONTOWER7F_TEXT5
	ldh [hTextID], a
	call DisplayTextID
PokemonTower7FScript7:
	ld hl, wStatusFlags3
	set BIT_TALKED_TO_TRAINER, [hl]
	set BIT_PRINT_END_BATTLE_TEXT, [hl]
	ld hl, PokemonTower7FJessieJamesEndBattleText
	ld de, PokemonTower7FJessieJamesEndBattleText
	call SaveEndBattleTextPointers
	ld a, OPP_JESSIE_JAMES
	ld [wCurOpponent], a
	ld a, $05
	ld [wTrainerNo], a
	xor a
	ldh [hJoyHeld], a
	ld [wJoyIgnore], a
	ld a, SCRIPT_POKEMONTOWER7F_SCRIPT8
	call PokemonTower7FSetScript
	ret

PokemonTower7FScript8:
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, [wIsInBattle]
	cp $ff
	jp z, PokemonTower7FSetDefaultScript
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
	ld a, TEXT_POKEMONTOWER7F_TEXT6
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
	ld a, SCRIPT_POKEMONTOWER7F_SCRIPT9
	call PokemonTower7FSetScript
	ret

PokemonTower7FScript9:
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	call GBFadeOutToBlack
	ld a, HS_POKEMON_TOWER_7F_JESSIE
	call PokemonTower7FScript_HideObject
	ld a, HS_POKEMON_TOWER_7F_JAMES
	call PokemonTower7FScript_HideObject
	call UpdateSprites
	call Delay3
	call GBFadeInFromBlack
	ld a, SCRIPT_POKEMONTOWER7F_SCRIPT10
	call PokemonTower7FSetScript
	ret

PokemonTower7FScript10:
	call PlayDefaultMusic
	xor a
	ldh [hJoyHeld], a
	ld [wJoyIgnore], a
	SetEvent EVENT_BEAT_POKEMONTOWER_7_JESSIE_JAMES
	ld a, SCRIPT_POKEMONTOWER7F_SCRIPT0
	call PokemonTower7FSetScript
	ret

PokemonTower7FScript_ShowObject:
	ld [wMissableObjectIndex], a
	predef ShowObject
	call UpdateSprites
	call Delay3
	ret

PokemonTower7FScript_HideObject:
	ld [wMissableObjectIndex], a
	predef HideObject
	ret

PokemonTower7FHideNPCScript:
	ld a, [wStatusFlags5]
	bit BIT_SCRIPTED_NPC_MOVEMENT, a
	ret nz
	ld hl, wMissableObjectList
	ld a, [wSpriteIndex]
	ld b, a
.missableObjectsListLoop
	ld a, [hli]
	cp b            ; search for sprite ID in missing objects list
	ld a, [hli]
	jr nz, .missableObjectsListLoop
	ld [wMissableObjectIndex], a   ; remove missable object
	predef HideObject
	xor a
	ld [wJoyIgnore], a
	ld [wSpriteIndex], a
	ld [wTrainerHeaderFlagBit], a
	ld [wOpponentAfterWrongAnswer], a ; not used here; likely a mistake copied from maps/CinnabarGym.asm
	ld a, SCRIPT_POKEMONTOWER7F_SCRIPT0
	ld [wPokemonTower7FCurScript], a
	ld [wCurMapScript], a
	ret

PokemonTower7FWarpToMrFujiHouseScript:
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, HS_POKEMON_TOWER_7F_MR_FUJI
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, SPRITE_FACING_UP
	ld [wSpritePlayerStateData1FacingDirection], a
	ld a, MR_FUJIS_HOUSE
	ldh [hWarpDestinationMap], a
	ld a, $1
	ld [wDestinationWarpID], a
	ld a, LAVENDER_TOWN
	ld [wLastMap], a
	ld hl, wStatusFlags3
	set BIT_WARP_FROM_CUR_SCRIPT, [hl]
	ld a, SCRIPT_POKEMONTOWER7F_SCRIPT0
	ld [wPokemonTower7FCurScript], a
	ret

PokemonTower7FRocketLeaveMovementScript:
	ld hl, PokemonTower7FNPCCoordMovementTable
	ld a, [wSpriteIndex]
	cp 3
	ret c
	sub 3
	dec a
	swap a
	ld d, $0
	ld e, a
	add hl, de
	ld a, [wYCoord]
	ld b, a
	ld a, [wXCoord]
	ld c, a
.loop
	ld a, [hli]
	cp b
	jr nz, .inc_and_skip
	ld a, [hli]
	cp c
	jr nz, .skip
	ld a, [hli]
	ld d, [hl]
	ld e, a
	ld a, [wSpriteIndex]
	ldh [hSpriteIndex], a
	jp MoveSprite
.inc_and_skip
	inc hl
.skip
	inc hl
	inc hl
	jr .loop

PokemonTower7FNPCCoordMovementTable:
	map_coord_movement  9, 12, PokemonTower7FRocket1ExitRightDownMovement
	map_coord_movement 10, 11, PokemonTower7FRocket1ExitDownRightMovement
	map_coord_movement 11, 11, PokemonTower7FRocketExitDownMovement
	map_coord_movement 12, 11, PokemonTower7FRocketExitDownMovement
	map_coord_movement 12, 10, PokemonTower7FRocket2ExitLeftDownMovement
	map_coord_movement 11,  9, PokemonTower7FRocket2ExitDownLeftMovement
	map_coord_movement 10,  9, PokemonTower7FRocketExitDownMovement
	map_coord_movement  9,  9, PokemonTower7FRocketExitDownMovement
	map_coord_movement  9,  8, PokemonTower7FRocket3ExitRightDownMovement
	map_coord_movement 10,  7, PokemonTower7FRocketExitDownMovement
	map_coord_movement 11,  7, PokemonTower7FRocketExitDownMovement
	map_coord_movement 12,  7, PokemonTower7FRocketExitDownMovement
	map_coord_movement 12,  6, PokemonTower7FRocket4ExitLeftDownMovement
	map_coord_movement 11,  5, PokemonTower7FRocketExitDownMovement
	map_coord_movement 10,  5, PokemonTower7FRocketExitDownMovement
	map_coord_movement  9,  5, PokemonTower7FRocketExitDownMovement

PokemonTower7FRocket1ExitRightDownMovement:
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_LEFT
	db -1 ; end

PokemonTower7FRocket1ExitDownRightMovement:
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db -1 ; end

PokemonTower7FRocketExitDownMovement:
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db -1 ; end

PokemonTower7FRocket2ExitLeftDownMovement:
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db -1 ; end

PokemonTower7FRocket2ExitDownLeftMovement:
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db -1 ; end

PokemonTower7FRocket3ExitRightDownMovement:
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db -1 ; end

PokemonTower7FRocket4ExitLeftDownMovement:
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db -1 ; end

PokemonTower7F_TextPointers:
	def_text_pointers
	dw_const PokemonTower7FJessieJamesText, TEXT_POKEMONTOWER7F_JESSIE
	dw_const PokemonTower7FJessieJamesText, TEXT_POKEMONTOWER7F_JAMES
	dw_const PokemonTower7FMrFujiText,      TEXT_POKEMONTOWER7F_MR_FUJI
	dw_const PokemonTower7FRocket1Text,     TEXT_POKEMONTOWER7F_ROCKET1
	dw_const PokemonTower7FRocket2Text,     TEXT_POKEMONTOWER7F_ROCKET2
	dw_const PokemonTower7FRocket3Text,     TEXT_POKEMONTOWER7F_ROCKET3
	dw_const PokemonTower7FRocket4Text,     TEXT_POKEMONTOWER7F_ROCKET4
	dw_const PokemonTower7FText4,           TEXT_POKEMONTOWER7F_TEXT4
	dw_const PokemonTower7FText5,           TEXT_POKEMONTOWER7F_TEXT5
	dw_const PokemonTower7FText6,           TEXT_POKEMONTOWER7F_TEXT6

PokemonTower7FTrainerHeaders:
	def_trainers 3

PokemonTower7FTrainerHeader0:
	trainer EVENT_BEAT_POKEMONTOWER_7_TRAINER_0, 3, PokemonTower7FRocket1BattleText, PokemonTower7FRocket1EndBattleText, PokemonTower7FRocket1AfterBattleText
PokemonTower7TrainerHeader1:
	trainer EVENT_BEAT_POKEMONTOWER_7_TRAINER_1, 3, PokemonTower7FRocket2BattleText, PokemonTower7FRocket2EndBattleText, PokemonTower7FRocket2AfterBattleText  ; New trainer added by G-Dubs
PokemonTower7TrainerHeader2:
	trainer EVENT_BEAT_POKEMONTOWER_7_TRAINER_2, 3, PokemonTower7FRocket3BattleText, PokemonTower7FRocket3EndBattleText, PokemonTower7FRocket3AfterBattleText  ; New trainer added by G-Dubs
PokemonTower7TrainerHeader3:
	trainer EVENT_BEAT_POKEMONTOWER_7_TRAINER_3, 3, PokemonTower7FRocket4BattleText, PokemonTower7FRocket4EndBattleText, PokemonTower7FRocket4AfterBattleText  ; New trainer added by G-Dubs
	db -1 ; end
PokemonTower7FJessieJamesText:
	text_end

PokemonTower7FText4:
	text_far _PokemonTowerJessieJamesText1
	text_asm
	ld c, 10
	call DelayFrames
;	ld hl, PikachuMovementData_1              ;Pikachu Move Trash to figure out.  Table in pikachu_movement.asm
;	call ApplyPikachuMovementData
	ld a, PLAYER_DIR_DOWN
	ld [wPlayerMovingDirection], a
	ld a, $0
	ld [wEmotionBubbleSpriteIndex], a
	ld a, EXCLAMATION_BUBBLE
	ld [wWhichEmotionBubble], a
	predef EmotionBubble
	ld c, 20
	call DelayFrames
	jp TextScriptEnd

;PikachuMovementData_1:
;	db $00
;	db $35
;	db $3f

PokemonTower7FText5:
	text_far _PokemonTowerJessieJamesText2
	text_end

PokemonTower7FJessieJamesEndBattleText:
	text_far _PokemonTowerJessieJamesText3
	text_end

PokemonTower7FText6:
	text_far _PokemonTowerJessieJamesText4
	text_asm
	ld c, 64
	call DelayFrames
	jp TextScriptEnd

PokemonTower7FMrFujiText:
	text_asm
	ld hl, .RescueText
	call PrintText
	SetEvent EVENT_RESCUED_MR_FUJI
	SetEvent EVENT_RESCUED_MR_FUJI_2
	ld a, HS_MR_FUJIS_HOUSE_MR_FUJI
	ld [wMissableObjectIndex], a
	predef ShowObject
	ld a, HS_SAFFRON_CITY_E
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_SAFFRON_CITY_F
	ld [wMissableObjectIndex], a
	predef ShowObject
	ld a, SCRIPT_POKEMONTOWER7F_WARP_TO_MR_FUJI_HOUSE
	ld [wPokemonTower7FCurScript], a
	jp TextScriptEnd

.RescueText:
	text_far _PokemonTower7FMrFujiRescueText
	text_end

PokemonTower7FRocket1Text:
	text_asm
	ld hl, PokemonTower7FTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

PokemonTower7FRocket2Text:                       ; New trainer added by G-Dubs
	text_asm
	ld hl, PokemonTower7TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

PokemonTower7FRocket3Text:                       ; New trainer added by G-Dubs
	text_asm
	ld hl, PokemonTower7TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

PokemonTower7FRocket4Text:                       ; New trainer added by G-Dubs
    text_asm
	ld hl, PokemonTower7TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

PokemonTower7FRocket1BattleText:
	text_far _PokemonTower7FRocket1BattleText
	text_end

PokemonTower7FRocket1EndBattleText:
	text_far _PokemonTower7FRocket1EndBattleText
	text_end

PokemonTower7FRocket1AfterBattleText:
	text_far _PokemonTower7FRocket1AfterBattleText
	text_end

PokemonTower7FRocket2BattleText:                 ; New trainer added by G-Dubs
	text_far _PokemonTower7FRocket2BattleText
	text_end

PokemonTower7FRocket2EndBattleText:
	text_far _PokemonTower7FRocket2EndBattleText
	text_end

PokemonTower7FRocket2AfterBattleText:
	text_far _PokemonTower7FRocket2AfterBattleText
	text_end

PokemonTower7FRocket3BattleText:                 ; New trainer added by G-Dubs
	text_far _PokemonTower7FRocket3BattleText
	text_end

PokemonTower7FRocket3EndBattleText:
	text_far _PokemonTower7FRocket3EndBattleText
	text_end

PokemonTower7FRocket3AfterBattleText:
	text_far _PokemonTower7FRocket3AfterBattleText
	text_end

PokemonTower7FRocket4BattleText:                 ; New trainer added by G-Dubs
	text_far _PokemonTower7FRocket4BattleText
	text_end

PokemonTower7FRocket4EndBattleText:
	text_far _PokemonTower7FRocket4EndBattleText
	text_end

PokemonTower7FRocket4AfterBattleText:
	text_far _PokemonTower7FRocket4AfterBattleText
	text_end
	
	