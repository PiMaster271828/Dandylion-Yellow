; Yellow entry format:
;	db trainerclass, trainerid
;	repeat { db partymon location, partymon move, move id }
;	db 0

SpecialTrainerMoves:
; Bug Catchers
  ; Viridian Forest
      db BUG_CATCHER, 2
	  db 1, 2, TACKLE        ; Adding Tackle and String Shot on the Metapod            ; Added by G-Dubs
	  db 1, 3, STRING_SHOT
	  db 3, 2, TACKLE        ; Adding Tackle and String Shot on the Metapod            ; Added by G-Dubs
	  db 3, 3, STRING_SHOT
	  db 0

      db BUG_CATCHER, 3
	  db 3, 2, TACKLE         ; Adding Tackle and String Shot on the Metapod           ; Added by G-Dubs
	  db 3, 3, STRING_SHOT
      db 4, 2, POISON_STING   ; Adding Poison Sting and String Shot on Kakuna          ; Added by G-Dubs
	  db 4, 3, STRING_SHOT
	  db 5, 3, HARDEN         ; Adding Harden on Butterfree                            ; Added by G-Dubs    
	  db 6, 3, STRING_SHOT    ; Adding String Shot on Beedrill                         ; Added by G-Dubs
	  db 0

	  db BUG_CATCHER, 15
	  db 2, 2, TACKLE         ; Adding Tackle and String Shot on the Metapod
	  db 2, 3, STRING_SHOT
	  db 0

	  db BUG_CATCHER, 16
	  db 1, 2, POISON_STING   ; Adding Poison Sting, String Shot, & Bug Bite on Kakuna  ; Added by G-Dubs
	  db 1, 3, STRING_SHOT
	 ;db 1, 4, BUG_BITE
	  db 3, 2, POISON_STING   ; Adding Poison Sting, String Shot, & Bug Bite on Kakuna  ; Added by G-Dubs
	  db 3, 3, STRING_SHOT
	 ;db 3, 4, BUG_BITE
	  db 0
	  
	  db BUG_CATCHER, 17
	  db 1, 2, FURY_ATTACK    ; Adding a TCG exclusive move to this level 9 Weedle      ; Added by G-Dubs
	  db 1, 4, PECK           ; Adding a TCG exclusive move to this level 9 Weedle      ; Added by G-Dubs
	  db 0
    
	  db BUG_CATCHER, 18
	  db 1, 4, HEADBUTT       ; Adding a TCG exclusive move to this level 9 Caterpie    ; Added by G-Dubs
	  db 0
  ; Route 3
      db BUG_CATCHER, 5
	  db 2, 2, POISON_STING   ; Adding Poison Sting, String Shot, & Bug Bite on Kakuna  ; Added by G-Dubs
	  db 2, 3, STRING_SHOT
	 ;db 2, 4, BUG_BITE
	  db 4, 2, TACKLE         ; Adding Tackle, String Shot, and Bug Bite on Metapod     ; Added by G-Dubs
	  db 4, 3, STRING_SHOT
	 ;db 4, 4, BUG_BITE
      db 0

	  db BUG_CATCHER, 6
	  db 2, 2, TACKLE         ; Adding Tackle, String Shot, and Bug Bite on Metapod     ; Added by G-Dubs
	  db 2, 3, STRING_SHOT
	 ;db 2, 4, BUG_BITE
	  db 0
  ; Mt. Moon
      db BUG_CATCHER, 7
      db 2, 2, POISON_STING   ; Adding Poison Sting, String Shot, & Bug Bite on Kakuna  ; Added by G-Dubs
	  db 2, 3, STRING_SHOT
	 ;db 2, 4, BUG_BITE
	  db 0

	  db BUG_CATCHER, 8
	  db 2, 2, TACKLE         ; Adding Tackle, String Shot, and Bug Bite on Metapod     ; Added by G-Dubs
	  db 2, 3, STRING_SHOT
	 ;db 2, 4, BUG_BITE
	  db 0
  ; Route 4
      db BUG_CATCHER, 12
	  db 3, 2, STRUGGLE       ; Adding Struggle, String Shot, and Bug Bite on Metapod   ; Added by G-Dubs
	  db 3, 3, STRING_SHOT
	 ;db 3, 4, BUG_BITE
	  db 5, 2, POISON_STING   ; Adding Poison Sting, String Shot, & Bug Bite on Kakuna  ; Added by G-Dubs
	  db 5, 3, STRING_SHOT
	 ;db 5, 4, BUG_BITE
	  db 0

    
; Youngsters
  ; Route 9
	  db YOUNGSTER, 14        ; A.J. from the Anime and his OP Sandshrew
	  db 1, 4, FISSURE
	  db 0

