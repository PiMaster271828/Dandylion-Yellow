; wEventFlags bit flags

; Pallet Town events
	const_def
	const EVENT_FOLLOWED_OAK_INTO_LAB	                                                           ; $0
	const_skip 2	                                                                               ; $1 - $2
	const EVENT_HALL_OF_FAME_DEX_RATING		                                                       ; $3
	const_skip	                                                                                   ; $4
	const EVENT_PLAYER_AT_RIGHT_EXIT_TO_PALLET_TOWN	                                               ; $5
	const EVENT_PALLET_AFTER_GETTING_POKEBALLS		                                               ; $6
	const_skip 17	                                                                               ; $7 - $17
	const EVENT_GOT_TOWN_MAP		                                                               ; $18
	const EVENT_ENTERED_BLUES_HOUSE	                                                               ; $19
	const EVENT_DAISY_WALKING		                                                               ; $1A
	const_skip 5	                                                                               ; $1B - $1F
	const EVENT_FOLLOWED_OAK_INTO_LAB_2		                                                       ; $20
	const EVENT_OAK_ASKED_TO_CHOOSE_MON		                                                       ; $21	
	const EVENT_GOT_STARTER	                                                                       ; $22
	const EVENT_BATTLED_RIVAL_IN_OAKS_LAB	                                                       ; $23
	const EVENT_GOT_POKEBALLS_FROM_OAK		                                                       ; $24
	const EVENT_GOT_POKEDEX		 	                                                               ; $25
	const EVENT_PALLET_AFTER_GETTING_POKEBALLS_2	                                               ; $26
	const EVENT_OAK_APPEARED_IN_PALLET	                                                           ; $27

; Viridian City events
	const_next $28
	const EVENT_VIRIDIAN_GYM_OPEN  	                                                               ; $28                    
	const EVENT_GOT_TM42                               	                                           ; $29                    
	const_skip 2	                                                                               ; $2A - $2B              
	const EVENT_SPAWNED_OLD_MAN_1	                                                               ; $2C                    
	const EVENT_COMPLETED_CATCH_TRAINING	                                                       ; $2D                    
	const EVENT_COMPLETED_CATCH_TRAINING_AGAIN	                                                   ; $2E                    
	const EVENT_INITIAL_CATCH_TRAINING	                                                           ; $2F                    
	const_skip 8	                                                                               ; $30 - $37              
	const EVENT_OAK_GOT_PARCEL	                                                                   ; $38                    
	const EVENT_GOT_OAKS_PARCEL	                                                                   ; $39                    
	const_skip 6                                           ; Formerly const_skip 22                ; $3A - $3F

; Viridian City Trainer's School events
    const_next $40
	const_skip                                                                                     ; $40
    const EVENT_BEAT_VIRIDIAN_TRAINERS_SCHOOL_TRAINER_0    ; NPC changed to trainer by G-Dubs      ; $41
    const EVENT_BEAT_VIRIDIAN_TRAINERS_SCHOOL_TRAINER_1	   ; NPC changed to trainer by G-Dubs      ; $42
    const EVENT_BEAT_VIRIDIAN_TRAINERS_SCHOOL_TRAINER_2	   ; New trainer added by G-Dubs           ; $43
    const EVENT_BEAT_VIRIDIAN_TRAINERS_SCHOOL_TRAINER_3	   ; New trainer added by G-Dubs           ; $44
    const EVENT_BEAT_VIRIDIAN_TRAINERS_SCHOOL_TRAINER_4	   ; New trainer added by G-Dubs           ; $45
	const EVENT_BEAT_VIRIDIAN_TRAINERS_SCHOOL_TRAINER_5	   ; New trainer added by G-Dubs           ; $46
	const_skip 9	                                                                               ; $47 - $4F

; Viridian City Gym events		                                                                                           
	const_next $50
	const EVENT_GOT_TM27	                                                                       ; $50                    
	const EVENT_BEAT_VIRIDIAN_GYM_GIOVANNI	                                                       ; $51                    
	const EVENT_BEAT_VIRIDIAN_GYM_TRAINER_0	                                                       ; $52                    
	const EVENT_BEAT_VIRIDIAN_GYM_TRAINER_1	                                                       ; $53                    
	const EVENT_BEAT_VIRIDIAN_GYM_TRAINER_2	                                                       ; $54                    
	const EVENT_BEAT_VIRIDIAN_GYM_TRAINER_3	                                                       ; $55                    
	const EVENT_BEAT_VIRIDIAN_GYM_TRAINER_4		                                                   ; $56                    
	const EVENT_BEAT_VIRIDIAN_GYM_TRAINER_5	                                                       ; $57                    
	const EVENT_BEAT_VIRIDIAN_GYM_TRAINER_6	                                                       ; $58                    
	const EVENT_BEAT_VIRIDIAN_GYM_TRAINER_7	                                                       ; $59                    
	const_skip 1	                                                                               ; $5A                    
	const EVENT_BEAT_JESSIE_1_TRAINER_0	                                                           ; $5B                    
	const EVENT_3C	                                                                               ; $5C                    

; Pewter City events
	const_next $68
	const EVENT_BOUGHT_MUSEUM_TICKET	                                                           ; $68                    
	const EVENT_GOT_OLD_AMBER	                                                                   ; $69                    
	const_skip 8	                                                                               ; $6A - $71                
	const EVENT_BEAT_PEWTER_GYM_TRAINER_0	                                                       ; $72                    
	const_skip 3	                                                                               ; $73 - $75                
	const EVENT_GOT_TM34		                                                                   ; $76                    
	const EVENT_BEAT_BROCK	                                                                       ; $77                    

; Cerulean City events
	const_next $98                                 
	const EVENT_BEAT_CERULEAN_RIVAL                                                                ; $98
	const_skip 14                                                                                  ; $99 - $A6
	const EVENT_BEAT_CERULEAN_ROCKET_THIEF                                                         ; $A7
	const EVENT_GOT_BULBASAUR_IN_CERULEAN                                                          ; $A8
	const_skip 17                                                                                  ; $A9 - $B9
	const EVENT_BEAT_CERULEAN_GYM_TRAINER_0                                                        ; $BA
	const EVENT_BEAT_CERULEAN_GYM_TRAINER_1                                                        ; $BB
	const EVENT_BEAT_CERULEAN_GYM_TRAINER_2      ; New trainer added by G-Dubs                     ; $BC
	const EVENT_BEAT_CERULEAN_GYM_TRAINER_3      ; New trainer added by G-Dubs                     ; $BD
	const EVENT_BEAT_CERULEAN_GYM_TRAINER_4      ; New trainer added by G-Dubs                     ; $BE
	const EVENT_BEAT_CERULEAN_GYM_TRAINER_5      ; New trainer added by G-Dubs                     ; $BF
	const EVENT_BEAT_CERULEAN_GYM_TRAINER_6      ; New trainer added by G-Dubs                     ; $C0
	const_skip 2                                                                                   ; $C1 - $C2
	const EVENT_GOT_TM11                                                                           ; $C3
	const EVENT_BEAT_MISTY                                                                         ; $C4
	const EVENT_GOT_BICYCLE                                                                        ; $C5

