PokemonTower4F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, PokemonTower4TrainerHeaders
	ld de, PokemonTower4F_ScriptPointers
	ld a, [wPokemonTower4FCurScript]
	call ExecuteCurMapScriptInTable
	ld [wPokemonTower4FCurScript], a
	ret

PokemonTower4F_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_POKEMONTOWER4F_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_POKEMONTOWER4F_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_POKEMONTOWER4F_END_BATTLE

PokemonTower4F_TextPointers:
	def_text_pointers
	dw_const PokemonTower4FChanneler1Text, TEXT_POKEMONTOWER4F_CHANNELER1
	dw_const PokemonTower4FChanneler2Text, TEXT_POKEMONTOWER4F_CHANNELER2
	dw_const PokemonTower4FChanneler3Text, TEXT_POKEMONTOWER4F_CHANNELER3
	dw_const PokemonTower4FChanneler4Text, TEXT_POKEMONTOWER4F_CHANNELER4      ; New trainer added by G-Dubs
	dw_const PokemonTower4FChanneler5Text, TEXT_POKEMONTOWER4F_CHANNELER5      ; New trainer added by G-Dubs
	dw_const PickUpItemText,               TEXT_POKEMONTOWER4F_ELIXER
	dw_const PickUpItemText,               TEXT_POKEMONTOWER4F_AWAKENING
	dw_const PickUpItemText,               TEXT_POKEMONTOWER4F_HP_UP

PokemonTower4TrainerHeaders:
	def_trainers
PokemonTower4TrainerHeader0:
	trainer EVENT_BEAT_POKEMONTOWER_4_TRAINER_0, 2, PokemonTower4FChanneler1BattleText, PokemonTower4FChanneler1EndBattleText, PokemonTower4FChanneler1AfterBattleText
PokemonTower4TrainerHeader1:
	trainer EVENT_BEAT_POKEMONTOWER_4_TRAINER_1, 2, PokemonTower4FChanneler2BattleText, PokemonTower4FChanneler2EndBattleText, PokemonTower4FChanneler2AfterBattleText
PokemonTower4TrainerHeader2:
	trainer EVENT_BEAT_POKEMONTOWER_4_TRAINER_2, 2, PokemonTower4FChanneler3BattleText, PokemonTower4FChanneler3EndBattleText, PokemonTower4FChanneler3AfterBattleText
PokemonTower4TrainerHeader3:
	trainer EVENT_BEAT_POKEMONTOWER_4_TRAINER_3, 2, PokemonTower4FChanneler4BattleText, PokemonTower4FChanneler4EndBattleText, PokemonTower4FChanneler4AfterBattleText        ; New trainer added by G-Dubs
PokemonTower4TrainerHeader4:
	trainer EVENT_BEAT_POKEMONTOWER_4_TRAINER_4, 2, PokemonTower4FChanneler5BattleText, PokemonTower4FChanneler5EndBattleText, PokemonTower4FChanneler5AfterBattleText        ; New trainer added by G-Dubs
	db -1 ; end

PokemonTower4FChanneler1Text:
	text_asm
	ld hl, PokemonTower4TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

PokemonTower4FChanneler2Text:
	text_asm
	ld hl, PokemonTower4TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

PokemonTower4FChanneler3Text:
	text_asm
	ld hl, PokemonTower4TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

PokemonTower4FChanneler4Text:
	text_asm
	ld hl, PokemonTower4TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

PokemonTower4FChanneler5Text:
	text_asm
	ld hl, PokemonTower4TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

PokemonTower4FChanneler1BattleText:
	text_far _PokemonTower4FChanneler1BattleText
	text_end

PokemonTower4FChanneler1EndBattleText:
	text_far _PokemonTower4FChanneler1EndBattleText
	text_end

PokemonTower4FChanneler1AfterBattleText:
	text_far _PokemonTower4FChanneler1AfterBattleText
	text_end

PokemonTower4FChanneler2BattleText:
	text_far _PokemonTower4FChanneler2BattleText
	text_end

PokemonTower4FChanneler2EndBattleText:
	text_far _PokemonTower4FChanneler2EndBattleText
	text_end

PokemonTower4FChanneler2AfterBattleText:
	text_far _PokemonTower4FChanneler2AfterBattleText
	text_end

PokemonTower4FChanneler3BattleText:
	text_far _PokemonTower4FChanneler3BattleText
	text_end

PokemonTower4FChanneler3EndBattleText:
	text_far _PokemonTower4FChanneler3EndBattleText
	text_end

PokemonTower4FChanneler3AfterBattleText:
	text_far _PokemonTower4FChanneler3AfterBattleText
	text_end

PokemonTower4FChanneler4BattleText:                        ; New trainer added by G-Dubs
	text_far _PokemonTower4FChanneler4BattleText
	text_end

PokemonTower4FChanneler4EndBattleText:
	text_far _PokemonTower4FChanneler4EndBattleText	
	text_end

PokemonTower4FChanneler4AfterBattleText:
	text_far _PokemonTower4FChanneler4AfterBattleText
	text_end

PokemonTower4FChanneler5BattleText:                       ; New trainer added by G-Dubs
	text_far _PokemonTower4FChanneler5BattleText
	text_end

PokemonTower4FChanneler5EndBattleText:
	text_far _PokemonTower4FChanneler5EndBattleText
	text_end
	
PokemonTower4FChanneler5AfterBattleText:
	text_far _PokemonTower4FChanneler5AfterBattleText
	text_end
