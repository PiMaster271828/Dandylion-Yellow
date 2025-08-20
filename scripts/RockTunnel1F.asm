RockTunnel1F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, RockTunnel1TrainerHeaders
	ld de, RockTunnel1F_ScriptPointers
	ld a, [wRockTunnel1FCurScript]
	call ExecuteCurMapScriptInTable
	ld [wRockTunnel1FCurScript], a
	ret

RockTunnel1F_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_ROCKTUNNEL1F_DEFAULT          ; Change this script to RockTunnel1FDefaultScript once the hole script works
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_ROCKTUNNEL1F_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_ROCKTUNNEL1F_END_BATTLE

; Make this work, to get the hole to Rock Tunnel B2F (For now ignore it)
/*
RockTunnel1FDefaultScript:
    ld hl, .holeCoords
	call .isPlayerFallingDownHole
	ld a, [wWhichDungeonWarp]
	and a
	jp z, CheckFightingMapTrainers
	cp $3
	ld a, POKEMON_MANSION_1F
	jr nz, .fellDownHoleTo1F
	ld a, POKEMON_MANSION_2F
.fellDownHoleTo1F
	ld [wDungeonWarpDestinationMap], a
	ret

.holeCoords:
	dbmapcoord 16, 14
	dbmapcoord 17, 14
	dbmapcoord 19, 14
	db -1 ; end

.isPlayerFallingDownHole:
	xor a
	ld [wWhichDungeonWarp], a
	ld a, [wStatusFlags3]
	bit BIT_ON_DUNGEON_WARP, a
	ret nz
	call ArePlayerCoordsInArray
	ret nc
	ld a, [wCoordIndex]
	ld [wWhichDungeonWarp], a
	ld hl, wStatusFlags3
	set BIT_ON_DUNGEON_WARP, [hl]
	ld hl, wStatusFlags6
	set BIT_DUNGEON_WARP, [hl]
	ret
*/

RockTunnel1F_TextPointers:
	def_text_pointers
	dw_const RockTunnel1FHiker1Text,        TEXT_ROCKTUNNEL1F_HIKER1
	dw_const RockTunnel1FHiker2Text,        TEXT_ROCKTUNNEL1F_HIKER2
	dw_const RockTunnel1FHiker3Text,        TEXT_ROCKTUNNEL1F_HIKER3
	dw_const RockTunnel1FSuperNerd1Text,    TEXT_ROCKTUNNEL1F_SUPER_NERD1
	dw_const RockTunnel1FCooltrainerF1Text, TEXT_ROCKTUNNEL1F_COOLTRAINER_F1
	dw_const RockTunnel1FCooltrainerF2Text, TEXT_ROCKTUNNEL1F_COOLTRAINER_F2
	dw_const RockTunnel1FCooltrainerF3Text, TEXT_ROCKTUNNEL1F_COOLTRAINER_F3
    dw_const RockTunnel1FSuperNerd2Text,    TEXT_ROCKTUNNEL1F_SUPER_NERD2      ; New trainer added by G-Dubs
	dw_const RockTunnel1FCooltrainerF4Text, TEXT_ROCKTUNNEL1F_COOLTRAINER_F4   ; New trainer added by G-Dubs
   ;dw_const PickUpItemText,                TEXT_ROCKTUNNEL1F_NUGGET           ; New item added by G-Dubs
   ;dw_const PickUpItemText,                TEXT_ROCKTUNNEL1F_RARE_CANDY       ; New item added by G-Dubs
   ;dw_const PickUpItemText,                TEXT_ROCKTUNNEL1F_TM_STEEL_WING    ; New TM added by G-Dubs (TM 51 Steel Wing) 
	dw_const BoulderText,                   TEXT_ROCKTUNNEL1F_BOULDER1         ; New Strength Boulder added by G-Dubs
	dw_const BoulderText,                   TEXT_ROCKTUNNEL1F_BOULDER2         ; New Strength Boulder added by G-Dubs
	dw_const RockTunnel1FSignText,          TEXT_ROCKTUNNEL1F_SIGN

RockTunnel1TrainerHeaders:
	def_trainers
