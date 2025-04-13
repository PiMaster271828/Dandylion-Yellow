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
	dw JessieJamesData       ; New trainer class added by Vlad
	dw PokeFanMData          ; New trainer class added by G-Dubs
	dw PokeFanFData          ; New trainer class added by G-Dubs
	dw GuitaristData         ; New trainer class added by G-Dubs
	dw SoldierData           ; New trainer class added by G-Dubs
	dw LadyData              ; New trainer class added by G-Dubs
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
	db 11, RATTATA, EKANS, 0                                                                                 ; Youngster 1
	db 14, SPEAROW, 0                                                                                        ; Youngster 2
; Mt. Moon 1F
	db 10, RATTATA, NIDORAN_M, ZUBAT, 0                                                                      ; Youngster 3            ; Second Rattata changed to Nidoran♂ by G-Dubs  
; Route 24
	db 14, RATTATA, EKANS, ZUBAT, 0                                                                          ; Youngster 4
; Route 25
	db 15, RATTATA, SPEAROW, NIDORAN_M, 0                                                                    ; Youngster 5            ; Nidoran♂ added by G-Dubs
	db 17, SLOWPOKE, 0                                                                                       ; Youngster 6
	db 14, EKANS, SANDSHREW, 0                                                                               ; Youngster 7
; SS Anne 1F Rooms    
	db 21, NIDORAN_M, 0                                                                                      ; Youngster 8
; Route 11
	db 21, EKANS, 0                                                                                          ; Youngster 9
	db 19, NIDORAN_M, SANDSHREW, ZUBAT, 0                                                                    ; Youngster 10           ; Nidoran♂ added by G-Dubs
	db 17, RATTATA, RATTATA, RATICATE, 0                                                                     ; Youngster 11
	db 18, NIDORAN_M, NIDORINO, 0                                                                            ; Youngster 12
; Viridian Forest (Previously Unused)
	db 7, PIDGEY, RATTATA, NIDORAN_M, SPEAROW, 0                                                             ; Youngster 13           ; Trainer unused in any version added by G-Dubs (Some PokéMon Changed) (Level hanged from 17 to 7)
; Route 9      
	db 24, SANDSHREW, 0                                                                                      ; Youngster 14           ; A.J. from the Anime and his OP Sandshrew
; Viridian Forest (Again)
    db $FF, 6, RATTATA, 7, PIDGEY, 6, CATERPIE, 7, NIDORAN_M, 6, WEEDLE, 9, PIDGEOTTO, 0                     ; Youngster 15           ; New Trainer added by G-Dubs

BugCatcherData:
; Viridian Forest
	db 8, CATERPIE, WEEDLE, 0                                                                                ; Bug Catcher 1          ; Weedle added by G-Dubs (Level chaned from 7 to 8 by G-Dubs)
 	db 7, METAPOD, CATERPIE, METAPOD, 0                                                                      ; Bug Catcher 2          ; Level changed from 6 to 7 by G-Dubs
	db 10, CATERPIE, WEEDLE, METAPOD, KAKUNA, BUTTERFREE, BEEDRILL, 0                                        ; Bug Catcher 3          ; Weedle added by G-Dubs (Other PokéMon suggested by Vlad)
; Route 3    
	db 11, CATERPIE, WEEDLE, CATERPIE, 0                                                                     ; Bug Catcher 4          ; Level from 10 changed to 11, for Bug Bite by G-Dubs
	db 11, WEEDLE, KAKUNA, CATERPIE, METAPOD, 0                                                              ; Bug Catcher 5          ; Level from 10 changed to 11, for Bug Bite by G-Dubs
	db 11, CATERPIE, METAPOD, 0                                                                              ; Bug Catcher 6          ; Only Bug Catcher unchanged by G-Dubs
; Mt. Moon 1F
	db 11, WEEDLE, KAKUNA, CATERPIE, 0                                                                       ; Bug Catcher 7          ; Caterpie added by G-Dubs
	db 11, CATERPIE, METAPOD, WEEDLE, 0                                                                      ; Bug Catcher 8          ; 2nd Caterpie changed to Weedle, & level changed from 10 to 11 for Bug Bite by G-Dubs
; Route 24
	db 15, CATERPIE, WEEDLE, 0                                                                               ; Bug Catcher 9          ; Level changed from 14 to 15 by G-Dubs 
; Route 6
	db 20, WEEDLE, CATERPIE, WEEDLE, 0                                                                       ; Bug Catcher 10         ; Level changed from 18 to 20 by G-Dubs
	db 20, BUTTERFREE, 0                                                                                     ; Bug Catcher 11         ; Level changed from 16 to 18 by G-Dubs
; Route 4 (Previously Unused)
	db 18, PARAS, WEEDLE, METAPOD, CATERPIE, KAKUNA, VENONAT, 0                                              ; Bug Catcher 12         ; Trainer unused in any version added by G-Dubs (PokéMon added by G-Dubs)
; Route 9
	db 20, BEEDRILL, BEEDRILL, 0                                                                             ; Bug Catcher 13         ; Level changed from 19 to 20 by G-Dubs
	db 25, CATERPIE, WEEDLE, VENONAT, 0                                                                      ; Bug Catcher 14         ; Level changed from 20 to 25 by G-Dubs
; Viridian Forest (Again)
	db 8, CATERPIE, METAPOD, 0                                                                               ; Bug Catcher 15         ; Yellow exclusive Bug Catcher in Viridian Forest (Poor coding)
	db 7, KAKUNA, WEEDLE, KAKUNA, 0                                                                          ; Bug Catcher 16         ; Trainer from Red/Blue added by G-Dubs
	db 9, WEEDLE, 0                                                                                          ; Bug Catcher 17         ; Trainer from Red/Blue added by G-Dubs
	db 9, CATERPIE, 0                                                                                        ; Bug Catcher 18         ; Trainer from Red/Blue added by G-Dubs
; Route 6 (Again)
    db 20, CATERPIE, VENONAT, PARAS, WEEDLE, 0                                                               ; Bug Catcher 19         ; New trainer added by G-Dubs
    db 25, METAPOD, KAKUNA, 0                                                                                ; Bug Catcher 20         ; New trainer added by G-Dubs
; Route 11
    db 18, BUTTERFREE, PARASECT, VENOMOTH, BEEDRILL, 0                                                       ; Bug Catcher 21         ; New trainer added by G-Dubs

/*
; Route 13
    db 30, BUTTERFREE, BEEDRILL, VENOMOTH, 0                                                                 ; Bug Catcher 22         ; New Trainer added by G-Dubs
; Route 16
    db $FF, 34, VENONAT, 36, VENONAT, 38, VENONAT, 40, VENOMOTH, 0                                           ; Bug Catcher 23         ; New Trainer added by G-Dubs
; Safari Zone Area 1 Rest House
    db $FF, 32, PARAS, 36, PARASECT, 0                                                                       ; Bug Catcher 24         ; New Trainer added by G-Dubs
; Safari Zone Area 3 Rest House	
	db 33, SCYTHER, PINSIR, 0                                                                                ; Bug Catcher 25         ; New Trainer added by G-Dubs
; Safari Zone Area 4 Rest House
   db $FF, 32, VENONAT, 36, VENOMOTH, 0                                                                      ; Bug Catcher 26         ; New Trainer added by G-Dubs
; Victory Road  
    db 50, BUTTERFREE, PARASECT, BEEDRILL, VENOMOTH, 0                                                       ; Bug Catcher 27         ; New Trainer added by G-Dubs
*/
LassData:
; Route 3
	db 9, PIDGEY, PIDGEY, 0                                                                                  ; Lass 1
	db 10, NIDORAN_F, RATTATA, NIDORAN_M, 0                                                                  ; Lass 2                 ; Nidoran♀ added by G-Dubs
	db 14, JIGGLYPUFF, 0                                                                                     ; Lass 3
; Route 4
	db 31, PARAS, PARAS, PARASECT, 0                                                                         ; Lass 4
; Mt. Moon 1F
	db 11, ODDISH, BELLSPROUT, 0                                                                             ; Lass 5
	db 14, CLEFAIRY, 0                                                                                       ; Lass 6
; Route 24
	db 16, NIDORAN_M, PIDGEY, NIDORAN_F, 0                                                                   ; Lass 7                 ; Nidoran♂ added by G-Dubs
	db 14, NIDORAN_M, PIDGEY, NIDORAN_F, 0                                                                   ; Lass 8                 ; Nidoran♂ added by G-Dubs
; Route 25
	db 15, NIDORAN_M, NIDORAN_F, 0                                                                           ; Lass 9
	db 13, ODDISH, PIDGEY, ODDISH, 0                                                                         ; Lass 10
; SS Anne 1F Rooms
	db 18, NIDORAN_F, PIDGEY, NIDORAN_F, 0                                                                   ; Lass 11                ; Nidoran♀ added by G-Dubs
; SS Anne 2F Rooms
	db 20, RATTATA, PIKACHU, JIGGLYPUFF, 0                                                                   ; Lass 12                ; Rattata, and Pikachu from Red/Blue added by G-Dubs
; Route 8
	db 23, NIDORAN_F, NIDORINA, 0                                                                            ; Lass 13
	db 24, MEOWTH, MEOWTH, MEOWTH, 0                                                                         ; Lass 14
	db 19, PIDGEY, RATTATA, NIDORAN_F, MEOWTH, NIDORAN_M, PIKACHU, 0                                         ; Lass 15                ; Pikachu from Red/Blue added by G-Dubs
	db 22, CLEFAIRY, CLEFAIRY, 0                                                                             ; Lass 16