; Lavender Town events
	const_next $F0 - 2                                                                             
	const EVENT_POKEMON_TOWER_RIVAL_ON_LEFT                                                        ; $EE
	const EVENT_BEAT_POKEMON_TOWER_RIVAL                                                           ; $EF
	const_skip	                                                                                   ; $F0
	const EVENT_BEAT_POKEMONTOWER_3_TRAINER_0	                                                   ; $F1
	const EVENT_BEAT_POKEMONTOWER_3_TRAINER_1	                                                   ; $F2
	const EVENT_BEAT_POKEMONTOWER_3_TRAINER_2	                                                   ; $F3
	const EVENT_BEAT_POKEMONTOWER_3_TRAINER_3	           ; New trainer added by G-Dubs           ; $F4
	const EVENT_BEAT_POKEMONTOWER_3_TRAINER_4	           ; New trainer added by G-Dubs           ; $F5
	const_skip 3 	                                       ; Formerly const_skip 5                 ; $F6 - $F8
	const EVENT_BEAT_POKEMONTOWER_4_TRAINER_0	                                                   ; $F9
	const EVENT_BEAT_POKEMONTOWER_4_TRAINER_1	                                                   ; $FA
	const EVENT_BEAT_POKEMONTOWER_4_TRAINER_2	                                                   ; $FB
	const EVENT_BEAT_POKEMONTOWER_4_TRAINER_3	           ; New trainer added by G-Dubs           ; $FC
	const EVENT_BEAT_POKEMONTOWER_4_TRAINER_4	           ; New trainer added by G-Dubs           ; $FD
	const_skip 4 	                                       ; Formerly const_skip 6                 ; $FE - $101
	const EVENT_BEAT_POKEMONTOWER_5_TRAINER_0		                                               ; $102
	const EVENT_BEAT_POKEMONTOWER_5_TRAINER_1	                                                   ; $103
	const EVENT_BEAT_POKEMONTOWER_5_TRAINER_2		                                               ; $104
	const EVENT_BEAT_POKEMONTOWER_5_TRAINER_3	                                                   ; $105
	const EVENT_BEAT_POKEMONTOWER_5_TRAINER_4	           ; New trainer added by G-Dubs           ; $106
	const_skip                                                                                     ; $107
	const EVENT_IN_PURIFIED_ZONE	                                                               ; $108
	const_skip 8                                           ; Formerly const_skip                   ; $109 - $10F  	                                                                                   ; $109
	const EVENT_BEAT_POKEMONTOWER_6_TRAINER_0	                                                   ; $110
	const EVENT_BEAT_POKEMONTOWER_6_TRAINER_1	                                                   ; $111
	const EVENT_BEAT_POKEMONTOWER_6_TRAINER_2	                                                   ; $112
	const EVENT_BEAT_POKEMONTOWER_6_TRAINER_3              ; New trainer added by G-Dubs           ; $113
	const EVENT_BEAT_POKEMONTOWER_6_TRAINER_4              ; New trainer added by G-Dubs           ; $114
	const_skip		                                       ; Formerly const_skip 3                 ; $115
	const EVENT_BEAT_GHOST_MAROWAK	                                                               ; $116
	const_skip	                                                                                   ; $117
	const EVENT_BEAT_POKEMONTOWER_7_JESSIE_JAMES	                                               ; $118
 	const EVENT_POKEMONTOWER_7_JESSIE_JAMES_ON_LEFT	                                               ; $119
    const EVENT_BEAT_POKEMONTOWER_7_TRAINER_0                                                      ; $11A
	const EVENT_BEAT_POKEMONTOWER_7_TRAINER_1                                                      ; $11B
	const EVENT_BEAT_POKEMONTOWER_7_TRAINER_2                                                      ; $11C
	const EVENT_BEAT_POKEMONTOWER_7_TRAINER_3                                                      ; $11D
  	const_skip	                                                                                   ; $11E 
	const EVENT_RESCUED_MR_FUJI_2	                                                               ; $11F
	const_skip 15	                                       ; Formerly const_skip 16                ; $120 - $12E
	const EVENT_GOT_POKE_FLUTE		                                                               ; $12F
	const_skip 30	                                                                               ; $130 - $14E
	const EVENT_GOT_SQUIRTLE_FROM_OFFICER_JENNY	                                                   ; $14F

; Vermilion City events
	const_next $150
	const_skip                                                                                     ; $150
	const EVENT_GOT_BIKE_VOUCHER                                                                   ; $151
	const EVENT_LEFT_FANCLUB_AFTER_BIKE_VOUCHER                                                    ; $152
	const_skip 3                                                                                   ; $153 - $155
	const EVENT_SEEL_FAN_BOAST                                                                     ; $156
	const EVENT_PIKACHU_FAN_BOAST                                                                  ; $157
	const_skip 8                                                                                   ; $158 - $15F
	const EVENT_2ND_LOCK_OPENED                                                                    ; $160
	const EVENT_1ST_LOCK_OPENED                                                                    ; $161
	const EVENT_BEAT_VERMILION_GYM_TRAINER_0                                                       ; $162
	const EVENT_BEAT_VERMILION_GYM_TRAINER_1                                                       ; $163
	const EVENT_BEAT_VERMILION_GYM_TRAINER_2                                                       ; $164
	const EVENT_BEAT_VERMILION_GYM_TRAINER_3     ; New trainer added by G-Dubs                     ; $165
	const EVENT_BEAT_VERMILION_GYM_TRAINER_4     ; New trainer added by G-Dubs                     ; $166
	const EVENT_BEAT_VERMILION_GYM_TRAINER_5     ; New trainer added by G-Dubs                     ; $167
    const EVENT_BEAT_VERMILION_GYM_TRAINER_6     ; New trainer added by G-Dubs                     ; $168
	const_skip                                                                                     ; $169
	const EVENT_GOT_TM24                                                                           ; $16A
	const EVENT_BEAT_LT_SURGE                                                                      ; $16B

; Celadon City events
	const_next $180
	const EVENT_GOT_TM41                                                                           ; $180
	const_skip 11                                                                                  ; $181 - $18B
	const EVENT_GOT_TM13                                                                           ; $18C
	const EVENT_GOT_TM48                                                                           ; $18D
	const EVENT_GOT_TM49                                                                           ; $18E
	const EVENT_GOT_TM18                                                                           ; $18F
	const_skip 24                                                                                  ; $190 - $1A7
	const EVENT_GOT_TM21                                                                           ; $1A8
	const EVENT_BEAT_ERIKA                                                                         ; $1A9
	const EVENT_BEAT_CELADON_GYM_TRAINER_0                                                         ; $1AA
	const EVENT_BEAT_CELADON_GYM_TRAINER_1                                                         ; $1AB
	const EVENT_BEAT_CELADON_GYM_TRAINER_2                                                         ; $1AC
	const EVENT_BEAT_CELADON_GYM_TRAINER_3                                                         ; $1AD
	const EVENT_BEAT_CELADON_GYM_TRAINER_4                                                         ; $1AE
	const EVENT_BEAT_CELADON_GYM_TRAINER_5                                                         ; $1AF
	const EVENT_BEAT_CELADON_GYM_TRAINER_6                                                         ; $1B0
	const_skip 7                                                                                   ; $1B1 - $1B7
	const EVENT_1B8 ; ???                                                                          ; $1B8
	const EVENT_FOUND_ROCKET_HIDEOUT                                                               ; $1B9
	const EVENT_GOT_10_COINS                                                                       ; $1BA
	const EVENT_GOT_20_COINS                                                                       ; $1BB
	const EVENT_GOT_20_COINS_2                                                                     ; $1BC
	const_skip 2                                                                                   ; $1BD - $1BE
	const EVENT_1BF ; ???                                                                          ; $1BF
	const_skip 32                                                                                  ; $1C0 - $1DF
	const EVENT_GOT_COIN_CASE                                                                      ; $1E0

; Fuchsia City events
	const_next $238	
	const EVENT_GOT_HM04																		   ; $238
	const EVENT_GAVE_GOLD_TEETH																	   ; $239
	const_skip 20																				   ; $23A - $24D
	const EVENT_SAFARI_GAME_OVER																   ; $24E
	const EVENT_IN_SAFARI_ZONE																	   ; $24F
	const_skip 8																				   ; $250 - $257
	const EVENT_GOT_TM06																		   ; $258
	const EVENT_BEAT_KOGA																		   ; $259
	const EVENT_BEAT_FUCHSIA_GYM_TRAINER_0														   ; $25A
	const EVENT_BEAT_FUCHSIA_GYM_TRAINER_1														   ; $25B
	const EVENT_BEAT_FUCHSIA_GYM_TRAINER_2				                                           ; $25C		
	const EVENT_BEAT_FUCHSIA_GYM_TRAINER_3														   ; $25D
	const EVENT_BEAT_FUCHSIA_GYM_TRAINER_4														   ; $25E
	const EVENT_BEAT_FUCHSIA_GYM_TRAINER_5														   ; $25F
	