RockTunnel1TrainerHeader0:
	trainer EVENT_BEAT_ROCK_TUNNEL_1_TRAINER_0, 4, RockTunnel1FHiker1BattleText, RockTunnel1FHiker1EndBattleText, RockTunnel1FHiker1AfterBattleText
RockTunnel1TrainerHeader1:
	trainer EVENT_BEAT_ROCK_TUNNEL_1_TRAINER_1, 4, RockTunnel1FHiker2BattleText, RockTunnel1FHiker2EndBattleText, RockTunnel1FHiker2AfterBattleText
RockTunnel1TrainerHeader2:
	trainer EVENT_BEAT_ROCK_TUNNEL_1_TRAINER_2, 3, RockTunnel1FHiker3BattleText, RockTunnel1FHiker3EndBattleText, RockTunnel1FHiker3AfterBattleText
RockTunnel1TrainerHeader3:
	trainer EVENT_BEAT_ROCK_TUNNEL_1_TRAINER_3, 3, RockTunnel1FSuperNerd1BattleText, RockTunnel1FSuperNerd1EndBattleText, RockTunnel1FSuperNerd1AfterBattleText
RockTunnel1TrainerHeader4:
	trainer EVENT_BEAT_ROCK_TUNNEL_1_TRAINER_4, 4, RockTunnel1FCooltrainerF1BattleText, RockTunnel1FCooltrainerF1EndBattleText, RockTunnel1FCooltrainerF1AfterBattleText
RockTunnel1TrainerHeader5:
	trainer EVENT_BEAT_ROCK_TUNNEL_1_TRAINER_5, 4, RockTunnel1FCooltrainerF2BattleText, RockTunnel1FCooltrainerF2EndBattleText, RockTunnel1FCooltrainerF2AfterBattleText
RockTunnel1TrainerHeader6:
	trainer EVENT_BEAT_ROCK_TUNNEL_1_TRAINER_6, 4, RockTunnel1FCooltrainerF3BattleText, RockTunnel1FCooltrainerF3EndBattleText, RockTunnel1FCooltrainerF3AfterBattleText
RockTunnel1TrainerHeader7:
	trainer EVENT_BEAT_ROCK_TUNNEL_1_TRAINER_7, 3, RockTunnel1FSuperNerd2BattleText, RockTunnel1FSuperNerd2EndBattleText, RockTunnel1FSuperNerd2AfterBattleText	             ; New trainer added by G-Dubs
RockTunnel1TrainerHeader8:	
	trainer EVENT_BEAT_ROCK_TUNNEL_1_TRAINER_8, 4, RockTunnel1FCooltrainerF4BattleText, RockTunnel1FCooltrainerF4EndBattleText, RockTunnel1FCooltrainerF4AfterBattleText     ; New trainer added by G-Dubs
	db -1 ; end

RockTunnel1FHiker1Text:
	text_asm
	ld hl, RockTunnel1TrainerHeader0
	jr RockTunnel1FTalkToTrainer

RockTunnel1FHiker2Text:
	text_asm
	ld hl, RockTunnel1TrainerHeader1
	jr RockTunnel1FTalkToTrainer

RockTunnel1FHiker3Text:
	text_asm
	ld hl, RockTunnel1TrainerHeader2
	jr RockTunnel1FTalkToTrainer

RockTunnel1FSuperNerd1Text:
	text_asm
	ld hl, RockTunnel1TrainerHeader3
	jr RockTunnel1FTalkToTrainer

RockTunnel1FCooltrainerF1Text:
	text_asm
	ld hl, RockTunnel1TrainerHeader4
	jr RockTunnel1FTalkToTrainer

RockTunnel1FCooltrainerF2Text:
	text_asm
	ld hl, RockTunnel1TrainerHeader5
	jr RockTunnel1FTalkToTrainer

RockTunnel1FCooltrainerF3Text:
	text_asm
	ld hl, RockTunnel1TrainerHeader6
    jr RockTunnel1FTalkToTrainer

RockTunnel1FSuperNerd2Text:                 ; New trainer added by G-Dubs
	text_asm
	ld hl, RockTunnel1TrainerHeader7
	jr RockTunnel1FTalkToTrainer