; Celadon Gym
	db 23, BELLSPROUT, WEEPINBELL, 0		                                                                 ; Lass 17
	db 23, ODDISH, GLOOM, 0				                                                                     ; Lass 18
; Viridian Forest (Again)
	db 6, NIDORAN_F, NIDORAN_M, 0                                                                            ; Lass 19                ; Yellow exclusive Lass in Viridian Forest (Poor coding)
; Route 4 (Again)
    db $FF, 14, JIGGLYPUFF, 13, PARAS, 12, GEODUDE, 13, NIDORAN_F, 14, CLEFAIRY, 0                           ; Lass 20                ; New Trainer added by G-Dubs
; Route 24
    db 15, LAPRAS, 0                                                                                         ; Lass 21                ; New trainer added by G-Dubs 

SailorData:
; SS Anne Stern
	db 18, MACHOP, SHELLDER, 0                                                                               ; Sailor 1
	db 17, MACHOP, TENTACOOL, 0                                                                              ; Sailor 2
; SS Anne B1F Rooms
	db 21, SHELLDER, MACHOP, 0                                                                               ; Sailor 3               ; Machop added by G-Dubs
	db 17, HORSEA, SHELLDER, TENTACOOL, 0                                                                    ; Sailor 4
	db 18, TENTACOOL, STARYU, 0                                                                              ; Sailor 5
	db 17, HORSEA, HORSEA, HORSEA, 0                                                                         ; Sailor 6
	db 20, MACHOP, KRABBY, 0                                                                                 ; Sailor 7               ; Krabby added by G-Dubs (Party used twice)
; Vermilion Gym
	db 21, PIKACHU, MACHOP, PIKACHU, MAGNEMITE, 0                                                            ; Sailor 8               ; Pikachu from Red/Blue, and Machop with Thunderpunch added by G-Dubs
; SS Anne Stern (Again)
    db 21, MACHOP, STARYU, 0                                                                                 ; Sailor 9               ; New trainer added by G-Dubs
	db 19, MACHOP, HORSEA, 0                                                                                 ; Sailor 10              ; New trainer added by G-Dubs 

JrTrainerMData:
; Pewter Gym
	db 11, DIGLETT, SANDSHREW, 0                                                                             ; Jr. Trainer ♂ 1        ; Changed from level 9 to 11 to match Red/Blue by G-Dubs
; Route 24/Route 25
	db 14, NIDORAN_M, RATTATA, EKANS, 0                                                                      ; Jr. Trainer ♂ 2        ; Nidoran♂ added by G-Dubs
 ; Route 24
	db 18, NIDORAN_M, SANDSHREW, MANKEY, 0                                                                   ; Jr. Trainer ♂ 3        ; Nidoran♂ & Sandshrew added by G-Dubs
; Route 6
	db 22, SQUIRTLE, 0					                                                                     ; Jr. Trainer ♂ 4        ; Previously Unused (Level changed from 20 to 22 by G-Dubs)   
	db 20, SPEAROW, NIDORAN_M ,RATICATE, 0                                                                   ; Jr. Trainer ♂ 5        ; Nidoran♂ added by G-Dubs (Level changed from 16 to 20 by G-Dubs)
; Unused
	db 18, DIGLETT, DIGLETT, SANDSHREW, 0	                                                                 ; Jr. Trainer ♂ 6        ; (Unused)
	db 21, GROWLITHE, CHARMANDER, 0		                                                                     ; Jr. Trainer ♂ 7        ; (Unused)
; Route 9
	db 19, RATTATA, DIGLETT, EKANS, SANDSHREW, 0                                                             ; Jr. Trainer ♂ 8
; Route 12
	db 29, NIDORAN_M, NIDORINO, 0                                                                            ; Jr. Trainer ♂ 9
; Route 6 (Again)
	db 20, WEEPINBELL, 0                                                                                     ; Jr. Trainer ♂ 10       ; Joe from the anime, exclusive to Yellow (Level changed from 16 to 20 by G-Dubs)
; Route 3 (Again)
    db 12, DIGLETT, NIDORAN_M, RATTATA, EKANS, SANDSHREW, 0                                                  ; Jr. Trainer ♂ 11       ; New trainer added by G-Dubs
	db 15, DIGLETT, SANDSHREW, 0                                                                             ; Jr. Trainer ♂ 12       ; New trainer added by G-Dubs

JrTrainerFData:
; Cerulean Gym
	db 19, GOLDEEN, 0                                                                                        ; Jr. Trainer ♀ 1
; Route 4 (Previously Unused)
	db 16, ODDISH, BELLSPROUT, 0                                                                             ; Jr. Trainer ♀ 2        ; Trainer unused in any version added by G-Dubs
; Route 6
	db 16, PIDGEY, PIDGEY, PIDGEY, 0		                                                                 ; Jr. Trainer ♀ 3
	db 22, BULBASAUR, 0					                                                                     ; Jr. Trainer ♀ 4        ; Previously Unused (Trainer from Red & Blue added by G-Dubs)
; Route 9
	db 18, ODDISH, BELLSPROUT, ODDISH, BELLSPROUT, 0                                                         ; Jr. Trainer ♀ 5
	db 23, MEOWTH, 0                                                                                         ; Jr. Trainer ♀ 6  
; Route 10
	db 20, JIGGLYPUFF, PIKACHU, CLEFAIRY, 0                                                                  ; Jr. Trainer ♀ 7        ; Pikachu from Red/Blue added by G-Dubs 
	db 21, PIDGEY, PIDGEOTTO, 0                                                                              ; Jr. Trainer ♀ 8
; Rock Tunnel B1F
	db 21, JIGGLYPUFF, PIDGEY, MEOWTH, NIDORAN_F, 0                                                          ; Jr. Trainer ♀ 9        ; Nidoran♀ added by G-Dubs
	db 22, ODDISH, BULBASAUR, 0                                                                              ; Jr. Trainer ♀ 10     
; Celadon Gym        
	db 24, BULBASAUR, IVYSAUR, 0                                                                             ; Jr. Trainer ♀ 11
; Route 13
	db $FF, 24, PIDGEY, 24, MEOWTH, 24, RATTATA, 24, PIKACHU, 24, MEOWTH, 25, PIDGEOTTO, 0                   ; Jr. Trainer ♀ 12       ; Pikachu from Red/Blue added and Pidgey changed to Pidgeotto by G-Dubs
	db 30, POLIWAG, POLIWAG, 0                                                                               ; Jr. Trainer ♀ 13
	db 27, PIDGEY, MEOWTH, PIDGEY, PIDGEOTTO, 0                                                              ; Jr. Trainer ♀ 14
	db 28, GOLDEEN, POLIWAG, HORSEA, 0                                                                       ; Jr. Trainer ♀ 15
; Route 20
	db 31, GOLDEEN, SEAKING, 0                                                                               ; Jr. Trainer ♀ 16
; Rock Tunnel 1F
	db 22, BELLSPROUT, CLEFAIRY, 0                                                                           ; Jr. Trainer ♀ 17
	db 20, MEOWTH, ODDISH, PIDGEY, NIDORAN_F, 0                                                              ; Jr. Trainer ♀ 18       ; Nidoran♀ added by G-Dubs
	db 19, PIDGEY, RATTATA, RATTATA, BELLSPROUT, NIDORAN_F, 0                                                ; Jr. Trainer ♀ 19       ; Nidoran♀ added by G-Dubs
; Route 15
	db 28, GLOOM, ODDISH, ODDISH, 0                                                                          ; Jr. Trainer ♀ 20
	db 29, PIDGEY, PIDGEOTTO, 0                                                                              ; Jr. Trainer ♀ 21
	db 33, CLEFAIRY, NIDORINA, 0                                                                             ; Jr. Trainer ♀ 22       ; Nidorina added by G-Dubs
	db 29, BELLSPROUT, ODDISH, TANGELA, 0                                                                    ; Jr. Trainer ♀ 23 
; Route 20 (Again) 
	db 30, TENTACOOL, HORSEA, SEEL, 0                                                                        ; Jr. Trainer ♀ 24       ; Added to the Route 20 section not in order due to poor coding
; Route 6 (Again)
	db 20, CUBONE, 0                                                                                         ; Jr. Trainer ♀ 25       ; Giselle from the anime, exclusive to Yellow (Poor coding)
; Route 14 (New Trainer)
    db 29, PIKACHU, RAICHU, 0                                                                                ; Jr. Trainer ♀ 26       ; Girl with Pikachu & Raichu from Red/Blue added by G-Dubs
; Cerulean Gym (Again)
    db 17, SLOWPOKE, SEEL, 0                                                                                 ; Jr. Trainer ♀ 27       ; New trainer added by G-Dubs

PokemaniacData:
; Route 10
	db 30, RHYHORN, LICKITUNG, 0                                                                             ; Pokémaniac 1
	db 20, CUBONE, SLOWPOKE, NIDORAN_M, 0                                                                    ; Pokémaniac 2           ; Nidoran♂ added by G-Dubs
; Rock Tunnel B1F
	db 20, SLOWPOKE, SLOWPOKE, SLOWPOKE, 0                                                                   ; Pokémaniac 3
	db 22, CHARMANDER, CUBONE, NIDORINO, 0                                                                   ; Pokémaniac 4           ; Nidorino added by G-Dubs
	db 25, SLOWPOKE, CHARMELEON, 0                                                                           ; Pokémaniac 5           ; Charmeleon added by G-Dubs
