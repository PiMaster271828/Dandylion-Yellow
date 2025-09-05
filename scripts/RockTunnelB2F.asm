RockTunnelB2F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, RockTunnel3TrainerHeaders
	ld de, RockTunnelB2F_ScriptPointers
	ld a, [wRockTunnelB2FCurScript]
	call ExecuteCurMapScriptInTable
	ld [wRockTunnelB2FCurScript], a
	ret

RockTunnelB2F_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_ROCKTUNNELB2F_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_ROCKTUNNELB2F_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_ROCKTUNNELB2F_END_BATTLE

RockTunnelB2F_TextPointers:
	def_text_pointers
	dw_const RockTunnelB2FCooltrainerM1Text, TEXT_ROCKTUNNELB2F_COOLTRAINER_M1           ; New trainer added by G-Dubs
	dw_const RockTunnelB2FCooltrainerF1Text, TEXT_ROCKTUNNELB2F_COOLTRAINER_F1           ; New trainer added by G-Dubs
	dw_const RockTunnelB2FHiker1Text,        TEXT_ROCKTUNNELB2F_HIKER1                   ; New trainer added by G-Dubs
	dw_const RockTunnelB2FSuperNerd1Text,    TEXT_ROCKTUNNELB2F_SUPER_NERD1              ; New trainer added by G-Dubs
	dw_const RockTunnelB2FHiker2Text,        TEXT_ROCKTUNNELB2F_HIKER2                   ; New trainer added by G-Dubs
	dw_const RockTunnelB2FLance1Text,        TEXT_ROCKTUNNELB2F_LANCE1                   ; New trainer added by G-Dubs
   ;dw_const PickUpItemText,                 TEXT_ROCKTUNNELB2F_ELIXIR                   ; New item added by G-Dubs
   ;dw_const PickUpItemText,                 TEXT_ROCKTUNNELB2F_ESCAPE_ROPE              ; New item added by G-Dubs	
   ;dw_const PickUpItemText,                 TEXT_ROCKTUNNELB2F_REVIVE                   ; New item added by G-Dubs
   ;dw_const PickUpItemText,                 TEXT_ROCKTUNNELB2F_PP_UP                    ; New item added by G-Dubs
   ;dw_const PickUpItemText,                 TEXT_ROCKTUNNELB2F_TM_STEEL_WING            ; New item added by G-Dubs
   ;dw_const RockTunnelCrystalOnixText,      TEXT_ROCKTUNNELB2F_CRYSTAL_ONIX             ; New Static Encounter added by G-Dubs

RockTunnel3TrainerHeaders:
	def_trainers
RockTunnel3TrainerHeader0:
	trainer EVENT_BEAT_ROCK_TUNNEL_3_TRAINER_0, 3, RockTunnelB2FCooltrainerM1BattleText, RockTunnelB2FCooltrainerM1EndBattleText, RockTunnelB2FCooltrainerM1AfterBattleText   ; New trainer added by G-Dubs
RockTunnel3TrainerHeader1:
	trainer EVENT_BEAT_ROCK_TUNNEL_3_TRAINER_1, 4, RockTunnelB2FCooltrainerF1BattleText, RockTunnelB2FCooltrainerF1EndBattleText, RockTunnelB2FCooltrainerF1AfterBattleText   ; New trainer added by G-Dubs
RockTunnel3TrainerHeader2:
	trainer EVENT_BEAT_ROCK_TUNNEL_3_TRAINER_2, 4, RockTunnelB2FHiker1BattleText, RockTunnelB2FHiker1EndBattleText, RockTunnelB2FHiker1AfterBattleText                        ; New trainer added by G-Dubs
RockTunnel3TrainerHeader3:
	trainer EVENT_BEAT_ROCK_TUNNEL_3_TRAINER_3, 4, RockTunnelB2FSuperNerd1BattleText, RockTunnelB2FSuperNerd1EndBattleText, RockTunnelB2FSuperNerd1AfterBattleText            ; New trainer added by G-Dubs
RockTunnel3TrainerHeader4:
	trainer EVENT_BEAT_ROCK_TUNNEL_3_TRAINER_4, 2, RockTunnelB2FHiker2BattleText, RockTunnelB2FHiker2EndBattleText, RockTunnelB2FHiker2AfterBattleText                        ; New trainer added by G-Dubs
RockTunnel3TrainerHeader5:
	trainer EVENT_BEAT_ROCK_TUNNEL_3_TRAINER_5, 4, RockTunnelB2FLance1BattleText, RockTunnelB2FLance1EndBattleText, RockTunnelB2FLance1AfterBattleText                        ; New trainer added by G-Dubs
	db -1 ; end

