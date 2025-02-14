TrainerDataPointers:
	table_width 2
	dw YoungsterData
	dw BugCatcherData
	dw LassData
	dw SailorData
	dw JrTrainerMData
	dw JrTrainerFData
	dw PokemaniacData
	dw SuperNerdData
	dw HikerData
	dw BikerData
	dw BurglarData
	dw EngineerData
	dw UnusedJugglerData
	dw FisherData
	dw SwimmerData
	dw CueBallData
	dw GamblerData
	dw BeautyData
	dw PsychicData
	dw RockerData
	dw JugglerData
	dw TamerData
	dw BirdKeeperData
	dw BlackbeltData
	dw Rival1Data
	dw ProfOakData
	dw ChiefData
	dw ScientistData
	dw GiovanniData
	dw RocketData
	dw CooltrainerMData
	dw CooltrainerFData
	dw BrunoData
	dw BrockData
	dw MistyData
	dw LtSurgeData
	dw ErikaData
	dw KogaData
	dw BlaineData
	dw SabrinaData
	dw GentlemanData
	dw Rival2Data
	dw Rival3Data
	dw LoreleiData
	dw ChannelerData
	dw AgathaData
	dw LanceData
	dw JessieJamesData
	assert_table_length NUM_TRAINERS

; if first byte != $FF, then
	; first byte is level (of all pokemon on this team)
	; all the next bytes are pokemon species
	; null-terminated
; if first byte == $FF, then
	; first byte is $FF (obviously)
	; every next two bytes are a level and species
	; null-terminated

YoungsterData:
; Route 3
	db 11, RATTATA, EKANS, 0                                                              ; Youngster 1
	db 14, SPEAROW, 0                                                                     ; Youngster 2
; Mt. Moon 1F
	db 10, RATTATA, NIDORAN_M, ZUBAT, 0                                                   ; Youngster 3         ; Rattata 2 changed to Nidoran♂  
; Route 24
	db 14, RATTATA, EKANS, ZUBAT, 0                                                       ; Youngster 4
; Route 25
	db 15, RATTATA, SPEAROW, NIDORAN_M, 0                                                 ; Youngster 5         ; Nidoran♂ added by G-Dubs
	db 17, SLOWPOKE, 0                                                                    ; Youngster 6
	db 14, EKANS, SANDSHREW, 0                                                            ; Youngster 7
; SS Anne 1F Rooms    
	db 21, NIDORAN_M, 0                                                                   ; Youngster 8
; Route 11
	db 21, EKANS, 0                                                                       ; Youngster 9
	db 19, NIDORAN_M, SANDSHREW, ZUBAT, 0                                                 ; Youngster 10        ; Nidoran♂ added by G-Dubs
	db 17, RATTATA, RATTATA, RATICATE, 0                                                  ; Youngster 11
	db 18, NIDORAN_M, NIDORINO, 0                                                         ; Youngster 12
; Viridian Forest (Previously Unused)
	db 7, PIDGEY, RATTATA, NIDORAN_M, SPEAROW, 0                                          ; Youngster 13        ; Trainer unused in any version added by G-Dubs (Some PokéMon Changed) (Level hanged from 17 to 7)
; Route 9      
	db 24, SANDSHREW, 0                                                                   ; Youngster 14        ; A.J. from the Anime and his OP Sandshrew
; Viridian Forest (Again)
    db $FF, 6, RATTATA, 7, PIDGEY, 6, CATERPIE, 7, NIDORAN_M, 6, WEEDLE, 9, PIDGEOTTO, 0  ; Youngster 15        ; New Trainer added by G-Dubs

BugCatcherData:
; Viridian Forest
	db 7, CATERPIE, WEEDLE, 0                                                             ; Bug Catcher 1       ; Weedle added by G-Dubs
 	db 6, METAPOD, CATERPIE, METAPOD, 0                                                   ; Bug Catcher 2
	db 10, CATERPIE, WEEDLE, METAPOD, KAKUNA, BUTTERFREE, BEEDRILL, 0                     ; Bug Catcher 3       ; Weedle added by G-Dubs (Other PokéMon suggested by Vlads)
; Route 3    
	db 10, CATERPIE, WEEDLE, CATERPIE, 0                                                  ; Bug Catcher 4
	db 9, WEEDLE, KAKUNA, CATERPIE, METAPOD, 0                                            ; Bug Catcher 5
	db 11, CATERPIE, METAPOD, 0                                                           ; Bug Catcher 6
; Mt. Moon 1F
	db 11, WEEDLE, KAKUNA, CATERPIE, 0                                                    ; Bug Catcher 7        ; Caterpie added by G-Dubs
	db 10, CATERPIE, METAPOD, WEEDLE, 0                                                   ; Bug Catcher 8        ; 2nd Caterpie changed to Weedle by G-Dubs
; Route 24
	db 14, CATERPIE, WEEDLE, 0                                                            ; Bug Catcher 9
; Route 6
	db 16, WEEDLE, CATERPIE, WEEDLE, 0                                                    ; Bug Catcher 10
	db 20, BUTTERFREE, 0                                                                  ; Bug Catcher 11
; Unused
	db 18, METAPOD, CATERPIE, VENONAT, 0	                                              ; Bug Catcher 12       ; (Unused)
; Route 9
	db 19, BEEDRILL, BEEDRILL, 0                                                          ; Bug Catcher 13
	db 20, CATERPIE, WEEDLE, VENONAT, 0                                                   ; Bug Catcher 14
; Viridian Forest (Again)
	db 8, CATERPIE, METAPOD, 0                                                            ; Bug Catcher 15       ; Yellow exclusive Bug Catcher in Viridian Forest (Poor coding)
	db 6, KAKUNA, WEEDLE, KAKUNA, 0                                                       ; Bug Catcher 16       ; Trainer from Red/Blue added by G-Dubs
	db 9, WEEDLE, 0                                                                       ; Bug Catcher 17       ; Trainer from Red/Blue added by G-Dubs
	db 9, CATERPIE, 0                                                                     ; Bug Catcher 18       ; Trainer from Red/Blue added by G-Dubs