; Victory Road 2F
	db 45, CHARIZARD, LAPRAS, LICKITUNG, 0                                                                   ; Pokémaniac 6           ; Level changed from 40 to 45, and Charmeleon changed to Charizard by G-Dubs
; Rock Tunnel 1F
	db 23, CUBONE, SLOWPOKE, 0                                                                               ; Pokémaniac 7
/**************************
Pokémaniac Alternate Sprite
***************************/
; Route 4
    db 35, CUBONE, NIDORINO, RHYHORN, NIDOQUEEN, 0                                                           ; Pokémaniac 8           ; New trainer added by G-Dubs
; S.S. Anne Bow
    db 19, NIDORINO, SLOWPOKE, NIDORINA, 0                                                                   ; Pokémaniac 9           ; New trainer added by G-Dubs
; Route 23
    db 45, NIDOKING, KANGASKHAN, CHARIZARD, SLOWBRO, LICKITUNG, LAPRAS, 0                                    ; Pokémaniac 10          ; New trainer added by G-Dubs
; Safari Zone Area 2 Rest House
    db 33, RHYHORN, PINSIR, TANGELA, KANGASKHAN, SCYTHER, MAROWAK, 0                                         ; Pokémaniac 11          ; New trainer added by G-Dubs

SuperNerdData:
; Mt. Moon 1F
	db 12, MAGNEMITE, VOLTORB, 0			                                                                 ; Super Nerd 1           ; Level changed from 11 to 12 by G-Dubs 
; Mt. Moon B2F
	db 14, GRIMER, VOLTORB, KOFFING, 0	                                                                     ; Super Nerd 2           ; Level changed from 12 to 14 by G-Dubs
; Route 8
	db 20, VOLTORB, KOFFING, VOLTORB, MAGNEMITE, 0	                                                         ; Super Nerd 3
	db 22, GRIMER, MUK, GRIMER, 0			                                                                 ; Super Nerd 4
	db 26, KOFFING, 0						                                                                 ; Super Nerd 5
; Unused
	db 22, KOFFING, MAGNEMITE, WEEZING, 0	                                                                 ; Super Nerd 6           ; (Unused)
	db 20, MAGNEMITE, MAGNEMITE, KOFFING, MAGNEMITE, 0	                                                     ; Super Nerd 7           ; (Unused)
	db 24, MAGNEMITE, VOLTORB, 0			                                                                 ; Super Nerd 8
; Cinnabar Gym
	db 36, VULPIX, VULPIX, NINETALES, 0	                                                                     ; Super Nerd 9
	db 34, PONYTA, CHARMANDER, VULPIX, GROWLITHE, 0	                                                         ; Super Nerd 10
	db 41, RAPIDASH, 0					                                                                     ; Super Nerd 11
	db 37, GROWLITHE, VULPIX, 0			                                                                     ; Super Nerd 12

HikerData:
; Mt. Moon 1F
	db 10, GEODUDE, GEODUDE, ONIX, 0		                                                                 ; Hiker 1
; Route 25
	db 15, MACHOP, GEODUDE, 0			                                                                     ; Hiker 2
	db 13, GEODUDE, GEODUDE, MACHOP, GEODUDE, 0	                                                             ; Hiker 3
	db 17, ONIX, 0						                                                                     ; Hiker 4
; Route 9
	db 21, GEODUDE, ONIX, 0				                                                                     ; Hiker 5
	db 20, GEODUDE, MACHOP, GEODUDE, 0	                                                                     ; Hiker 6
; Route 10
	db 21, GEODUDE, ONIX, 0				                                                                     ; Hiker 7
	db 19, ONIX, GRAVELER, 0			                                                                     ; Hiker 8
; Rock Tunnel B1F
	db 21, GEODUDE, GEODUDE, GRAVELER, 0	                                                                 ; Hiker 9                ; Hiker With Two Geodudes And A Graveler (HWTGAAG)
	db 25, GEODUDE, 0					                                                                     ; Hiker 10
; Route 9/Rock Tunnel B1F
	db 20, MACHOP, ONIX, 0				                                                                     ; Hiker 11
; Rock Tunnel 1F
	db 19, GEODUDE, MACHOP, GEODUDE, GEODUDE, 0	                                                             ; Hiker 12
	db 20, ONIX, ONIX, GEODUDE, 0		                                                                     ; Hiker 13
	db 21, GEODUDE, GRAVELER, 0			                                                                     ; Hiker 14
; Mt. Moon 1F (Again)
    db 12, SANDSHREW, GEODUDE, MACHOP, ONIX, 0                                                               ; Hiker 15               ; New trainer added by G-Dubs
    db 12, SANDSHREW, ZUBAT, MACHOP, GEODUDE, 0                                                              ; Hiker 16               ; New trainer added by G-Dubs

BikerData:
; Route 13
	db 28, KOFFING, KOFFING, KOFFING, 0			                                                             ; Biker 1
; Route 14
	db 29, KOFFING, GRIMER, 0					                                                             ; Biker 2
; Route 15
	db 25, KOFFING, KOFFING, WEEZING, KOFFING, GRIMER, 0	                                                 ; Biker 3
	db 28, KOFFING, GRIMER, WEEZING, 0				                                                         ; Biker 4
; Route 16
	db 29, GRIMER, KOFFING, 0					                                                             ; Biker 5
	db 33, WEEZING, 0							                                                             ; Biker 6
	db 26, GRIMER, GRIMER, GRIMER, GRIMER, 0		                                                         ; Biker 7
; Route 17
	db 28, WEEZING, KOFFING, WEEZING, 0			                                                             ; Biker 8
	db 33, MUK, 0								                                                             ; Biker 9
	db 29, VOLTORB, VOLTORB, 0					                                                             ; Biker 10
	db 29, WEEZING, MUK, 0						                                                             ; Biker 11
	db 25, KOFFING, WEEZING, KOFFING, KOFFING, WEEZING, 0	                                                 ; Biker 12
; Route 14
	db 26, KOFFING, KOFFING, GRIMER, KOFFING, 0		                                                         ; Biker 13
	db 28, GRIMER, GRIMER, KOFFING, 0				                                                         ; Biker 14
	db 29, KOFFING, MUK, 0						                                                             ; Biker 15

BurglarData:
; Unused
	db 29, GROWLITHE, VULPIX, 0			                                                                     ; Burglar 1              ; (Unused)
	db 33, GROWLITHE, 0					                                                                     ; Burglar 2              ; (Unused)
	db 28, VULPIX, CHARMANDER, PONYTA, 0			                                                         ; Burglar 3              ; (Unused)
; Cinnabar Gym
	db 36, GROWLITHE, VULPIX, NINETALES, 0	                                                                 ; Burglar 4
	db 41, PONYTA, 0						                                                                 ; Burglar 5
	db 37, VULPIX, GROWLITHE, 0			                                                                     ; Burglar 6
; Mansion 2F
	db 34, CHARMANDER, CHARMELEON, 0		                                                                 ; Burglar 7
; Mansion 3F
	db 38, NINETALES, 0					                                                                     ; Burglar 8
; Mansion B1F
	db 34, GROWLITHE, PONYTA, 0			                                                                     ; Burglar 9

EngineerData:
; Route 6/Route 9
	db 21, VOLTORB, MAGNEMITE, 0			                                                                 ; Engineer 1             ; Previously Unused (Now used in two different locations)
; Route 11
	db 21, MAGNEMITE, 0                                                                                      ; Engineer 2
	db 18, MAGNEMITE, MAGNEMITE, MAGNETON, 0                                                                 ; Engineer 3              
	db 18, VOLTORB, VOLTORB, ELECTRODE, 0                                                                    ; Engineer 4             ; New trainer added by G-Dubs
/*
; Route 10	
    db 24, VOLTORB, VOLTORB, 0                                                                               ; Engineer 4             ; New trainer added by G-Dubs
; Vermilion Gym
    db 20, VOLTORB, MAGNEMITE, 0                                                                             ; Engineer 5             ; New trainer added by G-Dubs
*/
UnusedJugglerData:
; none

FisherData:
; SS Anne 2F Rooms
	db 17, GOLDEEN, TENTACOOL, GOLDEEN, 0	                                                                 ; Fisher 1
; SS Anne B1F Rooms
	db 17, TENTACOOL, STARYU, SHELLDER, 0	                                                                 ; Fisher 2
; Route 12
	db 22, GOLDEEN, POLIWAG, GOLDEEN, 0	                                                                     ; Fisher 3
	db 24, TENTACOOL, GOLDEEN, 0			                                                                 ; Fisher 4
	db 27, GOLDEEN, 0					                                                                     ; Fisher 5
	db 21, POLIWAG, SHELLDER, GOLDEEN, HORSEA, 0	                                                         ; Fisher 6
; Route 21
	db 28, SEAKING, GOLDEEN, SEAKING, SEAKING, 0	                                                         ; Fisher 7
	db 31, SHELLDER, CLOYSTER, 0			                                                                 ; Fisher 8
	db 27, MAGIKARP, MAGIKARP, MAGIKARP, MAGIKARP, MAGIKARP, MAGIKARP, 0	                                 ; Fisher 9
	db 33, SEAKING, GOLDEEN, 0			                                                                     ; Fisher 10
; Route 12 (Again)
	db 24, MAGIKARP, MAGIKARP, 0			                                                                 ; Fisher 11
; Cerulean Gym
    db 15, MAGIKARP, GYARADOS, MAGIKARP, 0                                                                   ; Fisher 12              ; New trainer added by G-Dubs