; Cinnabar Island events
	const_next $278
	const EVENT_MANSION_SWITCH_ON                                                                  ; $278
	const_skip 16                                                                                  ; $279 - $288
	const EVENT_BEAT_MANSION_1_TRAINER_0                                                           ; $289
	const_skip 14                                                                                  ; $28A - $297
	const EVENT_GOT_TM38                                                                           ; $298
	const EVENT_BEAT_BLAINE                                                                        ; $299
	const EVENT_BEAT_CINNABAR_GYM_TRAINER_0                                                        ; $29A
	const EVENT_BEAT_CINNABAR_GYM_TRAINER_1                                                        ; $29B
	const EVENT_BEAT_CINNABAR_GYM_TRAINER_2                                                        ; $29C
	const EVENT_BEAT_CINNABAR_GYM_TRAINER_3                                                        ; $29D
	const EVENT_BEAT_CINNABAR_GYM_TRAINER_4                                                        ; $29E
	const EVENT_BEAT_CINNABAR_GYM_TRAINER_5                                                        ; $29F
	const EVENT_BEAT_CINNABAR_GYM_TRAINER_6                                                        ; $2A0
	const_skip 6                                                                                   ; $2A1 - $2A6
	const EVENT_2A7 ; ???                                                                          ; $2A7
	const EVENT_CINNABAR_GYM_GATE0_UNLOCKED                                                        ; $2A8  
    const EVENT_CINNABAR_GYM_GATE1_UNLOCKED                                                        ; $2A9  
    const EVENT_CINNABAR_GYM_GATE2_UNLOCKED                                                        ; $2AA  
    const EVENT_CINNABAR_GYM_GATE3_UNLOCKED                                                        ; $2AB  
    const EVENT_CINNABAR_GYM_GATE4_UNLOCKED                                                        ; $2AC  
    const EVENT_CINNABAR_GYM_GATE5_UNLOCKED                                                        ; $2AD  
    const EVENT_CINNABAR_GYM_GATE6_UNLOCKED                                                        ; $2AE  
	const_skip 40                                                                                  ; $2AF - $2D6
	const EVENT_GOT_TM35                                                                           ; $2D7
	const_skip 8                                                                                   ; $2D8 - $2DF
	const EVENT_GAVE_FOSSIL_TO_LAB                                                                 ; $2E0
	const EVENT_LAB_STILL_REVIVING_FOSSIL                                                          ; $2E1
	const EVENT_LAB_HANDING_OVER_FOSSIL_MON                                                        ; $2E2

; Saffron City events
	const_next $340
	const EVENT_GOT_TM31	                                                                       ; $340
	const_skip 15	                                                                               ; $341 - $34F
	const EVENT_DEFEATED_FIGHTING_DOJO		                                                       ; $350
	const EVENT_BEAT_KARATE_MASTER		                                                           ; $351
	const EVENT_BEAT_FIGHTING_DOJO_TRAINER_0		                                               ; $352
	const EVENT_BEAT_FIGHTING_DOJO_TRAINER_1			                                           ; $353
	const EVENT_BEAT_FIGHTING_DOJO_TRAINER_2			                                           ; $354
	const EVENT_BEAT_FIGHTING_DOJO_TRAINER_3				                                       ; $355
	const EVENT_GOT_HITMONLEE			                                                           ; $356
	const EVENT_GOT_HITMONCHAN				                                                       ; $357
	const_skip 8		                                                                           ; $358 - $35F
	const EVENT_GOT_TM46                                                                           ; $360
	const EVENT_BEAT_SABRINA	                                                                   ; $361
	const EVENT_BEAT_SAFFRON_GYM_TRAINER_0	                                                       ; $362
	const EVENT_BEAT_SAFFRON_GYM_TRAINER_1					                                       ; $363	
	const EVENT_BEAT_SAFFRON_GYM_TRAINER_2	                                                       ; $364
	const EVENT_BEAT_SAFFRON_GYM_TRAINER_3	                                                       ; $365
	const EVENT_BEAT_SAFFRON_GYM_TRAINER_4	                                                       ; $366
	const EVENT_BEAT_SAFFRON_GYM_TRAINER_5	                                                       ; $367
	const EVENT_BEAT_SAFFRON_GYM_TRAINER_6	                                                       ; $368
	const_skip 46	                                                                               ; $369 - $394
	const EVENT_SILPH_CO_RECEPTIONIST_AT_DESK	                                                   ; $395
	const_skip 24	                                                                               ; $396 - $3AD
	const EVENT_GOT_TM29	                                                                       ; $3AE

; Route 1 events
	const_next $3C0                                                                                
	const EVENT_GOT_POTION_SAMPLE                                                                  ; $3C0

; Route 2 events
	const_next $3D8                                                                                
	const EVENT_GOT_HM05                                                                           ; $3D8

; Route 3 events
	const_next $3E0
	const_skip 2                                                                                   ; $3E0
	const EVENT_BEAT_ROUTE_3_TRAINER_0                                                             ; $3E1
	const EVENT_BEAT_ROUTE_3_TRAINER_1                                                             ; $3E2
	const EVENT_BEAT_ROUTE_3_TRAINER_2                                                             ; $3E3
	const EVENT_BEAT_ROUTE_3_TRAINER_3                                                             ; $3E4
	const EVENT_BEAT_ROUTE_3_TRAINER_4                                                             ; $3E5
	const EVENT_BEAT_ROUTE_3_TRAINER_5                                                             ; $3E6
	const EVENT_BEAT_ROUTE_3_TRAINER_6                                                             ; $3E7
	const EVENT_BEAT_ROUTE_3_TRAINER_7                                                             ; $3E8
	const EVENT_BEAT_ROUTE_3_TRAINER_8      ; New trainer added by G-Dubs                          ; $3E9
	const EVENT_BEAT_ROUTE_3_TRAINER_9      ; New trainer added by G-Dubs                          ; $3EA

; Route 4 events
	const_next $3F0
	const_skip                                                                                     ; $3F0                                                                           
	const EVENT_BEAT_ROUTE_4_TRAINER_0      ; New trainer added by G-Dubs                          ; $3F1
    const EVENT_BEAT_ROUTE_4_TRAINER_1                                                             ; $3F2
	const EVENT_BEAT_ROUTE_4_TRAINER_2      ; New trainer added by G-Dubs                          ; $3F3
	const EVENT_BEAT_ROUTE_4_TRAINER_3      ; New trainer added by G-Dubs                          ; $3F4
	const_skip 12                                                                                  ; $3F5 - $400
	const EVENT_BOUGHT_MAGIKARP                                                                    ; $401

; Route 5 events                            ; Route 5 events section added by G-Dubs
    const_next $408
	const_skip                                                                                     ; $408
    const EVENT_BEAT_ROUTE_5_TRAINER_0      ; New trainer added by G-Dubs                          ; $409
	const EVENT_BEAT_ROUTE_5_TRAINER_1      ; New trainer added by G-Dubs                          ; $40A
	const EVENT_BEAT_ROUTE_5_TRAINER_2      ; New trainer added by G-Dubs                          ; $40B
	const EVENT_BEAT_ROUTE_5_TRAINER_3      ; New trainer added by G-Dubs                          ; $40C
	const EVENT_BEAT_ROUTE_5_TRAINER_4      ; New trainer added by G-Dubs                          ; $40D
	const EVENT_BEAT_ROUTE_5_TRAINER_5      ; New trainer added by G-Dubs                          ; $40E