/*
; Route 13
    db 30, BUTTERFREE, BEEDRILL, VENOMOTH, 0                                              ; Bug Catcher 19       ; New Trainer added by G-Dubs
; Route 15
    db $FF, 33, VENONAT, 36, VENOMOTH, 0                                                  ; Bug Catcher 20       ; New Trainer added by G-Dubs
; Route 16
    db $FF, 34, VENONAT, 36, VENONAT, 38, VENONAT, 40, VENOMOTH, 0                        ; Bug Catcher 21       ; New Trainer added by G-Dubs
; Safari Zone Area 1 Rest House
    db $FF, 32, PARAS, 36, PARASECT, 0                                                    ; Bug Catcher 22       ; New Trainer added by G-Dubs
; Safari Zone Area 3 Rest House	
	db 33, SCYTHER, PINSIR, 0                                                             ; Bug Catcher 23       ; New Trainer added by G-Dubs
; Safari Zone Area 4 Rest House
   db $FF, 32, VENONAT, 36, VENOMOTH, 0                                                   ; Bug Catcher 24       ; New Trainer added by G-Dubs
; Victory Road  
    db 50, BUTTERFREE, PARASECT, BEEDRILL, VENOMOTH, 0                                    ; Bug Catcher 25       ; New Trainer added by G-Dubs
*/
LassData:
; Route 3
	db 9, PIDGEY, PIDGEY, 0                                                               ; Lass 1
	db 10, NIDORAN_F, RATTATA, NIDORAN_M, 0                                               ; Lass 2               ; Nidoran♀ added by G-Dubs
	db 14, JIGGLYPUFF, 0                                                                  ; Lass 3
; Route 4
	db 31, PARAS, PARAS, PARASECT, 0                                                      ; Lass 4
; Mt. Moon 1F
	db 11, ODDISH, BELLSPROUT, 0                                                          ; Lass 5
	db 14, CLEFAIRY, 0                                                                    ; Lass 6
; Route 24
	db 16, NIDORAN_M, PIDGEY, NIDORAN_F, 0                                                ; Lass 7               ; Nidoran♂ added by G-Dubs
	db 14, NIDORAN_M, PIDGEY, NIDORAN_F, 0                                                ; Lass 8               ; Nidoran♂ added by G-Dubs
; Route 25
	db 15, NIDORAN_M, NIDORAN_F, 0                                                        ; Lass 9
	db 13, ODDISH, PIDGEY, ODDISH, 0                                                      ; Lass 10
; SS Anne 1F Rooms
	db 18, NIDORAN_F, PIDGEY, NIDORAN_F, 0                                                ; Lass 11              ; Nidoran♀ added by G-Dubs
; SS Anne 2F Rooms
	db 20, RATTATA, PIKACHU, JIGGLYPUFF, 0                                                ; Lass 12              ; Rattata, and Pikachu from Red/Blue added by G-Dubs
; Route 8
	db 23, NIDORAN_F, NIDORINA, 0                                                         ; Lass 13
	db 24, MEOWTH, MEOWTH, MEOWTH, 0                                                      ; Lass 14
	db 19, PIDGEY, RATTATA, NIDORAN_F, MEOWTH, NIDORAN_M, PIKACHU, 0                      ; Lass 15              ; Pikachu from Red/Blue added by G-Dubs
	db 22, CLEFAIRY, CLEFAIRY, 0                                                          ; Lass 16
; Celadon Gym
	db 23, BELLSPROUT, WEEPINBELL, 0		                                              ; Lass 17
	db 23, ODDISH, GLOOM, 0				                                                  ; Lass 18
; Viridian Forest (Again)
	db 6, NIDORAN_F, NIDORAN_M, 0                                                         ; Lass 19              ; Yellow exclusive Lass in Viridian Forest (Poor coding)
; Route 4 (Again)
    db $FF, 14, JIGGLYPUFF, 13, PARAS, 12, GEODUDE, 13, NIDORAN_F, 14, CLEFAIRY           ; Lass 20              ; New Trainer added by G-Dubs 

SailorData:
; SS Anne Stern
	db 18, MACHOP, SHELLDER, 0                                                            ; Sailor 1
	db 17, MACHOP, TENTACOOL, 0                                                           ; Sailor 2
; SS Anne B1F Rooms
	db 21, SHELLDER, MACHOP, 0                                                            ; Sailor 3              ; Machop added by G-Dubs
	db 17, HORSEA, SHELLDER, TENTACOOL, 0                                                 ; Sailor 4
	db 18, TENTACOOL, STARYU, 0                                                           ; Sailor 5
	db 17, HORSEA, HORSEA, HORSEA, 0                                                      ; Sailor 6
	db 20, MACHOP, KRABBY, 0                                                              ; Sailor 7              ; Krabby added by G-Dubs
; Vermilion Gym
	db 21, PIKACHU, MACHOP, PIKACHU, MAGNEMITE, 0                                         ; Sailor 8              ; Pikachu from Red/Blue, and Machop with Thunderpunch added by G-Dubs

JrTrainerMData:
; Pewter Gym
	db 11, DIGLETT, SANDSHREW, 0                                                          ; Jr. Trainer ♂ 1       ; Changed from level 9 to 11 to match Red/Blue by G-Dubs
; Route 24/Route 25
	db 14, NIDORAN_M, RATTATA, EKANS, 0                                                   ; Jr. Trainer ♂ 2       ; Nidoran♂ added by G-Dubs
 ; Route 24
	db 18, NIDORAN_M, SANDSHREW, MANKEY, 0                                                ; Jr. Trainer ♂ 3       ; Nidoran♂ & Sandshrew added by G-Dubs
; Unused
	db 20, SQUIRTLE, 0					                                                  ; Jr. Trainer ♂ 4       ; (Unused)
; Route 6   
	db 16, SPEAROW, NIDORAN_M ,RATICATE, 0                                                ; Jr. Trainer ♂ 5       ; Nidoran♂ added by G-Dubs
; Unused
	db 18, DIGLETT, DIGLETT, SANDSHREW, 0	                                              ; Jr. Trainer ♂ 6       ; (Unused)
	db 21, GROWLITHE, CHARMANDER, 0		                                                  ; Jr. Trainer ♂ 7       ; (Unused)
; Route 9
	db 19, RATTATA, DIGLETT, EKANS, SANDSHREW, 0                                          ; Jr. Trainer ♂ 8
; Route 12
	db 29, NIDORAN_M, NIDORINO, 0                                                         ; Jr. Trainer ♂ 9
; Route 6 (Again)
	db 16, WEEPINBELL, 0                                                                  ; Jr. Trainer ♂ 10      ; Joe from the anime, exclusive to Yellow (Poor coding)

JrTrainerFData:
; Cerulean Gym
	db 19, GOLDEEN, 0                                                                     ; Jr. Trainer ♀ 1
; Unused
	db 16, ODDISH, BELLSPROUT, 0			                                              ; Jr. Trainer ♀ 2       ; (Unused)
; Route 6
	db 16, PIDGEY, PIDGEY, PIDGEY, 0		                                              ; Jr. Trainer ♀ 3
; Unused
	db 22, BULBASAUR, 0					                                                  ; Jr. Trainer ♀ 4       ; (Unused)