; Route 12 (Again)
    db 25, MAGIKARP, GYARADOS, MAGIKARP, GYARADOS, MAGIKARP, 0                                               ; Fisher 13              ; New trainer added by G-Dubs

SwimmerData:
; Cerulean Gym
	db 16, HORSEA, SHELLDER, 0			                                                                     ; Swimmer 1
; Route 19
	db 30, TENTACOOL, SHELLDER, 0			                                                                 ; Swimmer 2
	db 29, GOLDEEN, HORSEA, STARYU, 0		                                                                 ; Swimmer 3
	db 30, POLIWAG, POLIWHIRL, 0			                                                                 ; Swimmer 4
	db 27, HORSEA, TENTACOOL, TENTACOOL, GOLDEEN, 0	                                                         ; Swimmer 5
	db 29, GOLDEEN, SHELLDER, SEAKING, 0	                                                                 ; Swimmer 6
	db 30, HORSEA, HORSEA, 0				                                                                 ; Swimmer 7
	db 27, TENTACOOL, TENTACOOL, STARYU, HORSEA, TENTACRUEL, 0	                                             ; Swimmer 8
; Route 20
	db 31, SHELLDER, CLOYSTER, 0			                                                                 ; Swimmer 9
	db 35, STARYU, 0						                                                                 ; Swimmer 10
	db 28, HORSEA, HORSEA, SEADRA, HORSEA, 0	                                                             ; Swimmer 11
; Route 21
	db 33, SEADRA, TENTACRUEL, 0			                                                                 ; Swimmer 12
	db 37, STARMIE, 0						                                                                 ; Swimmer 13
	db 33, STARYU, WARTORTLE, 0			                                                                     ; Swimmer 14
	db 32, POLIWHIRL, TENTACOOL, SEADRA, 0	                                                                 ; Swimmer 15

CueBallData:
; Route 16
	db 28, MACHOP, MANKEY, MACHOP, 0		                                                                 ; Cue Ball 1
	db 29, MANKEY, MACHOP, 0				                                                                 ; Cue Ball 2
	db 33, MACHOP, 0					                                                                     ; Cue Ball 3
; Route 17
	db 29, MANKEY, PRIMEAPE, 0			                                                                     ; Cue Ball 4
	db 29, MACHOP, MACHOKE, 0				                                                                 ; Cue Ball 5
	db 33, MACHOKE, 0					                                                                     ; Cue Ball 6
	db 26, MANKEY, MANKEY, MACHOKE, MACHOP, 0	                                                             ; Cue Ball 7
	db 29, PRIMEAPE, MACHOKE, 0			                                                                     ; Cue Ball 8
; Route 21
	db 31, TENTACOOL, TENTACOOL, TENTACRUEL, 0	                                                             ; Cue Ball 9

GamblerData:
; Route 11
	db 18, POLIWAG, HORSEA, 0			                                                                     ; Gambler 1
	db 18, BELLSPROUT, ODDISH, 0			                                                                 ; Gambler 2
	db 18, VOLTORB, MAGNEMITE, 0			                                                                 ; Gambler 3
	db 18, GROWLITHE, VULPIX, 0			                                                                     ; Gambler 4
; Route 8
	db 22, POLIWAG, POLIWAG, POLIWHIRL, 0	                                                                 ; Gambler 5
; Unused
	db 22, ONIX, GEODUDE, GRAVELER, 0	                                                                     ; Gambler 6              ; (Unused)
; Route 8
	db 24, GROWLITHE, VULPIX, 0			                                                                     ; Gambler 7

BeautyData:
; Cerulean Gym (Formerly Celadon Gym)
	db 17, PSYDUCK, POLIWAG, 0	                                                                             ; Beauty 1               ; Party and level changed by G-Dubs
	db 16, TENTACOOL, KRABBY, 0		                                                                         ; Beauty 2               ; Party and level changed by G-Dubs
	db 18, SQUIRTLE, WARTORTLE, 0					                                                         ; Beauty 3               ; Party and level changed by G-Dubs
; Route 13
	db 27, RATTATA, VULPIX, RATTATA, 0	                                                                     ; Beauty 4
	db 29, CLEFAIRY, MEOWTH, 0			                                                                     ; Beauty 5
; Route 20
	db 35, SEAKING, 0					                                                                     ; Beauty 6
	db 30, SHELLDER, SHELLDER, CLOYSTER, 0	                                                                 ; Beauty 7
	db 31, POLIWAG, SEAKING, 0			                                                                     ; Beauty 8
; Route 15
	db 29, PIDGEOTTO, WIGGLYTUFF, 0		                                                                     ; Beauty 9
	db 29, BULBASAUR, IVYSAUR, 0			                                                                 ; Beauty 10
; Unused
	db 33, WEEPINBELL, BELLSPROUT, WEEPINBELL, 0	                                                         ; Beauty 11              ; (Unused)
; Route 19
	db 27, POLIWAG, GOLDEEN, SEAKING, GOLDEEN, POLIWAG, 0	                                                 ; Beauty 12
	db 30, GOLDEEN, SEAKING, 0			                                                                     ; Beauty 13
	db 29, STARYU, STARYU, STARYU, 0		                                                                 ; Beauty 14
; Route 20
	db 30, SEADRA, HORSEA, SEADRA, 0		                                                                 ; Beauty 15

PsychicData:
; Saffron Gym
	db 31, KADABRA, SLOWPOKE, MR_MIME, KADABRA, 0                                                            ; Psychic 1
	db 34, MR_MIME, KADABRA, 0                                                                               ; Psychic 2
	db 33, SLOWPOKE, SLOWPOKE, SLOWBRO, 0                                                                    ; Psychic 3
	db 38, SLOWBRO, 0                                                                                        ; Psychic 4

RockerData:
; Vermilion Gym
	db 20, VOLTORB, VOLTORB, MAGNEMITE, VOLTORB, 0                                                           ; Rocker 1               ; Magnemite from Red/Blue added by G-Dubs
; Route 12
	db 29, VOLTORB, MAGNEMITE, ELECTRODE, 0                                                                  ; Rocker 2               ; Magnemite added by G-Dubs
	db 25, VOLTORB, MAGNEMITE, 0                                                                             ; Rocker 3               ; New trainer added by G-Dubs

JugglerData:
; Silph Co. 5F
	db 29, KADABRA, MR_MIME, 0			                                                                     ; Juggler 1
; Victory Road 2F
	db 41, DROWZEE, HYPNO, KADABRA, KADABRA, 0	                                                             ; Juggler 2
; Fuchsia Gym
	db 31, DROWZEE, DROWZEE, KADABRA, DROWZEE, 0	                                                         ; Juggler 3
	db 34, DROWZEE, HYPNO, 0				                                                                 ; Juggler 4
; Victory Road 2F
	db 48, MR_MIME, 0					                                                                     ; Juggler 5
; Unused
	db 33, HYPNO, 0					                                                                         ; Juggler 6              ; (Unused)
; Fuchsia Gym
	db 38, HYPNO, 0					                                                                         ; Juggler 7
	db 34, DROWZEE, KADABRA, 0			                                                                     ; Juggler 8

TamerData:
; Fuchsia Gym
	db 34, SANDSLASH, ARBOK, 0			                                                                     ; Tamer 1
	db 33, ARBOK, SANDSLASH, ARBOK, 0	                                                                     ; Tamer 2
; Viridian Gym
	db 43, RHYHORN, 0					                                                                     ; Tamer 3
	db 39, ARBOK, TAUROS, 0				                                                                     ; Tamer 4
; Victory Road 2F
	db 44, PERSIAN, GOLDUCK, 0			                                                                     ; Tamer 5
; Unused
	db 42, RHYHORN, PRIMEAPE, ARBOK, TAUROS, 0	                                                             ; Tamer 6                ; (Unused)

BirdKeeperData:
; Route 13
	db 29, PIDGEY, PIDGEOTTO, 0			                                                                     ; Bird Keeper 1
	db 25, SPEAROW, PIDGEY, PIDGEY, SPEAROW, SPEAROW, 0	                                                     ; Bird Keeper 2
	db 26, PIDGEY, PIDGEOTTO, SPEAROW, FEAROW, 0	                                                         ; Bird Keeper 3
; Route 14
	db 33, FARFETCHD, 0				                                                                         ; Bird Keeper 4
	db 29, SPEAROW, FEAROW, 0			                                                                     ; Bird Keeper 5
; Route 15
	db 26, PIDGEOTTO, FARFETCHD, DODUO, PIDGEY, 0	                                                         ; Bird Keeper 6
	db 28, DODRIO, DODUO, DODUO, 0		                                                                     ; Bird Keeper 7
; Route 18
	db 29, SPEAROW, FEAROW, 0			                                                                     ; Bird Keeper 8
	db 34, DODRIO, 0					                                                                     ; Bird Keeper 9
	db 26, SPEAROW, SPEAROW, FEAROW, SPEAROW, 0	                                                             ; Bird Keeper 10
; Route 20
	db 30, FEAROW, FEAROW, PIDGEOTTO, 0	                                                                     ; Bird Keeper 11
; Unused
	db 39, PIDGEOTTO, PIDGEOTTO, PIDGEY, PIDGEOTTO, 0	                                                     ; Bird Keeper 12         ; (Unused)
	db 42, FARFETCHD, FEAROW, 0			                                                                     ; Bird Keeper 13         ; (Unused)