RockTunnelB2FCooltrainerM1Text:        ; New trainer added by G-Dubs
	text_asm
	ld hl, RockTunnel3TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

RockTunnelB2FCooltrainerF1Text:        ; New trainer added by G-Dubs
	text_asm
	ld hl, RockTunnel3TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

RockTunnelB2FHiker1Text:               ; New trainer added by G-Dubs
	text_asm
	ld hl, RockTunnel3TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

RockTunnelB2FSuperNerd1Text:           ; New trainer added by G-Dubs
	text_asm
	ld hl, RockTunnel3TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

RockTunnelB2FHiker2Text:               ; New trainer added by G-Dubs
	text_asm
	ld hl, RockTunnel3TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

RockTunnelB2FLance1Text:               ; New trainer added by G-Dubs
	text_asm
	ld hl, RockTunnel3TrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

RockTunnelB2FCooltrainerM1BattleText:                      ; New trainer added by G-Dubs
	text_far _RockTunnelB2FCooltrainerM1BattleText
	text_end

RockTunnelB2FCooltrainerM1EndBattleText:                   
	text_far _RockTunnelB2FCooltrainerM1EndBattleText
	text_end

RockTunnelB2FCooltrainerM1AfterBattleText:
	text_far _RockTunnelB2FCooltrainerM1AfterBattleText
	text_end

RockTunnelB2FCooltrainerF1BattleText:                      ; New trainer added by G-Dubs
	text_far _RockTunnelB2FCooltrainerF1BattleText
	text_end

RockTunnelB2FCooltrainerF1EndBattleText:
	text_far _RockTunnelB2FCooltrainerF1EndBattleText
	text_end

RockTunnelB2FCooltrainerF1AfterBattleText:
	text_far _RockTunnelB2FCooltrainerF1AfterBattleText
	text_end

RockTunnelB2FHiker1BattleText:                             ; New trainer added by G-Dubs
	text_far _RockTunnelB2FHiker1BattleText
	text_end

RockTunnelB2FHiker1EndBattleText:
	text_far _RockTunnelB2FHiker1EndBattleText
	text_end

RockTunnelB2FHiker1AfterBattleText:
	text_far _RockTunnelB2FHiker1AfterBattleText
	text_end

RockTunnelB2FSuperNerd1BattleText:                         ; New trainer added by G-Dubs
	text_far _RockTunnelB2FSuperNerd1BattleText
	text_end

RockTunnelB2FSuperNerd1EndBattleText:
	text_far _RockTunnelB2FSuperNerd1EndBattleText
	text_end

RockTunnelB2FSuperNerd1AfterBattleText:
	text_far _RockTunnelB2FSuperNerd1AfterBattleText
	text_end

RockTunnelB2FHiker2BattleText:                             ; New trainer added by G-Dubs 
	text_far _RockTunnelB2FHiker2BattleText
	text_end

RockTunnelB2FHiker2EndBattleText:
	text_far _RockTunnelB2FHiker2EndBattleText
	text_end

RockTunnelB2FHiker2AfterBattleText:
	text_far _RockTunnelB2FHiker2AfterBattleText
	text_end

RockTunnelB2FLance1BattleText:                             ; New trainer added by G-Dubs
	text_far _RockTunnelB2FLance1BattleText
	text_end

RockTunnelB2FLance1EndBattleText:
	text_far _RockTunnelB2FLance1EndBattleText
	text_end

RockTunnelB2FLance1AfterBattleText:
	text_far _RockTunnelB2FLance1AfterBattleText
	text_end

/*
; Articuno is object 3, but its event flag is bit 2.
; This is not a problem because its sight range is 0, and
; trainer headers were not stored by ExecuteCurMapScriptInTable.
	def_trainers 2
ArticunoTrainerHeader:
	trainer EVENT_BEAT_ARTICUNO, 0, SeafoamIslandsB4FArticunoBattleText, SeafoamIslandsB4FArticunoBattleText, SeafoamIslandsB4FArticunoBattleText
	db -1 ; end

SeafoamIslandsB4FArticunoText:
	text_asm
	ld hl, ArticunoTrainerHeader
	call TalkToTrainer
	ld a, SCRIPT_SEAFOAMISLANDSB4F_OBJECT_MOVING3
	ld [wSeafoamIslandsB4FCurScript], a
	jp TextScriptEnd

SeafoamIslandsB4FArticunoBattleText:
	text_far _SeafoamIslandsB4FArticunoBattleText
	text_asm
	ld a, ARTICUNO
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd
*/