; Route 9
	db 18, ODDISH, BELLSPROUT, ODDISH, BELLSPROUT, 0                                      ; Jr. Trainer ♀ 5
	db 23, MEOWTH, 0                                                                      ; Jr. Trainer ♀ 6  
; Route 10
	db 20, JIGGLYPUFF, PIKACHU, CLEFAIRY, 0                                               ; Jr. Trainer ♀ 7       ; Pikachu from Red/Blue added by G-Dubs 
	db 21, PIDGEY, PIDGEOTTO, 0                                                           ; Jr. Trainer ♀ 8
; Rock Tunnel B1F
	db 21, JIGGLYPUFF, PIDGEY, MEOWTH, NIDORAN_F, 0                                       ; Jr. Trainer ♀ 9       ; Nidoran♀ added by G-Dubs
	db 22, ODDISH, BULBASAUR, 0                                                           ; Jr. Trainer ♀ 10     
; Celadon Gym        
	db 24, BULBASAUR, IVYSAUR, 0                                                          ; Jr. Trainer ♀ 11
; Route 13
	db 24, PIDGEY, MEOWTH, RATTATA, PIKACHU, MEOWTH, PIDGEOTTO, 0                         ; Jr. Trainer ♀ 12      ; Pikachu from Red/Blue added and Pidgey changed to Pidgeotto by G-Dubs
	db 30, POLIWAG, POLIWAG, 0                                                            ; Jr. Trainer ♀ 13
	db 27, PIDGEY, MEOWTH, PIDGEY, PIDGEOTTO, 0                                           ; Jr. Trainer ♀ 14
	db 28, GOLDEEN, POLIWAG, HORSEA, 0                                                    ; Jr. Trainer ♀ 15
; Route 20
	db 31, GOLDEEN, SEAKING, 0                                                            ; Jr. Trainer ♀ 16
; Rock Tunnel 1F
	db 22, BELLSPROUT, CLEFAIRY, 0                                                        ; Jr. Trainer ♀ 17
	db 20, MEOWTH, ODDISH, PIDGEY, NIDORAN_F, 0                                           ; Jr. Trainer ♀ 18      ; Nidoran♀ added by G-Dubs
	db 19, PIDGEY, RATTATA, RATTATA, BELLSPROUT, NIDORAN_F, 0                             ; Jr. Trainer ♀ 19      ; Nidoran♀ added by G-Dubs
; Route 15
	db 28, GLOOM, ODDISH, ODDISH, 0                                                       ; Jr. Trainer ♀ 20
	db 29, PIDGEY, PIDGEOTTO, 0                                                           ; Jr. Trainer ♀ 21
	db 33, CLEFAIRY, 0                                                                    ; Jr. Trainer ♀ 22
	db 29, BELLSPROUT, ODDISH, TANGELA, 0                                                 ; Jr. Trainer ♀ 23 
; Route 20 (Again) 
	db 30, TENTACOOL, HORSEA, SEEL, 0                                                     ; Jr. Trainer ♀ 24      ; Added to the Route 20 section not in order due to poor coding
; Route 6 (Again)
	db 20, CUBONE, 0                                                                      ; Jr. Trainer ♀ 25      ; Giselle from the anime, exclusive to Yellow (Poor coding)

PokemaniacData:
; Route 10
	db 30, RHYHORN, LICKITUNG, 0                                                          ; Pokémaniac 1
	db 20, CUBONE, SLOWPOKE, NIDORAN_M, 0                                                 ; Pokémaniac 2          ; Nidoran♂ added by G-Dubs
; Rock Tunnel B1F
	db 20, SLOWPOKE, SLOWPOKE, SLOWPOKE, 0                                                ; Pokémaniac 3
	db 22, CHARMANDER, CUBONE, NIDORINO, 0                                                ; Pokémaniac 4          ; Nidorino added by G-Dubs
	db 25, SLOWPOKE, CHARMELEON, 0                                                        ; Pokémaniac 5          ; Charmeleon added by G-Dubs
; Victory Road 2F
	db 45, CHARIZARD, LAPRAS, LICKITUNG, 0                                                ; Pokémaniac 6          ; Level changed to 45, and Charmeleon changed to Charizard by G-Dubs
; Rock Tunnel 1F
	db 23, CUBONE, SLOWPOKE, 0                                                            ; Pokémaniac 7

SuperNerdData:
; Mt. Moon 1F
	db 11, MAGNEMITE, VOLTORB, 0			; Super Nerd Team 1
; Mt. Moon B2F
	db 12, GRIMER, VOLTORB, KOFFING, 0	; Super Nerd Team 2
; Route 8
	db 20, VOLTORB, KOFFING, VOLTORB, MAGNEMITE, 0	; Super Nerd Team 3
	db 22, GRIMER, MUK, GRIMER, 0			; Super Nerd Team 4
	db 26, KOFFING, 0						; Super Nerd Team 5
; Unused
	db 22, KOFFING, MAGNEMITE, WEEZING, 0	; Super Nerd Team 6
	db 20, MAGNEMITE, MAGNEMITE, KOFFING, MAGNEMITE, 0	; Super Nerd Team 7
	db 24, MAGNEMITE, VOLTORB, 0			; Super Nerd Team 8
; Cinnabar Gym
	db 36, VULPIX, VULPIX, NINETALES, 0	; Super Nerd Team 9
	db 34, PONYTA, CHARMANDER, VULPIX, GROWLITHE, 0	; Super Nerd Team 10
	db 41, RAPIDASH, 0					; Super Nerd Team 11
	db 37, GROWLITHE, VULPIX, 0			; Super Nerd Team 12

HikerData:
; Mt. Moon 1F
	db 10, GEODUDE, GEODUDE, ONIX, 0		; Hiker Team 1
; Route 25
	db 15, MACHOP, GEODUDE, 0			; Hiker Team 2
	db 13, GEODUDE, GEODUDE, MACHOP, GEODUDE, 0	; Hiker Team 3
	db 17, ONIX, 0						; Hiker Team 4
; Route 9
	db 21, GEODUDE, ONIX, 0				; Hiker Team 5
	db 20, GEODUDE, MACHOP, GEODUDE, 0	; Hiker Team 6
; Route 10
	db 21, GEODUDE, ONIX, 0				; Hiker Team 7
	db 19, ONIX, GRAVELER, 0			; Hiker Team 8
; Rock Tunnel B1F
	db 21, GEODUDE, GEODUDE, GRAVELER, 0	; Hiker Team 9
	db 25, GEODUDE, 0					; Hiker Team 10
; Route 9/Rock Tunnel B1F
	db 20, MACHOP, ONIX, 0				; Hiker Team 11