; Route 14
	db 28, PIDGEY, DODUO, PIDGEOTTO, 0	                                                                     ; Bird Keeper 14
	db 26, PIDGEY, SPEAROW, PIDGEY, FEAROW, 0	                                                             ; Bird Keeper 15
	db 29, PIDGEOTTO, FEAROW, 0			                                                                     ; Bird Keeper 16
	db 28, SPEAROW, DODUO, FEAROW, 0		                                                                 ; Bird Keeper 17

BlackbeltData:
; Fighting Dojo
	db 37, HITMONLEE, HITMONCHAN, 0		                                                                     ; Blackbelt 1
	db 31, MANKEY, MANKEY, PRIMEAPE, 0	                                                                     ; Blackbelt 2
	db 32, MACHOP, MACHOKE, 0			                                                                     ; Blackbelt 3
	db 36, PRIMEAPE, 0					                                                                     ; Blackbelt 4
	db 31, MACHOP, MANKEY, PRIMEAPE, 0	                                                                     ; Blackbelt 5
; Viridian Gym
	db 40, MACHOP, MACHOKE, 0			                                                                     ; Blackbelt 6
	db 43, MACHOKE, 0					                                                                     ; Blackbelt 7
	db 38, MACHOKE, MACHOP, MACHOKE, 0	                                                                     ; Blackbelt 8
; Victory Road 2F
	db 43, MACHOKE, MACHOP, MACHOKE, 0	                                                                     ; Blackbelt 9

Rival1Data:
; Oak's Lab
	db 5, EEVEE, 0						                                                                     ; Rival 1 1
; Route 22
    db $FF, 9, PIDGEY, 8, RATTATA, 8, SPEAROW, 9, EEVEE, 0                                                   ; Rival 1 2             ; Pidgey & Rattata added by G-Dubs
; Cerulean City
    db $FF, 18, PIDGEOTTO, 15, RATTATA, 17, BELLSPROUT, 15, ABRA, 15, SANDSHREW, 19, EEVEE, 0                ; Rival 1 3             ; Pidgeotto, Bellsprout, & Abra added by G-Dubs 

ProfOakData:
; Unused
	db $FF, 65, SNORLAX, 66, TAUROS, 67, EXEGGUTOR, 68, ARCANINE, 69, BLASTOISE, 70, GYARADOS, 0	         ; Prof. Oak Blastoise 1  ; Snorlax added by G-Dubs
	db $FF, 65, SNORLAX, 66, TAUROS, 67, EXEGGUTOR, 68, ARCANINE, 69, VENUSAUR, 70, GYARADOS, 0	             ; Prof. Oak Venusaur  2  ; Snorlax added by G-Dubs
	db $FF, 65, SNORLAX, 66, TAUROS, 67, EXEGGUTOR, 68, ARCANINE, 69, CHARIZARD, 70, GYARADOS, 0	         ; Prof. Oak Charizard 3  ; Snorlax added by G-Dubs
; Post Game Battle
    db $FF, 69, TAUROS, 70, CHARIZARD, 70, VENUSAUR, 70, BLASTOISE, 69, SNORLAX, 70, NIDOKING, 0             ; Prof. Oak 4
	db $FF, 78, TAUROS, 77, ZAPDOS, 77, ARTICUNO, 77, MOLTRES, 78, SNORLAX, 81, NIDOKING, 0                  ; Prof. Oak 5

ChiefData:
; none

ScientistData:
; Unused
	db 34, KOFFING, VOLTORB, 0			                                                                     ; Scientist 1            ; (Unused)
; Silph Co. 2F
	db 26, GRIMER, WEEZING, KOFFING, WEEZING, 0	                                                             ; Scientist 2
	db 28, MAGNEMITE, VOLTORB, MAGNETON, 0	                                                                 ; Scientist 3
; Silph Co. 3F/Mansion 1F
	db 29, ELECTRODE, WEEZING, 0			                                                                 ; Scientist 4
; Silph Co. 4F
	db 33, ELECTRODE, 0					                                                                     ; Scientist 5
; Silph Co. 5F
	db 26, MAGNETON, KOFFING, WEEZING, MAGNEMITE, 0	                                                         ; Scientist 6
; Silph Co. 6F
	db 25, VOLTORB, KOFFING, MAGNETON, MAGNEMITE, KOFFING, 0	                                             ; Scientist 7
; Silph Co. 7F
	db 29, ELECTRODE, MUK, 0				                                                                 ; Scientist 8
; Silph Co. 8F
	db 29, GRIMER, ELECTRODE, 0			                                                                     ; Scientist 9
; Silph Co. 9F
	db 28, VOLTORB, KOFFING, MAGNETON, 0	                                                                 ; Scientist 10
; Silph Co. 10F
	db 29, MAGNEMITE, KOFFING, 0			                                                                 ; Scientist 11
; Mansion 3F
	db 33, MAGNEMITE, MAGNETON, VOLTORB, 0	                                                                 ; Scientist 12
; Mansion B1F
	db 34, MAGNEMITE, ELECTRODE, 0		                                                                     ; Scientist 13

GiovanniData:
; Rocket Hideout B4F
	db $FF, 25, ONIX, 25, GRAVELER, 26, RHYHORN, 28, MACHOKE, 29, KANGASKHAN, 30, PERSIAN, 0                 ; Giovanni 1             ; Animeesque Pokémon added by G-Dubs
; Silph Co. 11F
	db $FF, 37, NIDORINO, 35, PERSIAN, 36, GOLEM, 37, RHYHORN, 38, KINGLER, 41, NIDOQUEEN, 0                 ; Giovanni 2             ; Animeesque Pokémon added by G-Dubs
; Viridian Gym (Badge Match)
    db $FF, 50, DUGTRIO, 52, PINSIR, 54, PERSIAN, 56, NIDOQUEEN, 58, NIDOKING, 60, RHYDON, 0                 ; Giovanni 3             ; Animeesque Pokémon added by G-Dubs	
/*
; Viridian City Gym (Mewtwo Match)	
    db $FF, 52, MACHAMP, 54, PERSIAN, 56, KINGLER, 58, NIDOKING, 60, RHYDON, 65, ARMOREDMEWTWO, 0            ; Giovanni 4             ; New trainer added by G-Dubs (Armored Mewtwo added by G-Dubs)
*/
RocketData:
; Mt. Moon B2F
	db 14, RATTATA, ZUBAT, 0				                                                                 ; Rocket 1               ; Level changed from 12 to 14 by G-Dubs 
	db 12, SANDSHREW, RATTATA, ZUBAT, 0		                                                                 ; Rocket 2               ; Level changed from 11 to 12 by G-Dubs
	db 14, ZUBAT, EKANS, 0				                                                                     ; Rocket 3               ; Level changed from 12 to 14 by G-Dubs
; Previously Unused
	db 16, RATICATE, 0					                                                                     ; Rocket 4               ; Previously Unused trainer from Red & Blue added by G-Dubs
; Cerulean City
	db 18, MACHOP, DROWZEE, 0				                                                                 ; Rocket 5               ; Level changed from 17 to 18 by G-Dubs
; Route 24
	db 15, EKANS, ZUBAT, 0				                                                                     ; Rocket Team 6
; Game Corner
	db 20, RATICATE, ZUBAT, 0				                                                                 ; Rocket Team 7
; Rocket Hideout B1F
	db 21, DROWZEE, MACHOP, 0				                                                                 ; Rocket Team 8
	db 21, RATICATE, RATICATE, 0			                                                                 ; Rocket Team 9
	db 20, GRIMER, KOFFING, KOFFING, 0		                                                                 ; Rocket Team 10
	db 19, RATTATA, RATICATE, RATICATE, RATTATA, RATTATA, RATICATE, 0	                                     ; Rocket Team 11         ; Rattata & Raticate added by G-Dubs 
	db 22, GRIMER, KOFFING, 0				                                                                 ; Rocket Team 12
; Rocket Hideout B2F
	db 17, ZUBAT, KOFFING, GRIMER, ZUBAT, RATICATE, 0	                                                     ; Rocket Team 13
; Rocket Hideout B3F
	db 20, RATTATA, RATICATE, DROWZEE, 0		                                                             ; Rocket Team 14
	db 21, MACHOP, MACHOP, 0				                                                                 ; Rocket Team 15
; Unused
	db 23, SANDSHREW, EKANS, SANDSLASH, 0		                                                             ; Rocket Team 16         ; (Unused)
	db 23, EKANS, SANDSHREW, ARBOK, 0		                                                                 ; Rocket Team 17         ; (Unused)
; Rocket Hideout B4F
	db 21, KOFFING, ZUBAT, 0				                                                                 ; Rocket Team 18
; PokéMon Tower 7F (Previously Unused)
	db 25, ZUBAT, ZUBAT, GOLBAT, 0			                                                                 ; Rocket Team 19         ; Trainer from Red/Blue added by G-Dubs
	db 26, KOFFING, DROWZEE, 0				                                                                 ; Rocket Team 20         ; Trainer from Red/Blue added by G-Dubs
	db 23, ZUBAT, RATTATA, RATICATE, ZUBAT, 0	                                                             ; Rocket Team 21         ; Trainer from Red/Blue added by G-Dubs
    db 26, DROWZEE, KOFFING, 0			      	                                                             ; Rocket Team 22         ; Trainer from Red/Blue added by G-Dubs
; Silph Co. 2F
	db 29, CUBONE, ZUBAT, 0				                                                                     ; Rocket Team 23
	db 25, GOLBAT, ZUBAT, ZUBAT, RATICATE, ZUBAT, 0	                                                         ; Rocket Team 24