; Route 6 events
	const_next $410
	const_skip																					   ; $410
	const EVENT_BEAT_ROUTE_6_TRAINER_0                                                             ; $411
	const EVENT_BEAT_ROUTE_6_TRAINER_1                                                             ; $412
	const EVENT_BEAT_ROUTE_6_TRAINER_2                                                             ; $413
	const EVENT_BEAT_ROUTE_6_TRAINER_3                                                             ; $414
	const EVENT_BEAT_ROUTE_6_TRAINER_4                                                             ; $415
	const EVENT_BEAT_ROUTE_6_TRAINER_5                                                             ; $416
	const EVENT_BEAT_ROUTE_6_TRAINER_6      ; New trainer added by G-Dubs                          ; $417
	const EVENT_BEAT_ROUTE_6_TRAINER_7      ; New trainer added by G-Dubs                          ; $418
	const EVENT_BEAT_ROUTE_6_TRAINER_8      ; New trainer added by G-Dubs                          ; $419
	const EVENT_BEAT_ROUTE_6_TRAINER_9      ; New trainer added by G-Dubs                          ; $41A
	const EVENT_BEAT_ROUTE_6_TRAINER_10     ; New trainer added by G-Dubs                          ; $41B

; Route 8 events
	const_next $430
	const_skip			                                                                           ; $430
	const EVENT_BEAT_ROUTE_8_TRAINER_0			 	                                               ; $431
	const EVENT_BEAT_ROUTE_8_TRAINER_1		                                                       ; $432
	const EVENT_BEAT_ROUTE_8_TRAINER_2	                                                           ; $433
	const EVENT_BEAT_ROUTE_8_TRAINER_3		                                                       ; $434
	const EVENT_BEAT_ROUTE_8_TRAINER_4	                                                           ; $435
	const EVENT_BEAT_ROUTE_8_TRAINER_5	                                                           ; $436
	const EVENT_BEAT_ROUTE_8_TRAINER_6	                                                 	       ; $437
	const EVENT_BEAT_ROUTE_8_TRAINER_7                                                             ; $438
	const EVENT_BEAT_ROUTE_8_TRAINER_8                                                             ; $439

; Route 9 events
	const_next $440
	const_skip	                                                                                   ; $440
	const EVENT_BEAT_ROUTE_9_TRAINER_0			                                  	               ; $441
	const EVENT_BEAT_ROUTE_9_TRAINER_1		                                                       ; $442
	const EVENT_BEAT_ROUTE_9_TRAINER_2	                                                           ; $443
	const EVENT_BEAT_ROUTE_9_TRAINER_3                                                             ; $444
	const EVENT_BEAT_ROUTE_9_TRAINER_4                                                             ; $445
	const EVENT_BEAT_ROUTE_9_TRAINER_5                                                             ; $446
	const EVENT_BEAT_ROUTE_9_TRAINER_6                                                             ; $447
	const EVENT_BEAT_ROUTE_9_TRAINER_7                                                             ; $448
	const EVENT_BEAT_ROUTE_9_TRAINER_8	                                                           ; $449

; Route 10 events
	const_next $450
	const_skip	                                                                                   ; $450
	const EVENT_BEAT_ROUTE_10_TRAINER_0                                                            ; $451
	const EVENT_BEAT_ROUTE_10_TRAINER_1                                                            ; $452
	const EVENT_BEAT_ROUTE_10_TRAINER_2                                                            ; $453
	const EVENT_BEAT_ROUTE_10_TRAINER_3                                                            ; $454
	const EVENT_BEAT_ROUTE_10_TRAINER_4                                                            ; $455
	const EVENT_BEAT_ROUTE_10_TRAINER_5                                                            ; $456
	const_skip 2                                                                                   ; $457 - $458
	const EVENT_BEAT_ROCK_TUNNEL_1_TRAINER_0	                                                   ; $459
	const EVENT_BEAT_ROCK_TUNNEL_1_TRAINER_1                                                       ; $45A
	const EVENT_BEAT_ROCK_TUNNEL_1_TRAINER_2                                                       ; $45B
	const EVENT_BEAT_ROCK_TUNNEL_1_TRAINER_3                                                       ; $45C
	const EVENT_BEAT_ROCK_TUNNEL_1_TRAINER_4                                                       ; $45D
	const EVENT_BEAT_ROCK_TUNNEL_1_TRAINER_5                                                       ; $45E
	const EVENT_BEAT_ROCK_TUNNEL_1_TRAINER_6                                                       ; $45F
	const_skip                                                                                     ; $460
	const EVENT_BEAT_POWER_PLANT_VOLTORB_0                                                         ; $461
	const EVENT_BEAT_POWER_PLANT_VOLTORB_1                                                         ; $462
	const EVENT_BEAT_POWER_PLANT_VOLTORB_2                                                         ; $463
	const EVENT_BEAT_POWER_PLANT_VOLTORB_3                                                         ; $464
	const EVENT_BEAT_POWER_PLANT_VOLTORB_4                                                         ; $465
	const EVENT_BEAT_POWER_PLANT_VOLTORB_5                                                         ; $466
	const EVENT_BEAT_POWER_PLANT_VOLTORB_6                                                         ; $467
	const EVENT_BEAT_POWER_PLANT_VOLTORB_7                                                         ; $468
	const EVENT_BEAT_ZAPDOS                                                                        ; $469

; Route 11 events
	const_next $470                                                           
	const_skip                                                                                     ; $470
	const EVENT_BEAT_ROUTE_11_TRAINER_0                                                            ; $471
	const EVENT_BEAT_ROUTE_11_TRAINER_1                                                            ; $472
	const EVENT_BEAT_ROUTE_11_TRAINER_2                                                            ; $473
	const EVENT_BEAT_ROUTE_11_TRAINER_3                                                            ; $474
	const EVENT_BEAT_ROUTE_11_TRAINER_4                                                            ; $475
	const EVENT_BEAT_ROUTE_11_TRAINER_5                                                            ; $476
	const EVENT_BEAT_ROUTE_11_TRAINER_6                                                            ; $477
	const EVENT_BEAT_ROUTE_11_TRAINER_7                                                            ; $478
	const EVENT_BEAT_ROUTE_11_TRAINER_8                                                            ; $479
	const EVENT_BEAT_ROUTE_11_TRAINER_9                                                            ; $47A
	const EVENT_BEAT_ROUTE_11_TRAINER_10    ; New trainer added by G-Dubs                          ; $47B
	const EVENT_BEAT_ROUTE_11_TRAINER_11    ; New trainer added by G-Dubs                          ; $47C
	const_skip 2                            ; Formerly const_skip 4                                ; $47D - $47E 
	const EVENT_GOT_ITEMFINDER                                                                     ; $47F

; Route 12 events
	const_next $480
	const EVENT_GOT_TM39                                                                           ; $480
	const_skip                                                                                     ; $481
	const EVENT_BEAT_ROUTE_12_TRAINER_0                                                            ; $482
	const EVENT_BEAT_ROUTE_12_TRAINER_1                                                            ; $483
	const EVENT_BEAT_ROUTE_12_TRAINER_2                                                            ; $484
	const EVENT_BEAT_ROUTE_12_TRAINER_3                                                            ; $485
	const EVENT_BEAT_ROUTE_12_TRAINER_4                                                            ; $486
	const EVENT_BEAT_ROUTE_12_TRAINER_5                                                            ; $487
	const EVENT_BEAT_ROUTE_12_TRAINER_6                                                            ; $488
	const EVENT_BEAT_ROUTE_12_TRAINER_7     ; New trainer added by G-Dubs                          ; $489
	const EVENT_BEAT_ROUTE_12_TRAINER_8     ; New trainer added by G-Dubs                          ; $48A
	const EVENT_BEAT_ROUTE_12_TRAINER_9     ; New trainer added by G-Dubs                          ; $48B
	const EVENT_BEAT_ROUTE_12_TRAINER_10    ; New trainer added by G-Dubs                          ; $48C
	const_skip                              ; Formerly const_skip 5                                ; $48D 
	const EVENT_FIGHT_ROUTE12_SNORLAX                                                              ; $49E
	const EVENT_BEAT_ROUTE12_SNORLAX                                                               ; $48F