; Rock Tunnel 1F
	db 19, GEODUDE, MACHOP, GEODUDE, GEODUDE, 0	; Hiker Team 12
	db 20, ONIX, ONIX, GEODUDE, 0		; Hiker Team 13
	db 21, GEODUDE, GRAVELER, 0			; Hiker Team 14

BikerData:
; Route 13
	db 28, KOFFING, KOFFING, KOFFING, 0			; Biker Team 1
; Route 14
	db 29, KOFFING, GRIMER, 0					; Biker Team 2
; Route 15
	db 25, KOFFING, KOFFING, WEEZING, KOFFING, GRIMER, 0	; Biker Team 3
	db 28, KOFFING, GRIMER, WEEZING, 0				; Biker Team 4
; Route 16
	db 29, GRIMER, KOFFING, 0					; Biker Team 5
	db 33, WEEZING, 0							; Biker Team 6
	db 26, GRIMER, GRIMER, GRIMER, GRIMER, 0		; Biker Team 7
; Route 17
	db 28, WEEZING, KOFFING, WEEZING, 0			; Biker Team 8
	db 33, MUK, 0								; Biker Team 9
	db 29, VOLTORB, VOLTORB, 0					; Biker Team 10
	db 29, WEEZING, MUK, 0						; Biker Team 11
	db 25, KOFFING, WEEZING, KOFFING, KOFFING, WEEZING, 0	; Biker Team 12
; Route 14
	db 26, KOFFING, KOFFING, GRIMER, KOFFING, 0		; Biker Team 13
	db 28, GRIMER, GRIMER, KOFFING, 0				; Biker Team 14
	db 29, KOFFING, MUK, 0						; Biker Team 15

BurglarData:
; Unused
	db 29, GROWLITHE, VULPIX, 0			; Burglar Team 1
	db 33, GROWLITHE, 0					; Burglar Team 2
	db 28, VULPIX, CHARMANDER, PONYTA, 0			; Burglar Team 3
; Cinnabar Gym
	db 36, GROWLITHE, VULPIX, NINETALES, 0	; Burglar Team 4
	db 41, PONYTA, 0						; Burglar Team 5
	db 37, VULPIX, GROWLITHE, 0			; Burglar Team 6
; Mansion 2F
	db 34, CHARMANDER, CHARMELEON, 0		; Burglar Team 7
; Mansion 3F
	db 38, NINETALES, 0					; Burglar Team 8
; Mansion B1F
	db 34, GROWLITHE, PONYTA, 0			; Burglar Team 9

EngineerData:
; Unused
	db 21, VOLTORB, MAGNEMITE, 0			                                      ; Engineer 1            ; (Unused)
; Route 11
	db 21, MAGNEMITE, 0                                                           ; Engineer 2
	db 18, MAGNEMITE, MAGNEMITE, MAGNETON, 0                                      ; Engineer 3

UnusedJugglerData:
; none

FisherData:
; SS Anne 2F Rooms
	db 17, GOLDEEN, TENTACOOL, GOLDEEN, 0	; Fisher Team 1
; SS Anne B1F Rooms
	db 17, TENTACOOL, STARYU, SHELLDER, 0	; Fisher Team 2
; Route 12
	db 22, GOLDEEN, POLIWAG, GOLDEEN, 0	; Fisher Team 3
	db 24, TENTACOOL, GOLDEEN, 0			; Fisher Team 4
	db 27, GOLDEEN, 0					; Fisher Team 5
	db 21, POLIWAG, SHELLDER, GOLDEEN, HORSEA, 0	; Fisher Team 6
; Route 21
	db 28, SEAKING, GOLDEEN, SEAKING, SEAKING, 0	; Fisher Team 7
	db 31, SHELLDER, CLOYSTER, 0			; Fisher Team 8
	db 27, MAGIKARP, MAGIKARP, MAGIKARP, MAGIKARP, MAGIKARP, MAGIKARP, 0	; Fisher Team 9
	db 33, SEAKING, GOLDEEN, 0			; Fisher Team 10
; Route 12
	db 24, MAGIKARP, MAGIKARP, 0			; Fisher Team 11

SwimmerData:
; Cerulean Gym
	db 16, HORSEA, SHELLDER, 0			; Swimmer Team 1
; Route 19
	db 30, TENTACOOL, SHELLDER, 0			; Swimmer Team 2
	db 29, GOLDEEN, HORSEA, STARYU, 0		; Swimmer Team 3
	db 30, POLIWAG, POLIWHIRL, 0			; Swimmer Team 4
	db 27, HORSEA, TENTACOOL, TENTACOOL, GOLDEEN, 0	; Swimmer Team 5
	db 29, GOLDEEN, SHELLDER, SEAKING, 0	; Swimmer Team 6
	db 30, HORSEA, HORSEA, 0				; Swimmer Team 7
	db 27, TENTACOOL, TENTACOOL, STARYU, HORSEA, TENTACRUEL, 0	; Swimmer Team 8
; Route 20
	db 31, SHELLDER, CLOYSTER, 0			; Swimmer Team 9
	db 35, STARYU, 0						; Swimmer Team 10
	db 28, HORSEA, HORSEA, SEADRA, HORSEA, 0	; Swimmer Team 11
; Route 21
	db 33, SEADRA, TENTACRUEL, 0			; Swimmer Team 12
	db 37, STARMIE, 0						; Swimmer Team 13
	db 33, STARYU, WARTORTLE, 0			; Swimmer Team 14
	db 32, POLIWHIRL, TENTACOOL, SEADRA, 0	; Swimmer Team 15

CueBallData:
; Route 16
	db 28, MACHOP, MANKEY, MACHOP, 0		; Cue Ball Team 1
	db 29, MANKEY, MACHOP, 0				; Cue Ball Team 2
	db 33, MACHOP, 0					; Cue Ball Team 3
; Route 17
	db 29, MANKEY, PRIMEAPE, 0			; Cue Ball Team 4
	db 29, MACHOP, MACHOKE, 0				; Cue Ball Team 5
	db 33, MACHOKE, 0					; Cue Ball Team 6
	db 26, MANKEY, MANKEY, MACHOKE, MACHOP, 0	; Cue Ball Team 7
	db 29, PRIMEAPE, MACHOKE, 0			; Cue Ball Team 8
; Route 21
	db 31, TENTACOOL, TENTACOOL, TENTACRUEL, 0	; Cue Ball Team 9

GamblerData:
; Route 11
	db 18, POLIWAG, HORSEA, 0			; Gambler Team 1
	db 18, BELLSPROUT, ODDISH, 0			; Gambler Team 2
	db 18, VOLTORB, MAGNEMITE, 0			; Gambler Team 3
	db 18, GROWLITHE, VULPIX, 0			; Gambler Team 4