RockTunnel1FCooltrainerF4Text:
	text_asm
	ld hl, RockTunnel1TrainerHeader8        ; New trainer added by G-Dubs
    jr RockTunnel1FTalkToTrainer

RockTunnel1FTalkToTrainer:
	call TalkToTrainer
	jp TextScriptEnd

RockTunnel1FHiker1BattleText:
	text_far _RockTunnel1FHiker1BattleText
	text_end

RockTunnel1FHiker1EndBattleText:
	text_far _RockTunnel1FHiker1EndBattleText
	text_end

RockTunnel1FHiker1AfterBattleText:
	text_far _RockTunnel1FHiker1AfterBattleText
	text_end

RockTunnel1FHiker2BattleText:
	text_far _RockTunnel1FHiker2BattleText
	text_end

RockTunnel1FHiker2EndBattleText:
	text_far _RockTunnel1FHiker2EndBattleText
	text_end

RockTunnel1FHiker2AfterBattleText:
	text_far _RockTunnel1FHiker2AfterBattleText
	text_end

RockTunnel1FHiker3BattleText:
	text_far _RockTunnel1FHiker3BattleText
	text_end

RockTunnel1FHiker3EndBattleText:
	text_far _RockTunnel1FHiker3EndBattleText
	text_end

RockTunnel1FHiker3AfterBattleText:
	text_far _RockTunnel1FHiker3AfterBattleText
	text_end

RockTunnel1FSuperNerd1BattleText:
	text_far _RockTunnel1FSuperNerd1BattleText
	text_end

RockTunnel1FSuperNerd1EndBattleText:
	text_far _RockTunnel1FSuperNerd1EndBattleText
	text_end

RockTunnel1FSuperNerd1AfterBattleText:
	text_far _RockTunnel1FSuperNerd1AfterBattleText
	text_end

RockTunnel1FCooltrainerF1BattleText:
	text_far _RockTunnel1FCooltrainerF1BattleText
	text_end

RockTunnel1FCooltrainerF1EndBattleText:
	text_far _RockTunnel1FCooltrainerF1EndBattleText
	text_end

RockTunnel1FCooltrainerF1AfterBattleText:
	text_far _RockTunnel1FCooltrainerF1AfterBattleText
	text_end

RockTunnel1FCooltrainerF2BattleText:
	text_far _RockTunnel1FCooltrainerF2BattleText
	text_end

RockTunnel1FCooltrainerF2EndBattleText:
	text_far _RockTunnel1FCooltrainerF2EndBattleText
	text_end

RockTunnel1FCooltrainerF2AfterBattleText:
	text_far _RockTunnel1FCooltrainerF2AfterBattleText
	text_end

RockTunnel1FCooltrainerF3BattleText:
	text_far _RockTunnel1FCooltrainerF3BattleText
	text_end

RockTunnel1FCooltrainerF3EndBattleText:
	text_far _RockTunnel1FCooltrainerF3EndBattleText
	text_end

RockTunnel1FCooltrainerF3AfterBattleText:
	text_far _RockTunnel1FCooltrainerF3AfterBattleText
	text_end

RockTunnel1FSuperNerd2BattleText:                          ; New trainer added by G-Dubs
	text_far _RockTunnel1FSuperNerd2BattleText
	text_end

RockTunnel1FSuperNerd2EndBattleText:
	text_far _RockTunnel1FSuperNerd2EndBattleText
	text_end

RockTunnel1FSuperNerd2AfterBattleText:
	text_far _RockTunnel1FSuperNerd2AfterBattleText
	text_end

RockTunnel1FCooltrainerF4BattleText:                       ; New trainer added by G-Dubs
	text_far _RockTunnel1FCooltrainerF4BattleText
	text_end

RockTunnel1FCooltrainerF4EndBattleText:
	text_far _RockTunnel1FCooltrainerF4EndBattleText
	text_end

RockTunnel1FCooltrainerF4AfterBattleText:
	text_far _RockTunnel1FCooltrainerF4AfterBattleText
	text_end

RockTunnel1FSignText:
	text_far _RockTunnel1FSignText
	text_end
