TrainerAIPointers:
	table_width 3
	; one entry per trainer class
	; first byte, number of times (per Pokémon) it can occur
	; next two bytes, pointer to AI subroutine for trainer class
	; subroutines are defined in engine/battle/trainer_ai.asm

	dbw 3, GenericAI         ; Youngster
	dbw 3, GenericAI         ; Bug Catcher
	dbw 3, GenericAI         ; Lass
	dbw 3, GenericAI         ; Sailor
	dbw 3, GenericAI         ; Jr. Trainer ♂
	dbw 3, GenericAI         ; Jr. Trainer ♀
	dbw 3, GenericAI         ; Pokémaniac
	dbw 3, GenericAI         ; Super Nerd
	dbw 3, GenericAI         ; Hiker
	dbw 3, GenericAI         ; Biker
	dbw 3, GenericAI         ; Burglar
	dbw 3, GenericAI         ; Engineer
	dbw 3, JugglerAI         ; Unused_Juggler
	dbw 3, GenericAI         ; Fisher
	dbw 3, GenericAI         ; Swimmer
	dbw 3, GenericAI         ; Cue Ball
	dbw 3, GenericAI         ; Gambler
	dbw 3, GenericAI         ; Beauty
	dbw 3, GenericAI         ; Psychic
	dbw 3, GenericAI         ; Rocker
	dbw 3, JugglerAI         ; Juggler
	dbw 3, GenericAI         ; Tamer
	dbw 3, GenericAI         ; BirdKeeper
	dbw 2, BlackbeltAI       ; Blackbelt
	dbw 3, GenericAI         ; Rival 1
	dbw 3, GenericAI         ; Prof. Oak
	dbw 1, GenericAI         ; Chief
	dbw 3, GenericAI         ; Scientist
	dbw 1, GiovanniAI        ; Giovanni
	dbw 3, GenericAI         ; Rocket
	dbw 2, CooltrainerMAI    ; Cooltrainer ♂
	dbw 1, CooltrainerFAI    ; Cooltrainer ♀
	dbw 2, BrunoAI           ; Bruno
	dbw 5, BrockAI           ; Brock
	dbw 1, MistyAI           ; Misty
	dbw 1, LtSurgeAI         ; Surge
	dbw 1, ErikaAI           ; Erika
	dbw 2, KogaAI            ; Koga
	dbw 2, BlaineAI          ; Blaine
	dbw 1, SabrinaAI         ; Sabrina
	dbw 3, LadyAI            ; Gentleman
	dbw 1, Rival2AI          ; Rival 2
	dbw 1, Rival3AI          ; Rival 3
	dbw 2, LoreleiAI         ; Lorelei
	dbw 3, GenericAI         ; Channeler
	dbw 2, AgathaAI          ; Agatha
	dbw 1, LanceAI           ; Lance
	dbw 3, GenericAI         ; Jessie & James	; New trainer class for Team Rocket added by Vlad
	dbw 3, GenericAI         ; PokéFan ♂		; New trainer class added by G-Dubs
	dbw 3, GenericAI         ; PokéFan ♀		; New trainer class added by G-Dubs
	dbw 3, GenericAI         ; Guitarist		; New trainer class added by G-Dubs
	dbw 3, GenericAI         ; Soldier			; New trainer class added by G-Dubs
	dbw 3, LadyAI            ; Lady				; New trainer class added by G-Dubs
	dbw 3, GenericAI         ; Waiter			; New trainer class added by G-Dubs
	dbw 3, GenericAI         ; Chef				; New trainer class added by G-Dubs
	assert_table_length NUM_TRAINERS
