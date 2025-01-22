ViridianPokecenter_Script:
	call Serial_TryEstablishingExternallyClockedConnection
	;jp EnableAutoTextBoxDrawing
	call EnableAutoTextBoxDrawing
	ld hl, ViridianPokeCenterTrainerHeaders
	ld de, ViridianPokeCenter_ScriptPointers
	ld a, [wViridianPokeCenterCurScript]
	call ExecuteCurMapScriptInTable
	ld [wViridianPokeCenterCurScript], a
	ret

ViridianPokecenterResetScripts:
	CheckAndResetEvent EVENT_3C
	call nz, MtMoonB2FScript_HideJessieJames
	xor a
	ld [wJoyIgnore], a
ViridianPokecenterSetScript:
	ld [wViridianPokeCenterCurScript], a
	ld [wCurMapScript], a
	ret

ViridianPokecenterScript_HideJessieJames:
	ld a, HS_VIRIDIANPOKECENTER_JESSIE
	call ViridianPokecenterScript_HideObject
	ld a, HS_VIRIDIANPOKECENTER_JAMES
	call ViridianPokecenterScript_HideObject
	ret

ViridianPokeCenter_ScriptPointers:
	def_script_pointers
	dw_const ViridianPokecenterDefaultScript,        SCRIPT_VIRIDIANPOKECENTER_DEFAULT
;	dw_const CheckFightingMapTrainers				 SCRIPT_VIRIDIANPOKECENTER_CHECK_TRAINERS
	dw_const DisplayEnemyTrainerTextAndStartBattle,  SCRIPT_VIRIDIANPOKECENTER_START_BATTLE
	dw_const EndTrainerBattle,                       SCRIPT_VIRIDIANPOKECENTER_END_BATTLE
	dw_const ViridianPokecenterScript3,              SCRIPT_VIRIDIANPOKECENTER_SCRIPT3  ;Jessie Movement Script
	dw_const ViridianPokecenterScript4,              SCRIPT_VIRIDIANPOKECENTER_SCRIPT4  ;NPC Movement Flags
	dw_const ViridianPokecenterScript5,              SCRIPT_VIRIDIANPOKECENTER_SCRIPT5  ;Movement Status/Sprite Facing Direction
	dw_const ViridianPokecenterScript6,              SCRIPT_VIRIDIANPOKECENTER_SCRIPT6  ;James Movement Script
	dw_const ViridianPokecenterScript7,              SCRIPT_VIRIDIANPOKECENTER_SCRIPT7  ;NPC Movement Flags
	dw_const ViridianPokecenterScript8,              SCRIPT_VIRIDIANPOKECENTER_SCRIPT8  ;Movement Status/Sprite Facing Direction and continuation of script
	dw_const ViridianPokecenterScript9,              SCRIPT_VIRIDIANPOKECENTER_SCRIPT9  ;Initiates Battle
	dw_const ViridianPokecenterScript10,             SCRIPT_VIRIDIANPOKECENTER_SCRIPT10 ;After Battle
	dw_const ViridianPokecenterScript11,             SCRIPT_VIRIDIANPOKECENTER_SCRIPT11 ;Team Rocket Leaves
	dw_const ViridianPokecenterScript12,             SCRIPT_VIRIDIANPOKECENTER_SCRIPT12 ;Reset Music/Scripts

ViridianPokecenterDefaultScript:
IF DEF(_DEBUG)
	call DebugPressedOrHeldB
	ret nz
ENDC
	CheckEvent EVENT_BEAT_JESSIE_1_TRAINER_0
	call z, ViridianPokecenterScript_TeamRocket
	ret

ViridianPokecenterScript_TeamRocket:
	ld a, [wXCoord]
	cp $3
	ret nz
	ld a, [wYCoord]
	cp $3
	ret nz
	call StopAllMusic
	ld c, BANK(Music_MeetJessieJames)
	ld a, MUSIC_MEET_JESSIE_JAMES
	call PlayMusic
	xor a
	ld a, HS_VIRIDIANPOKECENTER_JESSIE
	call ViridianPokecenterScript_ShowObject
	ld a, HS_VIRIDIANPOKECENTER_JAMES
	call ViridianPokecenterScript_ShowObject
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld a, TEXT_VIRIDIANPOKECENTER_ROCKETTEXT1
	ldh [hTextID], a
	call DisplayTextID
	xor a
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld a, $1
	ld [wSimulatedJoypadStatesIndex], a
	ld a, D_RIGHT
	ld [wSimulatedJoypadStatesEnd], a
	call StartSimulatingJoypadStates
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, SCRIPT_VIRIDIANPOKECENTER_SCRIPT3
	call ViridianPokecenterSetScript
	ret