; Silph Co. 3F
	db 28, RATICATE, HYPNO, RATICATE, 0		                                                                 ; Rocket Team 25
; Silph Co. 4F
	db 29, MACHOP, DROWZEE, 0				                                                                 ; Rocket Team 26
	db 28, EKANS, ZUBAT, CUBONE, 0			                                                                 ; Rocket Team 27
; Silph Co. 5F
	db 33, ARBOK, 0					                                                                         ; Rocket Team 28
	db 33, HYPNO, 0					                                                                         ; Rocket Team 29
; Silph Co. 6F
	db 29, MACHOP, MACHOKE, 0				                                                                 ; Rocket Team 30
	db 28, ZUBAT, ZUBAT, GOLBAT, 0			                                                                 ; Rocket Team 31
; Silph Co. 7F
	db 26, RATICATE, ARBOK, KOFFING, GOLBAT, 0	                                                             ; Rocket Team 32
	db 29, CUBONE, CUBONE, 0				                                                                 ; Rocket Team 33
	db 29, SANDSHREW, SANDSLASH, 0			                                                                 ; Rocket Team 34
; Silph Co. 8F
	db 26, RATICATE, ZUBAT, GOLBAT, RATTATA, 0	                                                             ; Rocket Team 35
	db 28, WEEZING, GOLBAT, KOFFING, 0		                                                                 ; Rocket Team 36
; Silph Co. 9F
	db 28, DROWZEE, GRIMER, MACHOP, 0		                                                                 ; Rocket Team 37
	db 28, GOLBAT, DROWZEE, HYPNO, 0		                                                                 ; Rocket Team 38
; Silph Co. 10F
	db 33, MACHOKE, 0					                                                                     ; Rocket Team 39
; Silph Co. 11F
	db 25, RATTATA, RATTATA, ZUBAT, RATTATA, EKANS, 0	                                                     ; Rocket Team 40
; Unused
	db 32, CUBONE, DROWZEE, MAROWAK, 0                                                                       ; Rocket Team 41         ; (Unused)
; Mt. Moon B2F (Formerly Jessie & James)
	db 15, ZUBAT, RATTATA, KOFFING, 0                                                                        ; Rocket 42              ; Previously Unused trainer added by G-Dubs
 	db 15, ZUBAT, RATTATA, GRIMER, 0                                                                         ; Rocket 43              ; Previously Unused trainer added by G-Dubs
; Unused (Formerly Jessie & James)
	db 30, ARBOK, MEOWTH, WEEZING, WEEPINBELL, 0                                                             ; Rocket 44              ; (Now Unused)
	db 35, WEEZING, ARBOK, MEOWTH, VICTREEBEL, LICKITUNG, 0                                                  ; Rocket 45              ; (Now Unused)
; Unused
	db 16, KOFFING, 0                                                                                        ; Rocket 46              ; (Unused)
	db 27, KOFFING, 0                                                                                        ; Rocket 47              ; (Unused)
	db 29, WEEZING, 0                                                                                        ; Rocket 48              ; (Unused)
	db 33, WEEZING, 0                                                                                        ; Rocket 49              ; (Unused)
	db 31, MUK, 0                                                                                            ; Rocket 50              ; (Unused) (Trainer added by G-Dubs)

CooltrainerMData:
; Viridian Gym
	db 39, NIDORINO, NIDOKING, 0				                                                             ; Cooltrainer ♂ 1
; Victory Road 3F
	db 43, EXEGGUTOR, CLOYSTER, ARCANINE, 0		                                                             ; Cooltrainer ♂ 2
	db 43, KINGLER, TENTACRUEL, BLASTOISE, 0		                                                         ; Cooltrainer ♂ 3
; Unused
	db 45, KINGLER, STARMIE, 0				                                                                 ; Cooltrainer ♂ 4        ; (Unused)
; Victory Road 1F
	db 42, IVYSAUR, WARTORTLE, CHARMELEON, CHARIZARD, 0	                                                     ; Cooltrainer ♂ 5
; Unused
	db 44, IVYSAUR, WARTORTLE, CHARMELEON, 0		                                                         ; Cooltrainer ♂ 6        ; (Unused)
	db 49, NIDOKING, 0					                                                                     ; Cooltrainer ♂ 7        ; (Unused)
	db 44, KINGLER, CLOYSTER, 0				                                                                 ; Cooltrainer ♂ 8        ; (Unused)
; Viridian Gym
	db 39, SANDSLASH, DUGTRIO, 0				                                                             ; Cooltrainer ♂ 9
	db 43, RHYHORN, 0					                                                                     ; Cooltrainer ♂ 10

CooltrainerFData:
; Celadon Gym
	db 24, WEEPINBELL, GLOOM, IVYSAUR, 0		                                                             ; Cooltrainer ♀ 1
; Victory Road 3F
	db 43, BELLSPROUT, WEEPINBELL, VICTREEBEL, 0	                                                         ; Cooltrainer ♀ 2
	db 43, PARASECT, DEWGONG, CHANSEY, 0		                                                             ; Cooltrainer ♀ 3
; Unused
	db 46, VILEPLUME, BUTTERFREE, 0			                                                                 ; Cooltrainer ♀ 4        ; (Unused)
; Victory Road 1F
	db 44, PERSIAN, NINETALES, 0			                                                                 ; Cooltrainer ♀ 5
; Unused
	db 45, IVYSAUR, VENUSAUR, 0			                                                                     ; Cooltrainer ♀ 6        ; (Unused)
	db 45, NIDORINA, NIDOQUEEN, 0			                                                                 ; Cooltrainer ♀ 7        ; (Unused)
	db 43, PERSIAN, NINETALES, RAICHU, 0		                                                             ; Cooltrainer ♀ 8        ; (Unused)
; Route 24
    db 15, LAPRAS, 0                                                                                         ; Cooltrainer ♀ 9        ; New trainer added by G-Dubs
; Route 12
    db 28, POLIWHIRL, GLOOM, NINETALES, 0                                                                    ; Cooltrainer ♀ 10       ; New trainer added by G-Dubs

BrunoData:
; First Battle
    db $FF, 57, ONIX, 56, PRIMEAPE, 55, HITMONCHAN, 55, HITMONLEE, 58, POLIWRATH, 60, MACHAMP, 0             ; Bruno 1                ; Levels changed and Poliwrath added by G-Dubs
; Rematch
	db $FF, 71, CLEFABLE, 71, MUK, 70, SLOWBRO, 72, HITMONLEE, 72, RHYDON, 73, MACHAMP, 0                    ; Bruno 2                ; Bruno Rematch from Yellow Legacy

BrockData:
; Badge Match
	db $FF, 12, GEODUDE, 13, KABUTO, 12, ZUBAT, 12, VULPIX, 13, OMANYTE, 14, ONIX, 0                         ; Brock 1                ; Animeesque Pokémon added by G-Dubs
; Rematch
	db $FF, 64, OMASTAR, 65, ONIX, 64, KABUTOPS, 64, GOLEM, 64, NINETALES, 65, AERODACTYL, 0                 ; Brock 2                ; Brock Rematch from Yellow Legacy

 MistyData:
; Badge Match
    db $FF, 19, HORSEA, 19, SEEL, 20, STARYU, 20, GOLDEEN, 21, PSYDUCK , 21, STARMIE, 0                      ; Misty 1                ; Animeesque Pokémon added by G-Dubs	
; Rematch
	db $FF, 64, SEADRA, 65, GOLDUCK, 64, LAPRAS, 64, BLASTOISE, 64, VAPOREON, 65, STARMIE, 0                 ; Misty 2                ; Misty Rematch from Yellow Legacy

LtSurgeData:
; Badge Match
    db $FF, 24, RATICATE, 26, ELECTRODE, 26, MAGNETON, 28, FEAROW, 28, ELECTABUZZ, 30, RAICHU, 0             ; Lt. Surge 1            ; Animeesque Pokémon added by G-Dubs	
; Rematch
	db $FF, 64, ELECTRODE, 65, MAGNETON, 64, JOLTEON, 64, PORYGON, 64, ELECTABUZZ, 65, RAICHU, 0             ; Lt. Surge 2            ; Lt. Surge Rematch from Yellow Legacy

ErikaData:
; Badge Match
	db $FF, 34, VICTREEBEL, 33, PARASECT, 32, BUTTERFREE, 33, TANGELA, 33, EXEGGUTOR, 34, VILEPLUME, 0       ; Erika 1                ; Animeesque Pokémon added by G-Dubs
; Rematch
	db $FF, 64, TANGELA, 64, VENUSAUR, 64, PARASECT, 64, EXEGGUTOR, 65, VICTREEBEL, 65, VILEPLUME, 0         ; Erika 2                ; Erika Rematch from Yellow Legacy
; Other Battles
    db $FF, 33, TANGELA, 34, VICTREEBEL, 31, IVYSAUR, 35, VILEPLUME, 0                                       ; Erika 3                ; Other battles from Yellow Legacy
	db $FF, 41, TANGELA, 42, VICTREEBEL, 42, VENUSAUR, 43, VILEPLUME, 0                                      ; Erika 4                ; Other battles from Yellow Legacy
	db $FF, 48, TANGELA, 49, VICTREEBEL, 48, VENUSAUR, 49, EXEGGUTOR, 50, VILEPLUME, 0	                     ; Erika 5                ; Other battles from Yellow Legacy