; Route 8
	db 22, POLIWAG, POLIWAG, POLIWHIRL, 0	; Gambler Team 5
; Unused
	db 22, ONIX, GEODUDE, GRAVELER, 0	; Gambler Team 6
; Route 8
	db 24, GROWLITHE, VULPIX, 0			; Gambler Team 7

BeautyData:
; Celadon Gym
	db 21, ODDISH, BELLSPROUT, ODDISH, BELLSPROUT, 0	; Beauty Team 1
	db 24, BELLSPROUT, BELLSPROUT, 0		; Beauty Team 2
	db 26, EXEGGCUTE, 0					; Beauty Team 3
; Route 13
	db 27, RATTATA, VULPIX, RATTATA, 0	; Beauty Team 4
	db 29, CLEFAIRY, MEOWTH, 0			; Beauty Team 5
; Route 20
	db 35, SEAKING, 0					; Beauty Team 6
	db 30, SHELLDER, SHELLDER, CLOYSTER, 0	; Beauty Team 7
	db 31, POLIWAG, SEAKING, 0			; Beauty Team 8
; Route 15
	db 29, PIDGEOTTO, WIGGLYTUFF, 0		; Beauty Team 9
	db 29, BULBASAUR, IVYSAUR, 0			; Beauty Team 10
; Unused
	db 33, WEEPINBELL, BELLSPROUT, WEEPINBELL, 0	; Beauty Team 11
; Route 19
	db 27, POLIWAG, GOLDEEN, SEAKING, GOLDEEN, POLIWAG, 0	; Beauty Team 12
	db 30, GOLDEEN, SEAKING, 0			; Beauty Team 13
	db 29, STARYU, STARYU, STARYU, 0		; Beauty Team 14
; Route 20
	db 30, SEADRA, HORSEA, SEADRA, 0		; Beauty Team 15

PsychicData:
; Saffron Gym
	db 31, KADABRA, SLOWPOKE, MR_MIME, KADABRA, 0                                 ; Psychic 1
	db 34, MR_MIME, KADABRA, 0                                                    ; Psychic 2
	db 33, SLOWPOKE, SLOWPOKE, SLOWBRO, 0                                         ; Psychic 3
	db 38, SLOWBRO, 0                                                             ; Psychic 4

RockerData:
; Vermilion Gym
	db 20, VOLTORB, VOLTORB, MAGNEMITE, VOLTORB, 0                                ; Rocker 1               ; Magnemite from Red/Blue added by G-Dubs
; Route 12
	db 29, VOLTORB, ELECTRODE, 0                                                  ; Rocker 2

JugglerData:
; Silph Co. 5F
	db 29, KADABRA, MR_MIME, 0			; Juggler Team 1
; Victory Road 2F
	db 41, DROWZEE, HYPNO, KADABRA, KADABRA, 0	; Juggler Team 2
; Fuchsia Gym
	db 31, DROWZEE, DROWZEE, KADABRA, DROWZEE, 0	; Juggler Team 3
	db 34, DROWZEE, HYPNO, 0				; Juggler Team 4
; Victory Road 2F
	db 48, MR_MIME, 0					; Juggler Team 5
; Unused
	db 33, HYPNO, 0					; Juggler Team 6
; Fuchsia Gym
	db 38, HYPNO, 0					; Juggler Team 7
	db 34, DROWZEE, KADABRA, 0			; Juggler Team 8

TamerData:
; Fuchsia Gym
	db 34, SANDSLASH, ARBOK, 0			; Tamer Team 1
	db 33, ARBOK, SANDSLASH, ARBOK, 0	; Tamer Team 2
; Viridian Gym
	db 43, RHYHORN, 0					; Tamer Team 3
	db 39, ARBOK, TAUROS, 0				; Tamer Team 4
; Victory Road 2F
	db 44, PERSIAN, GOLDUCK, 0			; Tamer Team 5
; Unused
	db 42, RHYHORN, PRIMEAPE, ARBOK, TAUROS, 0	; Tamer Team 6

BirdKeeperData:
; Route 13
	db 29, PIDGEY, PIDGEOTTO, 0			; Bird Keeper Team 1
	db 25, SPEAROW, PIDGEY, PIDGEY, SPEAROW, SPEAROW, 0	; Bird Keeper Team 2
	db 26, PIDGEY, PIDGEOTTO, SPEAROW, FEAROW, 0	; Bird Keeper Team 3
; Route 14
	db 33, FARFETCHD, 0				; Bird Keeper Team 4
	db 29, SPEAROW, FEAROW, 0			; Bird Keeper Team 5
; Route 15
	db 26, PIDGEOTTO, FARFETCHD, DODUO, PIDGEY, 0	; Bird Keeper Team 6
	db 28, DODRIO, DODUO, DODUO, 0		; Bird Keeper Team 7
; Route 18
	db 29, SPEAROW, FEAROW, 0			; Bird Keeper Team 8
	db 34, DODRIO, 0					; Bird Keeper Team 9
	db 26, SPEAROW, SPEAROW, FEAROW, SPEAROW, 0	; Bird Keeper Team 10
; Route 20
	db 30, FEAROW, FEAROW, PIDGEOTTO, 0	; Bird Keeper Team 11
; Unused
	db 39, PIDGEOTTO, PIDGEOTTO, PIDGEY, PIDGEOTTO, 0	; Bird Keeper Team 12
	db 42, FARFETCHD, FEAROW, 0			; Bird Keeper Team 13
; Route 14
	db 28, PIDGEY, DODUO, PIDGEOTTO, 0	; Bird Keeper Team 14
	db 26, PIDGEY, SPEAROW, PIDGEY, FEAROW, 0	; Bird Keeper Team 15
	db 29, PIDGEOTTO, FEAROW, 0			; Bird Keeper Team 16
	db 28, SPEAROW, DODUO, FEAROW, 0		; Bird Keeper Team 17

BlackbeltData:
; Fighting Dojo
	db 37, HITMONLEE, HITMONCHAN, 0		; Blackbelt Team 1
	db 31, MANKEY, MANKEY, PRIMEAPE, 0	; Blackbelt Team 2
	db 32, MACHOP, MACHOKE, 0			; Blackbelt Team 3
	db 36, PRIMEAPE, 0					; Blackbelt Team 4
	db 31, MACHOP, MANKEY, PRIMEAPE, 0	; Blackbelt Team 5
; Viridian Gym
	db 40, MACHOP, MACHOKE, 0			; Blackbelt Team 6
	db 43, MACHOKE, 0					; Blackbelt Team 7
	db 38, MACHOKE, MACHOP, MACHOKE, 0	; Blackbelt Team 8