; Route 13 events
	const_next $490
	const_skip
	const EVENT_BEAT_ROUTE_13_TRAINER_0
	const EVENT_BEAT_ROUTE_13_TRAINER_1
	const EVENT_BEAT_ROUTE_13_TRAINER_2
	const EVENT_BEAT_ROUTE_13_TRAINER_3
	const EVENT_BEAT_ROUTE_13_TRAINER_4
	const EVENT_BEAT_ROUTE_13_TRAINER_5
	const EVENT_BEAT_ROUTE_13_TRAINER_6
	const EVENT_BEAT_ROUTE_13_TRAINER_7
	const EVENT_BEAT_ROUTE_13_TRAINER_8
	const EVENT_BEAT_ROUTE_13_TRAINER_9

; Route 14 events
	const_next $4A0
	const_skip
	const EVENT_BEAT_ROUTE_14_TRAINER_0
	const EVENT_BEAT_ROUTE_14_TRAINER_1
	const EVENT_BEAT_ROUTE_14_TRAINER_2
	const EVENT_BEAT_ROUTE_14_TRAINER_3
	const EVENT_BEAT_ROUTE_14_TRAINER_4
	const EVENT_BEAT_ROUTE_14_TRAINER_5
	const EVENT_BEAT_ROUTE_14_TRAINER_6
	const EVENT_BEAT_ROUTE_14_TRAINER_7
	const EVENT_BEAT_ROUTE_14_TRAINER_8
	const EVENT_BEAT_ROUTE_14_TRAINER_9

; Route 15 events
	const_next $4B0
	const EVENT_GOT_EXP_ALL
	const EVENT_BEAT_ROUTE_15_TRAINER_0
	const EVENT_BEAT_ROUTE_15_TRAINER_1
	const EVENT_BEAT_ROUTE_15_TRAINER_2
	const EVENT_BEAT_ROUTE_15_TRAINER_3
	const EVENT_BEAT_ROUTE_15_TRAINER_4
	const EVENT_BEAT_ROUTE_15_TRAINER_5
	const EVENT_BEAT_ROUTE_15_TRAINER_6
	const EVENT_BEAT_ROUTE_15_TRAINER_7
	const EVENT_BEAT_ROUTE_15_TRAINER_8
	const EVENT_BEAT_ROUTE_15_TRAINER_9

; Route 16 events
	const_next $4C0
	const_skip
	const EVENT_BEAT_ROUTE_16_TRAINER_0
	const EVENT_BEAT_ROUTE_16_TRAINER_1
	const EVENT_BEAT_ROUTE_16_TRAINER_2
	const EVENT_BEAT_ROUTE_16_TRAINER_3
	const EVENT_BEAT_ROUTE_16_TRAINER_4
	const EVENT_BEAT_ROUTE_16_TRAINER_5
	const_skip
	const EVENT_FIGHT_ROUTE16_SNORLAX
	const EVENT_BEAT_ROUTE16_SNORLAX
	const_skip 4
	const EVENT_GOT_HM02
	const EVENT_RESCUED_MR_FUJI             ; Why is this here?

; Route 17 events
	const_next $4D0
	const_skip
	const EVENT_BEAT_ROUTE_17_TRAINER_0
	const EVENT_BEAT_ROUTE_17_TRAINER_1
	const EVENT_BEAT_ROUTE_17_TRAINER_2
	const EVENT_BEAT_ROUTE_17_TRAINER_3
	const EVENT_BEAT_ROUTE_17_TRAINER_4
	const EVENT_BEAT_ROUTE_17_TRAINER_5
	const EVENT_BEAT_ROUTE_17_TRAINER_6
	const EVENT_BEAT_ROUTE_17_TRAINER_7
	const EVENT_BEAT_ROUTE_17_TRAINER_8
	const EVENT_BEAT_ROUTE_17_TRAINER_9

; Route 18 events
	const_next $4E0
	const_skip
	const EVENT_BEAT_ROUTE_18_TRAINER_0
	const EVENT_BEAT_ROUTE_18_TRAINER_1
	const EVENT_BEAT_ROUTE_18_TRAINER_2

; Route 19 events
	const_next $4F0
	const_skip
	const EVENT_BEAT_ROUTE_19_TRAINER_0
	const EVENT_BEAT_ROUTE_19_TRAINER_1
	const EVENT_BEAT_ROUTE_19_TRAINER_2
	const EVENT_BEAT_ROUTE_19_TRAINER_3
	const EVENT_BEAT_ROUTE_19_TRAINER_4
	const EVENT_BEAT_ROUTE_19_TRAINER_5
	const EVENT_BEAT_ROUTE_19_TRAINER_6
	const EVENT_BEAT_ROUTE_19_TRAINER_7
	const EVENT_BEAT_ROUTE_19_TRAINER_8
	const EVENT_BEAT_ROUTE_19_TRAINER_9

; Route 20 events
	const_next $500
	const EVENT_IN_SEAFOAM_ISLANDS
	const EVENT_BEAT_ROUTE_20_TRAINER_0
	const EVENT_BEAT_ROUTE_20_TRAINER_1
	const EVENT_BEAT_ROUTE_20_TRAINER_2
	const EVENT_BEAT_ROUTE_20_TRAINER_3
	const EVENT_BEAT_ROUTE_20_TRAINER_4
	const EVENT_BEAT_ROUTE_20_TRAINER_5
	const EVENT_BEAT_ROUTE_20_TRAINER_6
	const EVENT_BEAT_ROUTE_20_TRAINER_7
	const EVENT_BEAT_ROUTE_20_TRAINER_8
	const EVENT_BEAT_ROUTE_20_TRAINER_9
	const_skip 3
	const EVENT_SEAFOAM1_BOULDER1_DOWN_HOLE
	const EVENT_SEAFOAM1_BOULDER2_DOWN_HOLE

; Route 21 events
	const_next $510
	const_skip
	const EVENT_BEAT_ROUTE_21_TRAINER_0
	const EVENT_BEAT_ROUTE_21_TRAINER_1
	const EVENT_BEAT_ROUTE_21_TRAINER_2
	const EVENT_BEAT_ROUTE_21_TRAINER_3
	const EVENT_BEAT_ROUTE_21_TRAINER_4
	const EVENT_BEAT_ROUTE_21_TRAINER_5
	const EVENT_BEAT_ROUTE_21_TRAINER_6
	const EVENT_BEAT_ROUTE_21_TRAINER_7
	const EVENT_BEAT_ROUTE_21_TRAINER_8

; Route 22 events
	const_next $520
	const EVENT_1ST_ROUTE22_RIVAL_BATTLE
	const EVENT_2ND_ROUTE22_RIVAL_BATTLE
	const_skip 3
	const EVENT_BEAT_ROUTE22_RIVAL_1ST_BATTLE
	const EVENT_BEAT_ROUTE22_RIVAL_2ND_BATTLE
	const EVENT_ROUTE22_RIVAL_WANTS_BATTLE

; Route 23 events
	const_next $530
	const EVENT_PASSED_CASCADEBADGE_CHECK
	const EVENT_PASSED_THUNDERBADGE_CHECK
	const EVENT_PASSED_RAINBOWBADGE_CHECK
	const EVENT_PASSED_SOULBADGE_CHECK
	const EVENT_PASSED_MARSHBADGE_CHECK
	const EVENT_PASSED_VOLCANOBADGE_CHECK
	const EVENT_PASSED_EARTHBADGE_CHECK
	const_skip
	const EVENT_VICTORY_ROAD_2_BOULDER_ON_SWITCH1
	const EVENT_BEAT_VICTORY_ROAD_2_TRAINER_0
	const EVENT_BEAT_VICTORY_ROAD_2_TRAINER_1
	const EVENT_BEAT_VICTORY_ROAD_2_TRAINER_2
	const EVENT_BEAT_VICTORY_ROAD_2_TRAINER_3
	const EVENT_BEAT_VICTORY_ROAD_2_TRAINER_4
	const EVENT_BEAT_MOLTRES
	const EVENT_VICTORY_ROAD_2_BOULDER_ON_SWITCH2  