MovementData_James:
	db $06
MovementData_Jessie:
	db $06
	db $06
	db $06
	db $06
	db $FF

ViridianPokecenterScript3:
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	call Delay3
	ld a, VIRIDIANPOKECENTER_JESSIE
	ldh [hSpriteIndex], a
	ld de, MovementData_Jessie
	call MoveSprite
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, SCRIPT_VIRIDIANPOKECENTER_SCRIPT4
	call ViridianPokecenterSetScript
	ret

ViridianPokecenterScript4:
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, [wStatusFlags5]
	bit BIT_SCRIPTED_NPC_MOVEMENT, a
	ret nz

ViridianPokecenterScript5:
	ld a, $2
	ld [wSprite06StateData1MovementStatus], a               ;Note the number is the sprite index in the maps/objects file, so sprite 6 is the 6th sprite that is listed, which is Jessie in this case
	ld a, SPRITE_FACING_LEFT
	ld [wSprite06StateData1FacingDirection], a

ViridianPokecenterScript6:
	ld a, VIRIDIANPOKECENTER_JAMES
	ldh [hSpriteIndex], a
	ld de, MovementData_James
	call MoveSprite
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, SCRIPT_VIRIDIANPOKECENTER_SCRIPT7
	call ViridianPokecenterSetScript
	ret

ViridianPokecenterScript7:
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, [wStatusFlags5]
	bit BIT_SCRIPTED_NPC_MOVEMENT, a
	ret nz


ViridianPokecenterScript8:
	ld a, $2
	ld [wSprite07StateData1MovementStatus], a          
	ld a, SPRITE_FACING_UP
	ld [wSprite07StateData1FacingDirection], a
	call Delay3
	ld a, ~(A_BUTTON | B_BUTTON)
	ld [wJoyIgnore], a
	ld a, TEXT_VIRIDIANPOKECENTER_JESSIE
	ldh [hTextID], a
	call DisplayTextID

ViridianPokecenterScript9:
	ld hl, wStatusFlags3
	set BIT_TALKED_TO_TRAINER, [hl]
	set BIT_PRINT_END_BATTLE_TEXT, [hl]
	ld hl, ViridianPokecenterJessieEndBattleText
	ld de, ViridianPokecenterJessieEndBattleText
	call SaveEndBattleTextPointers
	ld a, OPP_JESSIE_JAMES
	ld [wCurOpponent], a
	ld a, $01
	ld [wTrainerNo], a
	xor a
	ldh [hJoyHeld], a
	ld [wJoyIgnore], a
	SetEvent EVENT_3C
	ld a, SCRIPT_VIRIDIANPOKECENTER_SCRIPT10
	call ViridianPokecenterSetScript
	ret

ViridianPokecenterScript10:
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, [wIsInBattle]
	cp $ff
	jp z, ViridianPokecenterResetScripts
	ld a, $2
	ld [wSprite06StateData1MovementStatus], a
	ld [wSprite07StateData1MovementStatus], a
	xor a
	ld [wSprite06StateData1FacingDirection], a
	ld [wSprite07StateData1FacingDirection], a
	ld a, ~(A_BUTTON | B_BUTTON)
	ld [wJoyIgnore], a
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld a, TEXT_VIRIDIANPOKECENTER_JESSIE_AFTER_BATTLE
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
	ld a, SCRIPT_VIRIDIANPOKECENTER_SCRIPT11
	call ViridianPokecenterSetScript
	ret

ViridianPokecenterScript11:
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	call GBFadeOutToBlack
	call ViridianCityOfficerJennyLeaves
	ld a, HS_VIRIDIANPOKECENTER_JESSIE
	call ViridianPokecenterScript_HideObject
	ld a, HS_VIRIDIANPOKECENTER_JAMES
	call ViridianPokecenterScript_HideObject
	call UpdateSprites
	call Delay3
	call GBFadeInFromBlack
	ld a, SCRIPT_VIRIDIANPOKECENTER_SCRIPT12
	call ViridianPokecenterSetScript
	ret