; Victory Road 2F
	db 43, MACHOKE, MACHOP, MACHOKE, 0	; Blackbelt Team 9

Rival1Data:
; Oak's Lab
	db 5, EEVEE, 0						; Rival 1 Team 1
; Route 22
    db $FF, 9, PIDGEY, 8, RATTATA, 8, SPEAROW, 9, EEVEE, 0
   ;db $FF, 9, SPEAROW, 8, EEVEE, 0		; Rival 1 Team 2
; Cerulean City
    db $FF, 18, PIDGEOTTO, 15, RATTATA, 18, SPEAROW, 15, ABRA, 15, SANDSHREW, 17, EEVEE, 0
   ;db $FF, 18, SPEAROW, 15, SANDSHREW, 15, RATTATA, 17, EEVEE, 0	; Rival 1 Team 3

ProfOakData:
; Unused
	db $FF, 66, TAUROS, 67, EXEGGUTOR, 68, ARCANINE, 69, BLASTOISE, 70, GYARADOS, 0	; Prof. Oak Team 1
	db $FF, 66, TAUROS, 67, EXEGGUTOR, 68, ARCANINE, 69, VENUSAUR, 70, GYARADOS, 0	; Prof. Oak Team 2
	db $FF, 66, TAUROS, 67, EXEGGUTOR, 68, ARCANINE, 69, CHARIZARD, 70, GYARADOS, 0	; Prof. Oak Team 3

ChiefData:
; none

ScientistData:
; Unused
	db 34, KOFFING, VOLTORB, 0			; Scientist Team 1
; Silph Co. 2F
	db 26, GRIMER, WEEZING, KOFFING, WEEZING, 0	; Scientist Team 2
	db 28, MAGNEMITE, VOLTORB, MAGNETON, 0	; Scientist Team 3
; Silph Co. 3F/Mansion 1F
	db 29, ELECTRODE, WEEZING, 0			; Scientist Team 4
; Silph Co. 4F
	db 33, ELECTRODE, 0					; Scientist Team 5
; Silph Co. 5F
	db 26, MAGNETON, KOFFING, WEEZING, MAGNEMITE, 0	; Scientist Team 6
; Silph Co. 6F
	db 25, VOLTORB, KOFFING, MAGNETON, MAGNEMITE, KOFFING, 0	; Scientist Team 7
; Silph Co. 7F
	db 29, ELECTRODE, MUK, 0				; Scientist Team 8
; Silph Co. 8F
	db 29, GRIMER, ELECTRODE, 0			; Scientist Team 9
; Silph Co. 9F
	db 28, VOLTORB, KOFFING, MAGNETON, 0	; Scientist Team 10
; Silph Co. 10F
	db 29, MAGNEMITE, KOFFING, 0			; Scientist Team 11
; Mansion 3F
	db 33, MAGNEMITE, MAGNETON, VOLTORB, 0	; Scientist Team 12
; Mansion B1F
	db 34, MAGNEMITE, ELECTRODE, 0		; Scientist Team 13

GiovanniData:
; Rocket Hideout B4F
	db $FF, 25, ONIX, 24, RHYHORN, 29, PERSIAN, 0
; Silph Co. 11F
	db $FF, 37, NIDORINO, 35, PERSIAN, 37, RHYHORN, 41, NIDOQUEEN, 0
; Viridian Gym
    db $FF, 50, DUGTRIO, 52, PINSIR, 54, PERSIAN, 56, NIDOQUEEN, 58, NIDOKING, 60, RHYDON, 0             ; Added animeesque Pokémon	
  ; db $FF, 50, DUGTRIO, 53, PERSIAN, 53, NIDOQUEEN, 55, NIDOKING, 55, RHYDON, 0

RocketData:
; Mt. Moon B2F
	db 13, RATTATA, ZUBAT, 0				; Rocket Team 1
	db 11, SANDSHREW, RATTATA, ZUBAT, 0		; Rocket Team 2
	db 12, ZUBAT, EKANS, 0				; Rocket Team 3
; Unused
	db 16, RATICATE, 0					; Rocket Team 4
; Cerulean City
	db 17, MACHOP, DROWZEE, 0				; Rocket Team 5
; Route 24
	db 15, EKANS, ZUBAT, 0				; Rocket Team 6
; Game Corner
	db 20, RATICATE, ZUBAT, 0				; Rocket Team 7
; Rocket Hideout B1F
	db 21, DROWZEE, MACHOP, 0				; Rocket Team 8
	db 21, RATICATE, RATICATE, 0			; Rocket Team 9
	db 20, GRIMER, KOFFING, KOFFING, 0		; Rocket Team 10
	db 19, RATTATA, RATICATE, RATICATE, RATTATA, 0	; Rocket Team 11
	db 22, GRIMER, KOFFING, 0				; Rocket Team 12
; Rocket Hideout B2F
	db 17, ZUBAT, KOFFING, GRIMER, ZUBAT, RATICATE, 0	; Rocket Team 13
; Rocket Hideout B3F
	db 20, RATTATA, RATICATE, DROWZEE, 0		; Rocket Team 14
	db 21, MACHOP, MACHOP, 0				; Rocket Team 15
; Unused
	db 23, SANDSHREW, EKANS, SANDSLASH, 0		; Rocket Team 16
	db 23, EKANS, SANDSHREW, ARBOK, 0		; Rocket Team 17
; Rocket Hideout B4F
	db 21, KOFFING, ZUBAT, 0				; Rocket Team 18
; Unused
	db 25, ZUBAT, ZUBAT, GOLBAT, 0			; Rocket Team 19
	db 26, KOFFING, DROWZEE, 0				; Rocket Team 20
	db 23, ZUBAT, RATTATA, RATICATE, ZUBAT, 0	; Rocket Team 21
	db 26, DROWZEE, KOFFING, 0				; Rocket Team 22
; Silph Co. 2F
	db 29, CUBONE, ZUBAT, 0				; Rocket Team 23
	db 25, GOLBAT, ZUBAT, ZUBAT, RATICATE, ZUBAT, 0	; Rocket Team 24
; Silph Co. 3F
	db 28, RATICATE, HYPNO, RATICATE, 0		; Rocket Team 25
; Silph Co. 4F
	db 29, MACHOP, DROWZEE, 0				; Rocket Team 26
	db 28, EKANS, ZUBAT, CUBONE, 0			; Rocket Team 27
; Silph Co. 5F
	db 33, ARBOK, 0					; Rocket Team 28
	db 33, HYPNO, 0					; Rocket Team 29
; Silph Co. 6F
	db 29, MACHOP, MACHOKE, 0				; Rocket Team 30
	db 28, ZUBAT, ZUBAT, GOLBAT, 0			; Rocket Team 31
