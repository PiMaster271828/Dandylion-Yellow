TrainerAIPointers:
	table_width 3
	; one entry per trainer class
	; first byte, number of times (per PokéMon) it can occur
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
	dbw 3, JugglerAI         ; Unused_Juggler    ; Juggler might switch PokéMon
	dbw 3, GenericAI         ; Fisher
	dbw 3, GenericAI         ; Swimmer
	dbw 3, GenericAI         ; Cue Ball
	dbw 3, GenericAI         ; Gambler
	dbw 3, GenericAI         ; Beauty
	dbw 3, GenericAI         ; Psychic
	dbw 3, GenericAI         ; Rocker
	dbw 3, JugglerAI         ; Juggler           ; Juggler might switch PokéMon
	dbw 3, GenericAI         ; Tamer
	dbw 3, GenericAI         ; BirdKeeper
	dbw 2, BlackbeltAI       ; Blackbelt                                                 ; Blackbelt uses X Attacks 
	dbw 3, GenericAI         ; Rival 1
	dbw 3, GenericAI         ; Prof. Oak
	dbw 1, GenericAI         ; Chief
	dbw 3, GenericAI         ; Scientist
	dbw 1, GiovanniAI        ; Giovanni                                                  ; Giovanni uses Guard Spec.s
	dbw 3, GenericAI         ; Rocket
	dbw 2, CooltrainerMAI    ; Cooltrainer ♂                                             ; Cooltrainer ♂ uses X Attacks
	dbw 1, CooltrainerFAI    ; Cooltrainer ♀     ; Cooltrainer ♀ might switch PokéMon    ; Cooltrainer ♀ uses Hyper Potions 
	dbw 2, BrunoAI           ; Bruno                                                     ; Bruno uses X Defends
	dbw 5, BrockAI           ; Brock                                                     ; Brock uses Full Heals
	dbw 1, MistyAI           ; Misty                                                     ; Misty uses X Defends
	dbw 1, LtSurgeAI         ; Surge                                                     ; Lt. Surge uses X Speeds
	dbw 1, ErikaAI           ; Erika                                                     ; Erika uses Super Potions 
	dbw 2, KogaAI            ; Koga                                                      ; Koga uses X Attacks
	dbw 2, BlaineAI          ; Blaine                                                    ; Blaine uses Hyper Potions
	dbw 1, SabrinaAI         ; Sabrina                                                   ; Sabrina uses X Defends
	dbw 3, LanceAI           ; Gentleman                                                 ; Gentleman uses Max Potions
	dbw 1, Rival2AI          ; Rival 2                                                   ; Rival 2 uses Potions
	dbw 1, Rival3AI          ; Rival 3                                                   ; Rival 3 uses Full Restores
	dbw 2, LoreleiAI         ; Lorelei                                                   ; Lorelei uses Hyper Potions
	dbw 3, GenericAI         ; Channeler
	dbw 2, AgathaAI          ; Agatha            ; Agatha might switch PokéMon           ; Agatha uses Hyper Potions
	dbw 1, LanceAI           ; Lance                                                     ; Lance uses Max Potions
	dbw 3, GenericAI         ; Jessie & James	 ; New trainer class for Team Rocket added by Vlad
	dbw 3, GenericAI         ; PokéFan ♂		 ; New trainer class added by G-Dubs
	dbw 3, GenericAI         ; PokéFan ♀		 ; New trainer class added by G-Dubs
	dbw 3, GenericAI         ; Guitarist		 ; New trainer class added by G-Dubs
	dbw 3, GenericAI         ; Soldier			 ; New trainer class added by G-Dubs
	dbw 3, Rival3AI          ; Lady				 ; New trainer class added by G-Dubs     ; Lady uses Full Restores
	dbw 3, GenericAI         ; Waiter			 ; New trainer class added by G-Dubs
	dbw 3, GenericAI         ; Chef				 ; New trainer class added by G-Dubs
	dbw 3, GenericAI         ; Teacher   		 ; New trainer class added by G-Dubs
	dbw 3, GenericAI         ; School Kid		 ; New trainer class added by G-Dubs
	dbw 3, GenericAI         ; Officer Jenny   	 ; New trainer class added by G-Dubs
	dbw 3, FirefighterAI     ; Firefighter		 ; New trainer class added by G-Dubs     ; Firefighter uses Burn Heals
   ;dbw 3, Rival3AI          ; Nurse Joy		 ; New trainer class added by G-Dubs     ; Nurse Joy uses Full Restores
	assert_table_length NUM_TRAINERS