; Route 24 events
	const_next $540
	const EVENT_GOT_NUGGET                                                                         ; 540
	const EVENT_BEAT_ROUTE24_ROCKET                                                                ; 541
	const EVENT_BEAT_ROUTE_24_TRAINER_0                                                            ; 542
	const EVENT_BEAT_ROUTE_24_TRAINER_1                                                            ; 543
	const EVENT_BEAT_ROUTE_24_TRAINER_2                                                            ; 544
	const EVENT_BEAT_ROUTE_24_TRAINER_3                                                            ; 545
	const EVENT_BEAT_ROUTE_24_TRAINER_4                                                            ; 546
	const EVENT_BEAT_ROUTE_24_TRAINER_5                                                            ; 547
	const EVENT_BEAT_ROUTE_24_TRAINER_6          ; New trainer added by G-Dubs                     ; 548
    const_skip                                                                                     ; 549
	const EVENT_NUGGET_REWARD_AVAILABLE                                                            ; 54A

; Route 25 events
	const_next $550 - 1
	const EVENT_54F                              ; $550 - 1 (lol)                                  ; $54F 
	const EVENT_MET_BILL	                                                                       ; $550
	const EVENT_BEAT_ROUTE_25_TRAINER_0                                                            ; $551
	const EVENT_BEAT_ROUTE_25_TRAINER_1                                                            ; $552
	const EVENT_BEAT_ROUTE_25_TRAINER_2                                                            ; $553
	const EVENT_BEAT_ROUTE_25_TRAINER_3                                                            ; $554
	const EVENT_BEAT_ROUTE_25_TRAINER_4                                                            ; $555
	const EVENT_BEAT_ROUTE_25_TRAINER_5                                                            ; $556
	const EVENT_BEAT_ROUTE_25_TRAINER_6                                                            ; $557
	const EVENT_BEAT_ROUTE_25_TRAINER_7                                                            ; $558
	const EVENT_BEAT_ROUTE_25_TRAINER_8                                                            ; $559
	const_skip                                                                                     ; $55A
	const EVENT_USED_CELL_SEPARATOR_ON_BILL                                                        ; $55B
	const EVENT_GOT_SS_TICKET                                                                      ; $55C
	const EVENT_MET_BILL_2                                                                         ; $55D
	const EVENT_BILL_SAID_USE_CELL_SEPARATOR                                                       ; $55E
	const EVENT_LEFT_BILLS_HOUSE_AFTER_HELPING                                                     ; $55F

; Viridian Forest events
	const_next $560
	const_skip 2								 ; Skips const_next and first NPC                  ; $560 - $561
	const EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_0   ; Old NPC replaced with trainer added by G-Dubs   ; $562
	const EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_1                                                     ; $563
	const EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_2                                                     ; $564
	const EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_3                                                     ; $565
	const EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_4                                                     ; $566
	const EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_5                                                     ; $567
	const EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_6   ; New trainer added by Vlad                       ; $568
	const EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_7   ; New trainer added by G-Dubs                     ; $569
	const EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_8   ; New trainer added by G-Dubs                     ; $56A
	const EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_9   ; New trainer added by G-Dubs (Left by Vlad)      ; $56B

; Mt. Moon 1F events
	const_next $570
	const_skip                                                                                     ; $570
	const EVENT_BEAT_MT_MOON_1_TRAINER_0                                                           ; $571  
	const EVENT_BEAT_MT_MOON_1_TRAINER_1                                                           ; $572
	const EVENT_BEAT_MT_MOON_1_TRAINER_2                                                           ; $573
	const EVENT_BEAT_MT_MOON_1_TRAINER_3                                                           ; $574
	const EVENT_BEAT_MT_MOON_1_TRAINER_4                                                           ; $575
	const EVENT_BEAT_MT_MOON_1_TRAINER_5                                                           ; $576
	const EVENT_BEAT_MT_MOON_1_TRAINER_6                                                           ; $577
	const EVENT_BEAT_MT_MOON_1_TRAINER_7         ; New trainer added by G-Dubs                     ; $578
	const EVENT_BEAT_MT_MOON_1_TRAINER_8         ; New trainer added by G-Dubs                     ; $579

; Mt. Moon B2F events                            ; New Section added by Vlad (How did this not break the game?!?)
	const_next $590
	const EVENT_GOT_DOME_FOSSIL                                                                    ; $57A
	const EVENT_BEAT_MT_MOON_EXIT_SUPER_NERD                                                       ; $57B
	const EVENT_BEAT_MT_MOON_3_JESSIE_JAMES                                                        ; $57C
	const EVENT_BEAT_MT_MOON_3_TRAINER_0         ; Trainer from Red & Blue added by G-Dubs         ; $57D
	const EVENT_BEAT_MT_MOON_3_TRAINER_1                                                           ; $57E
	const EVENT_BEAT_MT_MOON_3_TRAINER_2                                                           ; $57F
	const EVENT_BEAT_MT_MOON_3_TRAINER_3         ; Trainer from Red & Blue added by G-Dubs         ; $580
	const EVENT_BEAT_MT_MOON_3_TRAINER_4         ; New trainer added by G-Dubs                     ; $581
	const EVENT_BEAT_MT_MOON_3_TRAINER_5         ; New trainer added by G-Dubs                     ; $582
	const EVENT_57E                                                                                ; $583
	const EVENT_GOT_HELIX_FOSSIL                                                                   ; $584

; S.S. Bow Anne events
	const_next $5C0
	const_skip 3                                 ; Formerly const_skip 4                           ; $5C0 - $5C2
	const EVENT_BEAT_SS_ANNE_5_TRAINER_0		 ; NPC changed to trainer by G-Dubs				   ; $5C3
	const EVENT_BEAT_SS_ANNE_5_TRAINER_1		 ; NPC changed to trainer by G-Dubs				   ; $5C4
	const EVENT_BEAT_SS_ANNE_5_TRAINER_2                                                           ; $5C5
	const EVENT_BEAT_SS_ANNE_5_TRAINER_3                                                           ; $5C6
	const EVENT_BEAT_SS_ANNE_5_TRAINER_4         ; New trainer added by G-Dubs                     ; $5C7
	const EVENT_BEAT_SS_ANNE_5_TRAINER_5                                                           ; $5C8
	const_skip 7                                 ; Formerly const_skip 26                          ; $5C9 - $5CF

; S.S. Anne 2F/Dock Events	                     ; Section added by G-Dubs 
	const_next $5D0
	const EVENT_GOT_HM01                                                                           ; $5D0
	const EVENT_RUBBED_CAPTAINS_BACK                                                               ; $5D1
	const EVENT_SS_ANNE_LEFT                                                                       ; $5D2
	const EVENT_WALKED_PAST_GUARD_AFTER_SS_ANNE_LEFT                                               ; $5D3
	const EVENT_STARTED_WALKING_OUT_OF_DOCK                                                        ; $5D4
	const EVENT_WALKED_OUT_OF_DOCK                                                                 ; $5D5
	const_skip                                   ; Formerly part of const_skip 11                  ; $5D6
    const EVENT_BEAT_SS_ANNE_RIVAL               ; Why wasn't this event in the original code?!?   ; $5E7
	const_skip                                   ; Formerly part of const_skip 11                  ; $5D8
	const EVENT_BEAT_SS_ANNE_6_TRAINER_0		 ; NPC changed to trainer by G-Dubs				   ; $5D9
	const_skip 6                                 ; const_skip added by G-Dubs                      ; $5DA - $5DF

; S.S. Anne 1F Events                            ; New section added by G-Dubs
	const_next $5E0
	const_skip                                                                                     ; $5E0
	const EVENT_BEAT_SS_ANNE_7_TRAINER_0         ; NPC changed to trainer by G-Dubs                ; $5E1
	const_skip 14	                                                                               ; $5E2 - $5EF
	