KogaData:
; Badge Match
    db $FF, 45, VENONAT, 46, GOLBAT, 47, SCYTHER, 48, ARBOK, 49, WEEZING, 50, VENOMOTH, 0                    ; Koga 1                 ; Animeesque Pokémon added by G-Dubs
; Rematch
	db $FF, 64, GOLBAT, 64, MUK, 64, TENTACRUEL, 65, WEEZING, 64, ARBOK, 65, VENOMOTH, 0                     ; Koga 2                 ; Koga Rematch from Yellow Legacy

BlaineData:
; Badge Match
    db $FF, 48, NINETALES, 48, TAUROS, 50, RAPIDASH, 52, CHARIZARD, 54, ARCANINE, 58, MAGMAR, 0              ; Blaine 1               ; Animeesque Pokémon added by G-Dubs (Charizard will be Charizard_Y)
; Rematch
	db $FF, 64, RAPIDASH, 64, FLAREON, 64, CHARIZARD, 64, NINETALES, 65, ARCANINE, 65, MAGMAR, 0             ; Blaine 2               ; Blaine Rematch from Yellow Legacy

SabrinaData:
; Badge Match
    db $FF, 44, GOLDUCK, 46, MR_MIME, 46, HAUNTER, 48, HYPNO, 48, SLOWBRO, 50, ALAKAZAM, 0                   ; Sabrina 1              ; Animeesque Pokémon added by G-Dubs
; Rematch
	db $FF, 65, MR_MIME, 64, HYPNO, 64, SLOWBRO, 64, JYNX, 64, GENGAR, 65, ALAKAZAM, 0                       ; Sabrina 2          	  ; Sabrina Rematch from Yellow Legacy
; Other Battles
    db $FF, 50, ABRA,  48, HYPNO, 49, MR_MIME, 50, KADABRA,  50, ALAKAZAM, 0                                 ; Sabrina 3              ; Other battles from Yellow Legacy
	db $FF, 43, ABRA,  42, MR_MIME, 43, KADABRA,  43, ALAKAZAM, 0                                            ; Sabrina 4              ; Other battles from Yellow Legacy

GentlemanData:
; SS Anne 1F Rooms
	db 18, GROWLITHE, GROWLITHE, 0			                                                                 ; Gentleman 1
	db 19, NIDORAN_M, NIDORAN_F, 0			                                                                 ; Gentleman 2
; SS Anne 2F Rooms/Vermilion Gym
	db 22, VOLTORB, MAGNEMITE, 0			                                                                 ; Gentleman 3            ; Party had been used multiple times
; Unused
	db 48, PRIMEAPE, 0				                                                                         ; Gentleman 4            ; (Unused)
; SS Anne 2F Rooms
	db 17, GROWLITHE, PONYTA, 0			                                                                     ; Gentleman 5

Rival2Data:                                                                                                  ; Rival 2 Parties based on Yellow Legacy Parties
; SS Anne 2F
	db $FF, 21, PIDGEOTTO, 20, RATICATE , 22, WEEPINBELL, 21, KADABRA, 21, SANDSHREW, 24, EEVEE, 0	         ; Rival 2 1              ; Pidgeotto, Raticate, & Kadabra added by G-Dubs 
; Pokémon Tower 2F
    db $FF, 34, FEAROW, 33, SANDSLASH, 32, SHELLDER, 32, GROWLITHE, 33, KADABRA, 35, JOLTEON, 0              ; Rival 2 Jolteon   2    ; Sandslash added by G-Dubs
   ;db $FF, 28, FEAROW, 26, SANDSLASH, 26, KADABRA, 25, GYARADOS, 25, VULPIX, 30, EEVEE, 0                   
	db $FF, 34, FEAROW, 33, SANDSLASH, 32, MAGNEMITE, 33, KADABRA, 32, SHELLDER, 35, FLAREON, 0              ; Rival 2 Flareon   3    ; Sandslash added by G-Dubs
   ;db $FF, 28, FEAROW, 26, SANDSLASH, 26, KADABRA, 25, MAGNEMITE, 25, GYARADOS, 30, EEVEE, 0                
	db $FF, 34, FEAROW, 33, SANDSLASH, 32, VULPIX, 33, KADABRA, 32, SCYTHER, 35, VAPOREON, 0                 ; Rival 2 Vaporeon  4    ; Sandslash added by G-Dubs
   ;db $FF, 28, FEAROW, 26, SANDSLASH, 26, KADABRA, 25, VULPIX, 22, MAGNEMITE, 30, EEVEE, 0	                 
; Silph Co. 7F
    db $FF, 43, TAUROS, 43, PARASECT, 44, GYARADOS, 43, RHYDON, 44, ALAKAZAM, 46, JOLTEON, 0                 ; Rival 2 Jolteon   5    ; Tauros added by G-Dubs
   ;db $FF, 38, SANDSLASH, 37, PIDGEOT, 35, NINETALES, 36, CLOYSTER, 37, KADABRA, 40, JOLTEON, 0             
    db $FF, 43, PIDGEOT, 43, ELECTABUZZ, 44, CLOYSTER, 43, DODRIO , 44, ALAKAZAM, 46, FLAREON, 0             ; Rival 2 Flareon   6    ; Pidgeot added by G-Dubs
   ;db $FF, 38, SANDSLASH, 37, PIDGEOT, 35, CLOYSTER, 36, MAGNETON, 37, KADABRA, 40, FLAREON, 0              
    db $FF, 43, MAROWAK, 43, VICTREEBEL, 44, PORYGON, 43, PRIMEAPE, 44, ALAKAZAM, 46, VAPOREON, 0	         ; Rival 2 Vaporeon  7    ; Marowak added by G-Dubs
   ;db $FF, 38, SANDSLASH, 37, PIDGEOT, 35, MAGNETON, 36, NINETALES, 37, KADABRA, 40, VAPOREON, 0                 
; Route 22
    db $FF, 55, JOLTEON, 53, PIDGEOT, 52, EXEGGUTOR, 52, MAROWAK, 54, ARCANINE, 54, ALAKAZAM, 0              ; Rival 2 Jolteon   8
   ;db $FF, 47, SANDSLASH, 45, EXEGGCUTE, 45, NINETALES, 47, CLOYSTER, 50, KADABRA, 53, JOLTEON, 0
	db $FF, 54, FEAROW, 54, ALAKAZAM, 52, MAROWAK, 52, MAGNETON, 53, GOLDUCK, 55, FLAREON, 0                 ; Rival 2 Flareon   9           
   ;db $FF, 47, SANDSLASH, 45, EXEGGCUTE, 45, CLOYSTER, 47, MAGNETON, 50, KADABRA, 53, FLAREON, 0   
	db $FF, 53, PIDGEOT, 54, MACHAMP, 54, ALAKAZAM, 52, NINETALES, 52, SCYTHER, 55, VAPOREON, 0              ; Rival 2 Vaporeon 10         
   ;db $FF, 47, SANDSLASH, 45, EXEGGCUTE, 45, MAGNETON, 47, NINETALES, 50, KADABRA, 53, VAPOREON, 0          

Rival3Data:                                                                                                  ; Rival 3 Parties based on Yellow Legacy Parties
; Champion's Room
	db $FF, 60, RHYDON, 63, ALAKAZAM, 62, EXEGGUTOR, 63, ARCANINE, 61, GYARADOS, 65, JOLTEON, 0              ; Rival 2 Jolteon  1
   ;db $FF, 61, SANDSLASH, 59, ALAKAZAM, 61, EXEGGUTOR, 61, CLOYSTER, 63, NINETALES, 65, JOLTEON, 0          
	db $FF, 61, DODRIO, 60, SANDSLASH, 63, ALAKAZAM, 62, MAGNETON, 62, CLOYSTER, 65, FLAREON, 0              ; Rival 2 Flareon  2
   ;db $FF, 61, SANDSLASH, 59, ALAKAZAM, 61, EXEGGUTOR, 61, MAGNETON, 63, CLOYSTER, 65, FLAREON, 0           
	db $FF, 61, PIDGEOT, 60, MACHAMP, 63, ALAKAZAM, 62, NINETALES, 62, VICTREEBEL, 65, VAPOREON, 0           ; Rival 2 Vaporeon 3
   ;db $FF, 61, SANDSLASH, 59, ALAKAZAM, 61, EXEGGUTOR, 61, NINETALES, 63, MAGNETON, 65, VAPOREON, 0         

LoreleiData:
; First Battle
    db $FF, 54, DEWGONG, 53, CLOYSTER, 54, SLOWBRO, 55, ARTICUNO, 56, JYNX, 58, LAPRAS, 0	                 ; Lorelei 1              ; Animeesque Pokémon added by G-Dubs
; Rematch
	db $FF, 70, WIGGLYTUFF, 71, STARMIE, 71, CLOYSTER, 70, OMASTAR, 70, EXEGGUTOR, 72, LAPRAS, 0             ; Lorelei 2              ; Lorelei Rematch from Yellow Legacy

ChannelerData:
; PokéMon Tower 3F or (Previously Unused)
	db 22, GASTLY, 0                                                                                         ; Channeler 1            ; Trainer unused in any version added by G-Dubs
	db 23, GASTLY, 0                                                                                         ; Channeler 2
	db 24, GASTLY, 0                                                                                         ; Channeler 3
	db 22, GASTLY, 0                                                                                         ; Channeler 4
	db 23, GASTLY, GASTLY, 0                                                                                 ; Channeler 5            ; Trainer unused in any version added by G-Dubs