; Silph Co. 7F
	db 26, RATICATE, ARBOK, KOFFING, GOLBAT, 0	; Rocket Team 32
	db 29, CUBONE, CUBONE, 0				; Rocket Team 33
	db 29, SANDSHREW, SANDSLASH, 0			; Rocket Team 34
; Silph Co. 8F
	db 26, RATICATE, ZUBAT, GOLBAT, RATTATA, 0	; Rocket Team 35
	db 28, WEEZING, GOLBAT, KOFFING, 0		; Rocket Team 36
; Silph Co. 9F
	db 28, DROWZEE, GRIMER, MACHOP, 0		; Rocket Team 37
	db 28, GOLBAT, DROWZEE, HYPNO, 0		; Rocket Team 38
; Silph Co. 10F
	db 33, MACHOKE, 0					; Rocket Team 39
; Silph Co. 11F
	db 25, RATTATA, RATTATA, ZUBAT, RATTATA, EKANS, 0	; Rocket Team 40
; Unused
	db 32, CUBONE, DROWZEE, MAROWAK, 0       ; Rocket Team 41
; Jessie & James
	db 14, EKANS, MEOWTH, KOFFING, 0 ; Mt. Moon B2F - Rocket Team 42
	db 25, KOFFING, MEOWTH, EKANS, 0 ; Rocket Hideout B4F - Rocket Team 43
	db 27, MEOWTH, ARBOK, WEEZING, 0 ; Pokémon Tower 7F - Rocket Team 44
	db 31, WEEZING, ARBOK, MEOWTH, 0 ; Silph Co. 11F - Rocket Team 45
; Unused
	db 16, KOFFING, 0                ; Rocket Team 46
	db 27, KOFFING, 0                ; Rocket Team 47
	db 29, WEEZING, 0                ; Rocket Team 48
	db 33, WEEZING, 0                ; Rocket Team 49

CooltrainerMData:
; Viridian Gym
	db 39, NIDORINO, NIDOKING, 0				; CooltrainerM Team 1
; Victory Road 3F
	db 43, EXEGGUTOR, CLOYSTER, ARCANINE, 0		; CooltrainerM Team 2
	db 43, KINGLER, TENTACRUEL, BLASTOISE, 0		; CooltrainerM Team 3
; Unused
	db 45, KINGLER, STARMIE, 0				; CooltrainerM Team 4
; Victory Road 1F
	db 42, IVYSAUR, WARTORTLE, CHARMELEON, CHARIZARD, 0	; CooltrainerM Team 5
; Unused
	db 44, IVYSAUR, WARTORTLE, CHARMELEON, 0		; CooltrainerM Team 6
	db 49, NIDOKING, 0					; CooltrainerM Team 7
	db 44, KINGLER, CLOYSTER, 0				; CooltrainerM Team 8
; Viridian Gym
	db 39, SANDSLASH, DUGTRIO, 0				; CooltrainerM Team 9
	db 43, RHYHORN, 0					; CooltrainerM Team 10

CooltrainerFData:
; Celadon Gym
	db 24, WEEPINBELL, GLOOM, IVYSAUR, 0		; CooltrainerF Team 1
; Victory Road 3F
	db 43, BELLSPROUT, WEEPINBELL, VICTREEBEL, 0	; CooltrainerF Team 2
	db 43, PARASECT, DEWGONG, CHANSEY, 0		; CooltrainerF Team 3
; Unused
	db 46, VILEPLUME, BUTTERFREE, 0			; CooltrainerF Team 4
; Victory Road 1F
	db 44, PERSIAN, NINETALES, 0			; CooltrainerF Team 5
; Unused
	db 45, IVYSAUR, VENUSAUR, 0			; CooltrainerF Team 6
	db 45, NIDORINA, NIDOQUEEN, 0			; CooltrainerF Team 7
	db 43, PERSIAN, NINETALES, RAICHU, 0		; CooltrainerF Team 8

BrunoData:
    db $FF, 57, ONIX, 56, PRIMEAPE, 55, HITMONCHAN, 55, HITMONLEE, 58, POLIWRATH, 60, MACHAMP, 0          ; Changed Bruno's team
  ; db $FF, 53, ONIX, 55, HITMONCHAN, 55, HITMONLEE, 56, ONIX, 58, MACHAMP, 0

BrockData:
; Badge Match
	db $FF, 12, GEODUDE, 11, KABUTO, 10, ZUBAT, 13, VULPIX, 11, OMANYTE, 14, ONIX, 0                      ; Added animeesque Pokémon	
  ; db $FF, 10, GEODUDE, 12, ONIX, 0

MistyData:
; Badge Match
    db $FF, 19, HORSEA, 19, SEEL, 20, STARYU, 20, GOLDEEN, 21, PSYDUCK , 21, STARMIE, 0                   ; Added animeesque Pokémon	
  ; db $FF, 18, STARYU, 21, STARMIE, 0

LtSurgeData:
; Badge Match
    db $FF, 24, RATICATE, 26, ELECTRODE, 26, MAGNETON, 28, FEAROW, 28, ELECTABUZZ, 30, RAICHU, 0          ; Added animeesque Pokémon	
  ; db $FF, 28, RAICHU, 0

ErikaData:
; Badge Match
	db $FF, 34, VICTREEBEL, 33, PARASECT, 32, BUTTERFREE, 33, TANGELA, 33, EXEGGUTOR, 34, VILEPLUME, 0    ; Added animeesque Pokémon	
  ; db $FF, 30, TANGELA, 32, WEEPINBELL, 32, GLOOM, 0

KogaData:
; Badge Match
    db $FF, 45, VENONAT, 46, GOLBAT, 47, SCYTHER, 48, ARBOK, 49, WEEZING, 50, VENOMOTH, 0                 ; Added animeesque Pokémon	
  ; db $FF, 44, VENONAT, 46, VENONAT, 48, VENONAT, 50, VENOMOTH, 0

BlaineData:
; Badge Match
    db $FF, 48, NINETALES, 48, TAUROS, 50, RAPIDASH, 52, CHARIZARD, 54, ARCANINE, 58, MAGMAR, 0           ; Added animeesque Pokémon  ; Charizard will be Charizard_Y
  ; db $FF, 48, NINETALES, 50, RAPIDASH, 54, ARCANINE, 0

SabrinaData:
; Badge Match
    db $FF, 44, GOLDUCK, 46, MR_MIME, 46, HAUNTER, 48, HYPNO, 48, SLOWBRO, 50, ALAKAZAM, 0               ; Added animeesque Pokémon	
  ; db $FF, 50, ABRA, 50, KADABRA, 50, ALAKAZAM, 0