; S.S. Anne 1F Rooms Events                      ; Section added by G-Dubs
    const_next $5F0
	const_skip	                                 ; const_skip added by G-Dubs                      ; $5F0                                               
	const EVENT_BEAT_SS_ANNE_8_TRAINER_0                                                           ; $5F1
	const EVENT_BEAT_SS_ANNE_8_TRAINER_1                                                           ; $5F2
	const EVENT_BEAT_SS_ANNE_8_TRAINER_2                                                           ; $5F3
	const EVENT_BEAT_SS_ANNE_8_TRAINER_3                                                           ; $5F4
	const EVENT_BEAT_SS_ANNE_8_TRAINER_4         ; NPC changed to trainer by G-Dubs                ; $5F5
	const EVENT_BEAT_SS_ANNE_8_TRAINER_5         ; NPC changed to trainer by G-Dubs                ; $5F6
	const EVENT_BEAT_SS_ANNE_8_TRAINER_6         ; NPC changed to trainer by G-Dubs                ; $5F7
	const EVENT_BEAT_SS_ANNE_8_TRAINER_7         ; NPC changed to trainer by G-Dubs                ; $5F8
	const EVENT_BEAT_SS_ANNE_8_TRAINER_8         ; New trainer added by G-Dubs                     ; $5F9
	const EVENT_BEAT_SS_ANNE_8_TRAINER_9         ; New trainer added by G-Dubs                     ; $5FA
	const EVENT_BEAT_SS_ANNE_8_TRAINER_10        ; NPC changed to trainer by G-Dubs                ; $5FB
	const_skip 4                                 ; Formerly const_skip 12                          ; $5FC - $5FF 
	
; S.S. Anne 2F Rooms Events                      ; Section added by G-Dubs
    const_next $600
	const_skip                                   ; const_skip added by G-Dubs                      ; $600
	const EVENT_BEAT_SS_ANNE_9_TRAINER_0                                                           ; $601
	const EVENT_BEAT_SS_ANNE_9_TRAINER_1                                                           ; $602
	const EVENT_BEAT_SS_ANNE_9_TRAINER_2                                                           ; $603
	const EVENT_BEAT_SS_ANNE_9_TRAINER_3                                                           ; $604
	const EVENT_BEAT_SS_ANNE_9_TRAINER_4         ; NPC changed to trainer by G-Dubs                ; $605
	const EVENT_BEAT_SS_ANNE_9_TRAINER_5         ; NPC changed to trainer by G-Dubs                ; $606
	const EVENT_BEAT_SS_ANNE_9_TRAINER_6         ; NPC changed to trainer by G-Dubs                ; $607
	const EVENT_BEAT_SS_ANNE_9_TRAINER_7         ; NPC changed to trainer by G-Dubs                ; $608
	const EVENT_BEAT_SS_ANNE_9_TRAINER_8         ; NPC changed to trainer by G-Dubs                ; $609
	const EVENT_BEAT_SS_ANNE_9_TRAINER_9         ; New trainer added by G-Dubs                     ; $60A
    const EVENT_BEAT_SS_ANNE_9_TRAINER_10        ; New trainer added by G-Dubs                     ; $60B
	const_skip 4                                 ; Formerly const_skip 12                          ; $60C - $60F

; S.S. Anne B1F Rooms Events                     ; Section added by G-Dubs
    const_next $610
	const_skip                                   ; const_skip added by G-Dubs                      ; $610	
	const EVENT_BEAT_SS_ANNE_10_TRAINER_0                                                          ; $611
	const EVENT_BEAT_SS_ANNE_10_TRAINER_1                                                          ; $612
	const EVENT_BEAT_SS_ANNE_10_TRAINER_2                                                          ; $613
	const EVENT_BEAT_SS_ANNE_10_TRAINER_3                                                          ; $614
	const EVENT_BEAT_SS_ANNE_10_TRAINER_4                                                          ; $615
	const EVENT_BEAT_SS_ANNE_10_TRAINER_5                                                          ; $616
	const_skip 9                                                                                   ; $617 - $61F

; S.S. Anne B1F Events                           ; Section added by G-Dubs
    const_next $620
	const_skip                                   ; const_skip added by G-Dubs                      ; $620
	const EVENT_BEAT_SS_ANNE_11_TRAINER_0        ; New trainer added by G-Dubs                     ; $621
	const_skip 14                                                                                  ; $622 - $62F

; S.S. Anne Kitchen Events                       ; Section added by G-Dubs
	const_next $630
	const_skip 	                                                                                   ; $630
	const EVENT_BEAT_SS_ANNE_12_TRAINER_0        ; NPC changed to trainer by G-Dubs                ; $631
    const EVENT_BEAT_SS_ANNE_12_TRAINER_1        ; NPC changed to trainer by G-Dubs                ; $632
    const EVENT_BEAT_SS_ANNE_12_TRAINER_2        ; NPC changed to trainer by G-Dubs                ; $633
    const EVENT_BEAT_SS_ANNE_12_TRAINER_3		 ; NPC changed to trainer by G-Dubs                ; $634
    const EVENT_BEAT_SS_ANNE_12_TRAINER_4        ; NPC changed to trainer by G-Dubs                ; $635
    const EVENT_BEAT_SS_ANNE_12_TRAINER_5        ; NPC changed to trainer by G-Dubs                ; $636
    const EVENT_BEAT_SS_ANNE_12_TRAINER_6        ; NPC changed to trainer by G-Dubs                ; $637
  
; Victory Road 3F events
	const_next $660
	const EVENT_VICTORY_ROAD_3_BOULDER_ON_SWITCH1
	const EVENT_BEAT_VICTORY_ROAD_3_TRAINER_0
	const EVENT_BEAT_VICTORY_ROAD_3_TRAINER_1
	const EVENT_BEAT_VICTORY_ROAD_3_TRAINER_2
	const EVENT_BEAT_VICTORY_ROAD_3_TRAINER_3
	const_skip
	const EVENT_VICTORY_ROAD_3_BOULDER_ON_SWITCH2

; Rocket Hideout events
	const_next $670
	const_skip
	const EVENT_BEAT_ROCKET_HIDEOUT_1_TRAINER_0
	const EVENT_BEAT_ROCKET_HIDEOUT_1_TRAINER_1
	const EVENT_BEAT_ROCKET_HIDEOUT_1_TRAINER_2
	const EVENT_BEAT_ROCKET_HIDEOUT_1_TRAINER_3
	const EVENT_BEAT_ROCKET_HIDEOUT_1_TRAINER_4
	const_skip
	const EVENT_677 ; ???
	const_skip 7
	const EVENT_67F ; ???
	const_skip
	const EVENT_BEAT_ROCKET_HIDEOUT_2_TRAINER_0
	const_skip 15
	const EVENT_BEAT_ROCKET_HIDEOUT_3_TRAINER_0
	const EVENT_BEAT_ROCKET_HIDEOUT_3_TRAINER_1
	const_skip 13
	const EVENT_6A0
	const_skip
	const EVENT_BEAT_ROCKET_HIDEOUT_4_JESSIE_JAMES
	const EVENT_ROCKET_HIDEOUT_4_JESSIE_JAMES_ON_LEFT
	const EVENT_BEAT_ROCKET_HIDEOUT_4_TRAINER_2
	const EVENT_ROCKET_HIDEOUT_4_DOOR_UNLOCKED
	const EVENT_ROCKET_DROPPED_LIFT_KEY
	const EVENT_BEAT_ROCKET_HIDEOUT_GIOVANNI