; PokéMon Tower 4F
	db 24, GASTLY, 0 	                                                                                     ; Channeler 6
	db 23, GASTLY, GASTLY, 0                                                                                 ; Channeler 7
	db 22, GASTLY, CUBONE, GASTLY, 0                                                                         ; Channeler 8            ; Cubone and Gastly added by G-Dubs
	db 24, GASTLY, 0                                                                                         ; Channeler 9            ; Trainer unused in any version added by G-Dubs
	db 24, GASTLY, 0                                                                                         ; Channeler 10           ; Trainer unused in any version added by G-Dubs
; PokéMon Tower 5F
	db 23, HAUNTER, CUBONE, 0                                                                                ; Channeler 11           ; Cubone added by G-Dubs
	db 24, GASTLY, CUBONE, 0                                                                                 ; Channeler 12           ; Trainer unused in any version added by G-Dubs (Cubone added by G-Dubs)
	db 25, VULPIX, GASTLY, CUBONE, 0                                                                         ; Channeler 13           ; Cubone and Vulpix added by G-Dubs (Level changed from 22 to 25 by G-Dubs)
	db 24, GASTLY, 0                                                                                         ; Channeler 14
	db 22, HAUNTER, 0                                                                                        ; Channeler 15
; PokéMon Tower 6F or (Previously Unused)
	db 22, GASTLY, GASTLY, GASTLY, 0                                                                         ; Channeler 16
	db 24, GASTLY, 0                                                                                         ; Channeler 17
	db 24, GASTLY, 0                                                                                         ; Channeler 18
	db 25, HAUNTER, NINETALES, 0                                                                             ; Channeler 19           ; Trainer unused in any version added by G-Dubs (Ninetales added and level changed from 24 to 25 by G-Dubs)
    db 28, GENGAR, 0                                                                                         ; Channeler 20           ; Trainer unused in any version added by G-Dubs (Gastly changed to Gengar and level changed from 24 to 28 by G-Dubs) 
; Saffron Gym
    db 24, GASTLY, 0                                                                                         ; Channeler 21           ; (Unused)
	db 34, GASTLY, HAUNTER, 0                                                                                ; Channeler 22
	db 38, HAUNTER, 0                                                                                        ; Channeler 23
	db 33, GASTLY, HAUNTER, GENGAR, 0                                                                        ; Channeler 24           ; Gastly changed to Gengar by G-Dubs

AgathaData:
; First Battle    
	db $FF, 56, GENGAR, 58, MAROWAK, 56, GOLBAT, 55, HAUNTER, 60, NINETALES, 62, GENGAR, 0	                 ; Agatha 1               ; Animeesque Pokémon added by G-Dubs
; Rematch
	db $FF, 71, JYNX, 71, GYARADOS, 72, ALAKAZAM, 71, VENUSAUR, 72, ARBOK, 73, GENGAR, 0                     ; Agatha 2               ; Agatha Rematch from Yellow Legacy

LanceData:
; First Battle
    db $FF, 59, GYARADOS, 58, DRAGONAIR, 58, DRAGONAIR, 60, CHARIZARD, 62, AERODACTYL, 64, DRAGONITE, 0      ; Lance 1                ; Animeesque Pokémon added by G-Dubs
; Rematch
	db $FF, 73, ARCANINE, 73, ELECTABUZZ, 74, SNORLAX, 74, CHARIZARD, 72, KANGASKHAN, 75, DRAGONITE, 0       ; Lance 2                ; Lance Rematch from Yellow Legacy

/**************************************************************************************************************************************************************************************************************************
All new trainers added by Vlad and George
***************************************************************************************************************************************************************************************************************************/

JessieJamesData:
; Viridian City Pokémon Center
	db 5,  EKANS, MEOWTH, KOFFING, 0                                                                         ; Jessie & James 1       ; New trainer added by Vlad
; Mt. Moon B2F
	db 15, EKANS, MEOWTH, KOFFING, 0                                                                         ; Jessie & James 2       ; Level changed from 14 to 15 by G-Dubs
; S.S. Anne
    db 20, EKANS, MEOWTH, KOFFING, MAGIKARP, 0                                                               ; Jessie & James 3       ; New trainer added by G-Dubs
;Rocket Hideout B4F
 	db 25, KOFFING, MEOWTH, EKANS, WEEPINBELL, 0                                                             ; Jessie & James 4       ; Weepinbell added by G-Dubs
; Pokémon Tower 7F
	db 30, ARBOK, MEOWTH, WEEZING, WEEPINBELL, 0                                                             ; Jessie & James 5       ; Level changed from 27 to 30 by G-Dubs (Weepinbell added by G-Dubs)
; Silph Co. 11F
	db 35, WEEZING, ARBOK, MEOWTH, VICTREEBEL, LICKITUNG, 0                                                  ; Jessie & James 6       ; Level changed from 31 to 35 by G-Dubs (Victreebel and Lickitung added by G-Dubs)
; Viridian City Gym        
	db 45, GYARADOS, GOLEM, KINGLER, MEOWTH, LICKITUNG, ARBOK, 0                                             ; Jessie & James 7       ; New trainer added by G-Dubs (Giovanni's Pokémon)             
	db 45, SANDSLASH, CLOYSTER, MACHAMP, MEOWTH, VICTREEBEL, WEEZING, 0                                      ; Jessie & James 8       ; New trainer added by G-Dubs (Giovanni's Pokémon)

PokeFanMData:
; Route 5
    db 16, PIKACHU, BULBASAUR, CHARMANDER, SQUIRTLE, EEVEE, 0                                                ; PokéFan ♂ 1            ; New trainer added by G-Dubs (New Trainer Class added by G-Dubs)
	db 18, MEOWTH, PSYDUCK, EEVEE, 0                                                                         ; PokéFan ♂ 2            ; New trainer added by G-Dubs (New Trainer Class added by G-Dubs)
	db 20, PIKACHU, PIKACHU, PIKACHU, 0                                                                      ; PokéFan ♂ 3            ; New trainer added by G-Dubs (New Trainer Class added by G-Dubs)
; Route ??
   ;db ??, NIDOKING, KINGLER, SEAKING, KINGDRA, 0                                                            ; PokéFan ♂ ?            ; New trainer added by G-Dubs (New Trainer Class added by G-Dubs)

PokeFanFData:
; Route 5
    db 17, JIGGLYPUFF, PIKACHU, CLEFAIRY, 0                                                                  ; PokéFan ♀ 1            ; New trainer added by G-Dubs (New Trainer Class added by G-Dubs)
	db 19, POLIWAG, ODDISH, CUBONE, 0                                                                        ; PokéFan ♀ 2            ; New trainer added by G-Dubs (New Trainer Class added by G-Dubs)
	db 16, BULBASAUR, CHARMANDER, SQUIRTLE, 0                                                                ; PokéFan ♀ 3            ; New trainer added by G-Dubs  (New Trainer Class added by G-Dubs) 

GuitaristData:
/*************
Guitarist 1
*************/
; Vermilion Gym
	db 22, VOLTORB, MAGNEMITE, VOLTORB, 0                                                                    ; Guitarist 1            ; New trainer added by G-Dubs (New Trainer Class added by G-Dubs)
 ; Route 12	
	db 25, ZUBAT, VOLTORB, ZUBAT, 0                                                                          ; Guitarist 2            ; New trainer added by G-Dubs (New Trainer Class added by G-Dubs)
    db 30, MAGNETON, ELECTRODE, 0 	                                                                         ; Guitarist 3            ; New trainer added by G-Dubs (New Trainer Class added by G-Dubs)

/*************
Guitarist 2
*************/
; Dummy list
    db 25, PIKACHU, CLEFAIRY, /* TOXTRICITY, */ 0                                                            ; Guitarist 4            ; New trainer added by G-Dubs (New Trainer Class added by G-Dubs) 
    db 1, VOLTORB, 0                                                                                         ; Guitarist 5            ; New trainer added by G-Dubs (New Trainer Class added by G-Dubs)
    db 1, ELECTABUZZ, 0                                                                                      ; Guitarist 6            ; New trainer added by G-Dubs (New Trainer Class added by G-Dubs)

/*************
Guitarist 3
*************/
; Vermillion Gym
   db 25, ELECTABUZZ, 0                                                                                      ; Guitarist 7            ; New trainer added by G-Dubs (New Trainer Class added by G-Dubs)
; Power Plant   
   ;db                                                                                                       ; Guitarist 8            ; New trainer added by G-Dubs (New Trainer Class added by G-Dubs)
   ;db                                                                                                       ; Guitarist 9            ; New trainer added by G-Dubs (New Trainer Class added by G-Dubs)  

SoldierData:
; Vermillion Gym
	db 23, MAGNEMITE, MACHOP, VOLTORB, 0                                                                     ; Soldier 1	          ; New trainer added by G-Dubs (New Trainer Class added by G-Dubs)

LadyData:
; S.S. Anne Bow
    db 18, GOLDEEN, GLOOM, SHELLDER, PIDGEOTTO, 0                                                            ; Lady 1                 ; New trainer added by G-Dubs (New Trainer Class added by G-Dubs)

/*
Former Beauty Data
	
; Celadon Gym
	db 21, ODDISH, BELLSPROUT, ODDISH, BELLSPROUT, 0	                                                     ; Beauty 1
	db 24, BELLSPROUT, BELLSPROUT, 0		                                                                 ; Beauty 2
	db 26, EXEGGCUTE, 0					                                                                     ; Beauty 3
*/