GentlemanData:
; SS Anne 1F Rooms
	db 18, GROWLITHE, GROWLITHE, 0			; Gentleman Team 1
	db 19, NIDORAN_M, NIDORAN_F, 0			; Gentleman Team 2
; SS Anne 2F Rooms/Vermilion Gym
	db 22, VOLTORB, MAGNEMITE, 0			; Gentleman Team 3
; Unused
	db 48, PRIMEAPE, 0				        ; Gentleman Team 4
; SS Anne 2F Rooms
	db 17, GROWLITHE, PONYTA, 0			    ; Gentleman Team 5

Rival2Data:
; SS Anne 2F
	db $FF, 19, PIDGEOTTO, 16, RATICATE, 19, SPEAROW, 18, KADABRA, 19, SANDSHREW, 22, EEVEE, 0	; Rival2 Team 1
; Pokémon Tower 2F
	db $FF, 28, FEAROW, 26, SANDSLASH, 26, KADABRA, 25, GYARADOS, 25, VULPIX, 30, EEVEE, 0      ; Rival2 Team 2A
	db $FF, 28, FEAROW, 26, SANDSLASH, 26, KADABRA, 25, MAGNEMITE, 25, GYARADOS, 30, EEVEE, 0   ; Rival2 Team 2B
	db $FF, 28, FEAROW, 26, SANDSLASH, 26, KADABRA, 25, VULPIX, 22, MAGNEMITE, 30, EEVEE, 0	    ; Rival2 Team 2C
; Silph Co. 7F
	db $FF, 38, SANDSLASH, 37, PIDGEOT, 35, NINETALES, 36, CLOYSTER, 37, KADABRA, 40, JOLTEON, 0    ; Rival 2 Team 3A
	db $FF, 38, SANDSLASH, 37, PIDGEOT, 35, CLOYSTER, 36, MAGNETON, 37, KADABRA, 40, FLAREON, 0     ; Rival 2 Team 3B
	db $FF, 38, SANDSLASH, 37, PIDGEOT, 35, MAGNETON, 36, NINETALES, 37, KADABRA, 40, VAPOREON, 0	; Rival 2 Team 3C
; Route 22
	db $FF, 47, SANDSLASH, 45, EXEGGCUTE, 45, NINETALES, 47, CLOYSTER, 50, KADABRA, 53, JOLTEON, 0   ; Rival2 Team 4A
	db $FF, 47, SANDSLASH, 45, EXEGGCUTE, 45, CLOYSTER, 47, MAGNETON, 50, KADABRA, 53, FLAREON, 0    ; Rival2 Team 4B
	db $FF, 47, SANDSLASH, 45, EXEGGCUTE, 45, MAGNETON, 47, NINETALES, 50, KADABRA, 53, VAPOREON, 0  ; Rival2 Team 4C

Rival3Data:
; Champion's Room
	db $FF, 61, SANDSLASH, 59, ALAKAZAM, 61, EXEGGUTOR, 61, CLOYSTER, 63, NINETALES, 65, JOLTEON, 0   ; Rival3 Team A
	db $FF, 61, SANDSLASH, 59, ALAKAZAM, 61, EXEGGUTOR, 61, MAGNETON, 63, CLOYSTER, 65, FLAREON, 0    ; Rival3 Team B
	db $FF, 61, SANDSLASH, 59, ALAKAZAM, 61, EXEGGUTOR, 61, NINETALES, 63, MAGNETON, 65, VAPOREON, 0  ; Rival3 Team C

LoreleiData:
    db $FF, 54, DEWGONG, 53, CLOYSTER, 54, SLOWBRO, 55, ARTICUNO, 56, JYNX, 58, LAPRAS, 0	          ; Changed Lorelei's team
  ; db $FF, 54, DEWGONG, 53, CLOYSTER, 54, SLOWBRO, 56, JYNX, 56, LAPRAS, 0

ChannelerData:
; Unused
	db 22, GASTLY, 0                 ; Channeler Team 1
	db 24, GASTLY, 0                 ; Channeler Team 2
	db 23, GASTLY, GASTLY, 0         ; Channeler Team 3
	db 24, GASTLY, 0                 ; Channeler Team 4
; Pokémon Tower 3F
	db 23, GASTLY, 0                 ; Channeler Team 5
	db 24, GASTLY, 0                 ; Channeler Team 6
; Unused
	db 24, HAUNTER, 0                ; Channeler Team 7
; Pokémon Tower 3F
	db 22, GASTLY, 0                 ; Channeler Team 8
; Pokémon Tower 4F
	db 24, GASTLY, 0 	             ; Channeler Team 9
	db 23, GASTLY, GASTLY, 0         ; Channeler Team 10
; Unused
	db 24, GASTLY, 0                 ; Channeler Team 11
; Pokémon Tower 4F
	db 22, GASTLY, 0                 ; Channeler Team 12
; Unused
	db 24, GASTLY, 0                 ; Channeler Team 13
; Pokémon Tower 5F
	db 23, HAUNTER, 0                ; Channeler Team 14
; Unused
	db 24, GASTLY, 0                 ; Channeler Team 15
; Pokémon Tower 5F
	db 22, GASTLY, 0                 ; Channeler Team 16
	db 24, GASTLY, 0                 ; Channeler Team 17
	db 22, HAUNTER, 0                ; Channeler Team 18
; Pokémon Tower 6F
	db 22, GASTLY, GASTLY, GASTLY, 0 ; Channeler Team 19
	db 24, GASTLY, 0                 ; Channeler Team 20
	db 24, GASTLY, 0                 ; Channeler Team 21
; Saffron Gym
	db 34, GASTLY, HAUNTER, 0        ; Channeler Team 22
	db 38, HAUNTER, 0                ; Channeler Team 23
	db 33, GASTLY, GASTLY, HAUNTER, 0        ; Channeler Team 24

AgathaData:
    db $FF, 56, GENGAR, 58, MAROWAK, 56, GOLBAT, 55, HAUNTER, 60, NINETALES, 62, GENGAR, 0	             ; Changed Agatha's team 
  ; db $FF, 56, GENGAR, 56, GOLBAT, 55, HAUNTER, 58, ARBOK, 60, GENGAR, 0

LanceData:
    db $FF, 59, GYARADOS, 58, DRAGONAIR, 58, DRAGONAIR, 60, CHARIZARD, 62, AERODACTYL, 64, DRAGONITE, 0  ; Charizard will be Charizard X
  ; db $FF, 58, GYARADOS, 56, DRAGONAIR, 56, DRAGONAIR, 60, AERODACTYL, 62, DRAGONITE, 0

JessieJamesData:
	db 5,  EKANS, MEOWTH, KOFFING, 0  ; Viridian City Pokémon Center