; Gym Leaders
  ; Pewter City Gym
    ; Brock
	  db BROCK, 1
	  db 1, 1, TACKLE         ; Brock's Geodude 
	  db 1, 2, DEFENSE_CURL
	  db 1, 3, ROCK_THROW
	  db 1, 4, BIDE
	  db 2, 1, SCRATCH        ; Brock's Kabuto
	  db 2, 2, ABSORB
	  db 2, 3, BIDE
	  db 2, 4, HARDEN
	  db 3, 1, ABSORB         ; Brock's Zubat
	  db 3, 2, SUPERSONIC        
	  db 3, 3, GUST
	  db 3, 4, LEECH_LIFE    
	  db 4, 1, TACKLE         ; Brock's Vulpix
	  db 4, 2, EMBER /*KINDLE*/
	  db 4, 3, TAIL_WHIP
	  db 4, 4, QUICK_ATTACK
	  db 5, 1, CONSTRICT      ; Brock's Omanyte
	  db 5, 2, BIND  
	  db 5, 3, WITHDRAW      
	  db 5, 4, BIDE       
	  db 6, 1, TACKLE         ; Brock's Onix 
	  db 6, 2, SCREECH
	  db 6, 3, BIND  
	  db 6, 4, BIDE           
	  db 0
  ; Cerulean City Gym
	; Misty
	  db MISTY, 1
	  db 1, 2, BUBBLEBEAM     ; Misty's Horsea
	  db 2, 2, BUBBLEBEAM     ; Misty's Seel
	  db 3, 3, TACKLE         ; Misty's Staryu
	  db 4, 2, PECK           ; Misty's Goldeen
      db 5, 1, WATER_GUN      ; Misty's Psyduck
      db 5, 4, TAIL_WHIP
	  db 6, 3, BUBBLEBEAM     ; Misty's Starmie
	  db 0
  ; Vermillion City Gym
	; Lt. Surge
	  db LT_SURGE, 1
	  db 1, 1, QUICK_ATTACK   ; Lt. Surge's Raticate
	  db 1, 4, THUNDERBOLT
	  db 2, 1, SONICBOOM      ; Lt. Surge's Electrode
	  db 2, 2, THUNDERBOLT
	  db 3, 1, THUNDERPUNCH   ; Lt. Surge's Magneton    ; Will have Spark
	  db 4, 1, THUNDERBOLT    ; Lt. Surge's Fearow      ; Will have Bolt Beak
	  db 4, 2, SWIFT     
	  db 5, 3, THUNDERPUNCH   ; Lt. surge's Electabuzz	
	  db 6, 1, MEGA_PUNCH     ; Lt. Surge's Raichu
	  db 6, 2, MEGA_KICK
	  db 6, 4, GROWL
	  db 0
  ; Celadon City Gym
    ; Erika 
	  db ERIKA, 1
	  db 1, 1, RAZOR_LEAF     ; Erika's Victreebel
	  db 1, 3, WRAP
	  db 2, 2, MEGA_DRAIN     ; Erika's Parasect
	  db 3, 4, MEGA_DRAIN     ; Erika's Butterfree
	  db 4, 1, BIND           ; Erika's Tangela
      db 4, 2,  MEGA_DRAIN                            ; Will have Natural Gift
 	  db 5, 2,  MEGA_DRAIN    ; Erika's Exeggutor
	  db 6, 2, STUN_SPORE     ; Erika's Vileplume
	  db 6, 3, MEGA_DRAIN
      db 6, 4, PETAL_DANCE
	  db 0
  ; Fuchsia City Gym
    ; Koga
	  db KOGA, 1
	  db 1, 1, SLUDGE         ; Koga's Venonat  ; Will have Poison Fang
	  db 1, 2, SLEEP_POWDER
	  db 1, 3, PSYWAVE 
	  db 2, 2, SLUDGE         ; Koga's Golbat   ; Will have Poison Fang
      db 2, 3, HYPNOSIS	  
	  db 2, 4, TOXIC
	  db 3, 2, SLASH           ; Koga's Scyther 
	  db 4, 1, GLARE           ; Koga's Arbok  
	  db 4, 4, TOXIC
	  db 5, 1, NIGHT_SHADE     ; Koga's Weezing
	  db 6, 2, TOXIC           ; Koga's Venomoth
	  db 6, 3, DOUBLE_TEAM
	  db 0 
  ; Cinnibar Island Gym	
	; Blaine
	  db BLAINE, 1
	  db 1, 2, FLAMETHROWER    ; Blaine's Ninetales
	  db 2, 2, FIRE_BLAST      ; Blaine's Tauros
      db 3, 1, FIRE_SPIN       ; Blaine's Rapidash
	  db 3, 2, EARTHQUAKE
	  db 3, 3, THUNDERBOLT
	  db 4, 4, FIRE_BLAST      ; Blaine's Charizard Y
	  db 5, 3, BITE            ; Blaine's Arcanine
      db 6, 1, FIRE_SPIN       ; Blaine's Magmar
	  db 6, 2, THUNDERPUNCH
	  db 0

  ; Saffron City Gym	
    ; Sabrina
	  db SABRINA, 1
	  db 1, 2, PSYWAVE        ; Sabrina's Golduck
	  db 1, 4, PSYCHIC_M    
	  db 2, 1, SUBSTITUTE	  ; Sabrina's Mr. Mime
	  db 2, 2, PSYWAVE
	  db 3, 2, NIGHT_SHADE    ; Sabrina's Haunter
	  db 4, 2, HYPNOSIS       ; Sabrina's Hypno
      db 4, 3, PSYWAVE        
	  db 5, 1, PSYWAVE        ; Sabrina's Slowbro
	  db 5, 2, HEADBUTT
	  db 6, 1, PSYWAVE        ; Sabrina's Alakazam
	  db 6, 1, REFLECT
	  db 0

	db GIOVANNI, 3
	db 1, 3, FISSURE
	db 2, 2, DOUBLE_TEAM
	db 3, 1, EARTHQUAKE
	db 3, 3, THUNDER
	db 4, 1, EARTHQUAKE
	db 4, 2, LEER
	db 4, 3, THUNDER
	db 5, 1, ROCK_SLIDE
	db 5, 4, EARTHQUAKE
	db 0

	db LORELEI, 1
	db 1, 1, BUBBLEBEAM
	db 2, 3, ICE_BEAM
	db 3, 1, PSYCHIC_M
	db 3, 2, SURF
	db 4, 3, LOVELY_KISS
	db 5, 3, BLIZZARD
	db 0

	db BRUNO, 1
	db 1, 1, ROCK_SLIDE
	db 1, 2, SCREECH
	db 1, 4, DIG
	db 2, 3, FIRE_PUNCH
	db 2, 4, DOUBLE_TEAM
	db 3, 1, DOUBLE_KICK
	db 3, 2, MEGA_KICK
	db 3, 4, DOUBLE_TEAM
	db 4, 1, ROCK_SLIDE
	db 4, 2, SCREECH
	db 4, 4, EARTHQUAKE
	db 5, 2, KARATE_CHOP
	db 5, 3, STRENGTH
	db 0

	db AGATHA, 1
	db 1, 2, SUBSTITUTE
	db 1, 3, LICK
	db 1, 4, MEGA_DRAIN
	db 2, 2, TOXIC
	db 2, 4, LEECH_LIFE
	db 3, 2, LICK
	db 4, 1, WRAP
	db 5, 2, PSYCHIC_M
	db 0

	db LANCE, 1
	db 1, 1, DRAGON_RAGE
	db 2, 1, THUNDER_WAVE
	db 2, 3, THUNDERBOLT
	db 3, 1, BUBBLEBEAM
	db 3, 2, WRAP
	db 3, 3, ICE_BEAM
	db 4, 1, WING_ATTACK
	db 4, 2, SWIFT
	db 4, 3, FLY
	db 5, 1, BLIZZARD
	db 5, 2, FIRE_BLAST
	db 5, 3, THUNDER
	db 0

	db RIVAL3, 1
	db 1, 3, EARTHQUAKE
	db 2, 4, KINESIS
	db 3, 4, LEECH_SEED
	db 4, 1, ICE_BEAM
	db 5, 1, CONFUSE_RAY
	db 5, 4, FIRE_SPIN
	db 6, 3, QUICK_ATTACK
	db 0

	db RIVAL3, 2
	db 1, 3, EARTHQUAKE
	db 2, 4, KINESIS
	db 3, 4, LEECH_SEED
	db 4, 1, THUNDERBOLT
	db 5, 1, ICE_BEAM
	db 6, 2, REFLECT
	db 6, 3, QUICK_ATTACK
	db 0

	db RIVAL3, 3
	db 1, 3, EARTHQUAKE
	db 2, 4, KINESIS
	db 3, 4, LEECH_SEED
	db 4, 1, CONFUSE_RAY
	db 4, 4, FIRE_SPIN
	db 5, 1, THUNDERBOLT
	db 6, 1, AURORA_BEAM
	db 6, 3, QUICK_ATTACK
	db 0

	db -1 ; end