; Silph Co. events
	const_next $6F0
	const_skip 2
	const EVENT_BEAT_SILPH_CO_2F_TRAINER_0
	const EVENT_BEAT_SILPH_CO_2F_TRAINER_1
	const EVENT_BEAT_SILPH_CO_2F_TRAINER_2
	const EVENT_BEAT_SILPH_CO_2F_TRAINER_3
	const_skip 7
	const EVENT_SILPH_CO_2_UNLOCKED_DOOR1
	const EVENT_SILPH_CO_2_UNLOCKED_DOOR2
	const EVENT_GOT_TM36
	const_skip 2
	const EVENT_BEAT_SILPH_CO_3F_TRAINER_0
	const EVENT_BEAT_SILPH_CO_3F_TRAINER_1
	const_skip 4
	const EVENT_SILPH_CO_3_UNLOCKED_DOOR1
	const EVENT_SILPH_CO_3_UNLOCKED_DOOR2
	const_skip 8
	const EVENT_BEAT_SILPH_CO_4F_TRAINER_0
	const EVENT_BEAT_SILPH_CO_4F_TRAINER_1
	const EVENT_BEAT_SILPH_CO_4F_TRAINER_2
	const_skip 3
	const EVENT_SILPH_CO_4_UNLOCKED_DOOR1
	const EVENT_SILPH_CO_4_UNLOCKED_DOOR2
	const_skip 8
	const EVENT_BEAT_SILPH_CO_5F_TRAINER_0
	const EVENT_BEAT_SILPH_CO_5F_TRAINER_1
	const EVENT_BEAT_SILPH_CO_5F_TRAINER_2
	const EVENT_BEAT_SILPH_CO_5F_TRAINER_3
	const_skip 2
	const EVENT_SILPH_CO_5_UNLOCKED_DOOR1
	const EVENT_SILPH_CO_5_UNLOCKED_DOOR2
	const EVENT_SILPH_CO_5_UNLOCKED_DOOR3
	const_skip 11
	const EVENT_BEAT_SILPH_CO_6F_TRAINER_0
	const EVENT_BEAT_SILPH_CO_6F_TRAINER_1
	const EVENT_BEAT_SILPH_CO_6F_TRAINER_2
	const_skip 6
	const EVENT_SILPH_CO_6_UNLOCKED_DOOR
	const EVENT_BEAT_SILPH_CO_RIVAL
	const_skip 4
	const EVENT_BEAT_SILPH_CO_7F_TRAINER_0
	const EVENT_BEAT_SILPH_CO_7F_TRAINER_1
	const EVENT_BEAT_SILPH_CO_7F_TRAINER_2
	const EVENT_BEAT_SILPH_CO_7F_TRAINER_3
	const_skip 3
	const EVENT_SILPH_CO_7_UNLOCKED_DOOR1
	const EVENT_SILPH_CO_7_UNLOCKED_DOOR2
	const EVENT_SILPH_CO_7_UNLOCKED_DOOR3
	const_skip 3
	const EVENT_BEAT_SILPH_CO_8F_TRAINER_0
	const EVENT_BEAT_SILPH_CO_8F_TRAINER_1
	const EVENT_BEAT_SILPH_CO_8F_TRAINER_2
	const_skip 3
	const EVENT_SILPH_CO_8_UNLOCKED_DOOR
	const_skip 9
	const EVENT_BEAT_SILPH_CO_9F_TRAINER_0
	const EVENT_BEAT_SILPH_CO_9F_TRAINER_1
	const EVENT_BEAT_SILPH_CO_9F_TRAINER_2
	const_skip 3
	const EVENT_SILPH_CO_9_UNLOCKED_DOOR1
	const EVENT_SILPH_CO_9_UNLOCKED_DOOR2
	const EVENT_SILPH_CO_9_UNLOCKED_DOOR3
	const EVENT_SILPH_CO_9_UNLOCKED_DOOR4
	const_skip 5
	const EVENT_BEAT_SILPH_CO_10F_TRAINER_0
	const EVENT_BEAT_SILPH_CO_10F_TRAINER_1
	const_skip 5
	const EVENT_SILPH_CO_10_UNLOCKED_DOOR
	const_skip 7
	const EVENT_780
	const EVENT_781
	const EVENT_782
	const_skip
	const EVENT_BEAT_SILPH_CO_11F_JESSIE_JAMES
	const EVENT_BEAT_SILPH_CO_11F_TRAINER_0
	const_skip 2
	const EVENT_SILPH_CO_11_UNLOCKED_DOOR
	const_skip 4
	const EVENT_GOT_MASTER_BALL
	const_skip
	const EVENT_BEAT_SILPH_CO_GIOVANNI

; Pokémon Mansion events
	const_next $800
	const_skip
	const EVENT_BEAT_MANSION_2_TRAINER_0
	const_skip 15
	const EVENT_BEAT_MANSION_3_TRAINER_0
	const EVENT_BEAT_MANSION_3_TRAINER_1
	const_skip 14
	const EVENT_BEAT_MANSION_4_TRAINER_0
	const EVENT_BEAT_MANSION_4_TRAINER_1

; Safari Zone events
	const_next $880
	const EVENT_GOT_HM03

; Cerulean Cave events
	const_next $8C0
	const_skip
	const EVENT_BEAT_MEWTWO

; Indigo Plateau events
	const_next $8E0
DEF INDIGO_PLATEAU_EVENTS_START EQU const_value
	const_skip
	const EVENT_BEAT_LORELEIS_ROOM_TRAINER_0
	const_skip 4
	const EVENT_AUTOWALKED_INTO_LORELEIS_ROOM
	const_skip 2
	const EVENT_BEAT_BRUNOS_ROOM_TRAINER_0
	const_skip 4
	const EVENT_AUTOWALKED_INTO_BRUNOS_ROOM
	const_skip 2
	const EVENT_BEAT_AGATHAS_ROOM_TRAINER_0
	const_skip 4
	const EVENT_AUTOWALKED_INTO_AGATHAS_ROOM
	const_skip 2
	const EVENT_BEAT_LANCES_ROOM_TRAINER_0
	const_skip 4
	const EVENT_BEAT_LANCE
	const EVENT_LANCES_ROOM_LOCK_DOOR
	const_skip
	const EVENT_BEAT_CHAMPION_RIVAL
	const_skip 5
	const_skip
DEF INDIGO_PLATEAU_EVENTS_END EQU const_value - 1

; Victory Road 1F events
	const_next $910
	const_skip
	const EVENT_BEAT_VICTORY_ROAD_1_TRAINER_0
	const EVENT_BEAT_VICTORY_ROAD_1_TRAINER_1
	const_skip 4
	const EVENT_VICTORY_ROAD_1_BOULDER_ON_SWITCH

; Rock Tunnel events
	const_next $9B0
	const_skip
	const EVENT_BEAT_ROCK_TUNNEL_2_TRAINER_0
	const EVENT_BEAT_ROCK_TUNNEL_2_TRAINER_1
	const EVENT_BEAT_ROCK_TUNNEL_2_TRAINER_2
	const EVENT_BEAT_ROCK_TUNNEL_2_TRAINER_3
	const EVENT_BEAT_ROCK_TUNNEL_2_TRAINER_4
	const EVENT_BEAT_ROCK_TUNNEL_2_TRAINER_5
	const EVENT_BEAT_ROCK_TUNNEL_2_TRAINER_6
	const EVENT_BEAT_ROCK_TUNNEL_2_TRAINER_7

; Seafoam Islands events
	const_next $9C0
	const EVENT_SEAFOAM2_BOULDER1_DOWN_HOLE
	const EVENT_SEAFOAM2_BOULDER2_DOWN_HOLE
	const_skip 6
	const EVENT_SEAFOAM3_BOULDER1_DOWN_HOLE
	const EVENT_SEAFOAM3_BOULDER2_DOWN_HOLE
	const_skip 6
	const EVENT_SEAFOAM4_BOULDER1_DOWN_HOLE
	const EVENT_SEAFOAM4_BOULDER2_DOWN_HOLE
	const_skip 8
	const EVENT_BEAT_ARTICUNO

; End of events
	const_next $A00
DEF NUM_EVENTS EQU const_value