ViridianPokecenterScript12:
	call PlayDefaultMusic
	xor a
	ldh [hJoyHeld], a
	ld [wJoyIgnore], a
	SetEvent EVENT_BEAT_JESSIE_1_TRAINER_0
	ResetEventReuseHL EVENT_3C
	ld a, SCRIPT_VIRIDIANPOKECENTER_DEFAULT
	call ViridianPokecenterSetScript
	ret

ViridianPokecenterScript_ShowObject:
	ld [wMissableObjectIndex], a
	predef ShowObject
	call UpdateSprites
	call Delay3
	ret

ViridianPokecenterScript_HideObject:
	ld [wMissableObjectIndex], a
	predef HideObject
	ret

ViridianPokecenter_TextPointers:
	def_text_pointers
	dw_const ViridianPokecenterNurseText,              TEXT_VIRIDIANPOKECENTER_NURSE
	dw_const ViridianPokecenterGentlemanText,          TEXT_VIRIDIANPOKECENTER_GENTLEMAN
	dw_const ViridianPokecenterCooltrainerMText,       TEXT_VIRIDIANPOKECENTER_COOLTRAINER_M
	dw_const ViridianPokecenterLinkReceptionistText,   TEXT_VIRIDIANPOKECENTER_LINK_RECEPTIONIST
	dw_const ViridianPokeCenterChanseyText,            TEXT_VIRIDIANPOKECENTER_CHANSEY
	dw_const ViridianPokecenterJessieBattleText,       TEXT_VIRIDIANPOKECENTER_JESSIE
	dw_const ViridianPokecenterJamesText,              TEXT_VIRIDIANPOKECENTER_JAMES
	dw_const ViridianPokecenterRocketText1,            TEXT_VIRIDIANPOKECENTER_ROCKETTEXT1
	dw_const ViridianPokecenterJessieAfterBattleText,  TEXT_VIRIDIANPOKECENTER_JESSIE_AFTER_BATTLE
	
ViridianPokeCenterTrainerHeaders:
	def_trainers 3
;ViridianPokeCenterTrainerHeader0:
;	trainer EVENT_BEAT_JESSIE_1_TRAINER_0, 2, ViridianPokecenterJessieBattleText, ViridianPokecenterJessieEndBattleText, ViridianPokecenterJessieAfterBattleText
;	db -1 ; end

ViridianPokecenterRocketText1:
	text_far _ViridianPokecenterRocketText1
	text_asm
	ld c, 10
	call DelayFrames
	ld a, PLAYER_DIR_UP
	ld [wPlayerMovingDirection], a
	ld a, $0
	ld [wEmotionBubbleSpriteIndex], a
	ld a, EXCLAMATION_BUBBLE
	ld [wWhichEmotionBubble], a
	predef EmotionBubble
	ld c, 20
	call DelayFrames
	jp TextScriptEnd


ViridianPokecenterJessieBattleText:
	text_far _ViridianPokecenterJessieBattleText
	text_end
	
ViridianPokecenterJessieEndBattleText:
	text_far _ViridianPokecenterJessieEndBattleText
	text_end
	
ViridianPokecenterJessieAfterBattleText:
	text_far _ViridianPokecenterJessieAfterBattleText
	text_end

ViridianPokecenterJamesText:
	text_end

ViridianPokecenterNurseText:
	script_pokecenter_nurse

ViridianPokecenterGentlemanText:
	text_far _ViridianPokecenterGentlemanText
	text_end

ViridianPokecenterCooltrainerMText:
	text_far _ViridianPokecenterCooltrainerMText
	text_end

ViridianPokecenterLinkReceptionistText:
	script_cable_club_receptionist

ViridianPokeCenterChanseyText:
	text_asm
	callfar PokecenterChanseyText
	jp TextScriptEnd

ViridianCityOfficerJennyLeaves::
	ld hl, .HideMissableObjectIDs
.hide_loop
	ld a, [hli]
	cp $ff
	jr z, .done_hiding
	push hl
	ld [wMissableObjectIndex], a
	predef HideObject
	pop hl
	jr .hide_loop
.done_hiding
	ld hl, .ShowMissableObjectIDs
.show_loop
	ld a, [hli]
	cp -1
	ret z
	push hl
	ld [wMissableObjectIndex], a
	predef ShowObject
	pop hl
	jr .show_loop

.ShowMissableObjectIDs:
	db -1 ; end

.HideMissableObjectIDs:
	db HS_OFFICER_JENNY
	db -1