CheckAlternatePokemonSprite1::
; Compact version assuming all alternate sprites are in same bank
; Returns: carry set if alternate sprite loaded, clear if using normal sprite
	ld hl, AlternatePokemonSpriteTable1
	
.tableLoop1
	ld a, [hli]  ; trainer class
	cp $FF
	jr z, .noAlternate1
	
	ld b, a
	ld a, [wTrainerClass]
	cp b
	jr nz, .skipEntry1
	
	ld a, [hli]  ; pokemon species  
	ld b, a
	ld a, [wCurPartySpecies]
	cp b
	jr z, .foundMatch1
	
	; Skip sprite pointer (2 bytes)
	inc hl
	inc hl
	jr .tableLoop1
	
.skipEntry1
	; Skip pokemon + sprite pointer (3 bytes)
	inc hl
	inc hl  
	inc hl
	jr .tableLoop1

.foundMatch1
	ld a, [hli]  ; sprite pointer low
	ld [wSpriteInputPtr], a
	ld a, [hl]   ; sprite pointer high
	ld [wSpriteInputPtr + 1], a
	scf
	ret

.noAlternate1
	and a
	ret

CheckAlternatePokemonSprite2::
; Compact version assuming all alternate sprites are in same bank
; Returns: carry set if alternate sprite loaded, clear if using normal sprite
	ld hl, AlternatePokemonSpriteTable2
	
.tableLoop2
	ld a, [hli]  ; trainer class
	cp $FF
	jr z, .noAlternate2
	
	ld b, a
	ld a, [wTrainerClass]
	cp b
	jr nz, .skipEntry2
	
	ld a, [hli]  ; pokemon species  
	ld b, a
	ld a, [wCurPartySpecies]
	cp b
	jr z, .foundMatch2
	
	; Skip sprite pointer (2 bytes)
	inc hl
	inc hl
	jr .tableLoop2
	
.skipEntry2
	; Skip pokemon + sprite pointer (3 bytes)
	inc hl
	inc hl  
	inc hl
	jr .tableLoop2

.foundMatch2
	ld a, [hli]  ; sprite pointer low
	ld [wSpriteInputPtr], a
	ld a, [hl]   ; sprite pointer high
	ld [wSpriteInputPtr + 1], a
	scf
	ret

.noAlternate2
	and a
	ret

CheckAlternatePokemonSprite3::
; Compact version assuming all alternate sprites are in same bank
; Returns: carry set if alternate sprite loaded, clear if using normal sprite
	ld hl, AlternatePokemonSpriteTable3
	
.tableLoop3
	ld a, [hli]  ; trainer class
	cp $FF
	jr z, .noAlternate3
	
	ld b, a
	ld a, [wTrainerClass]
	cp b
	jr nz, .skipEntry3
	
	ld a, [hli]  ; pokemon species  
	ld b, a
	ld a, [wCurPartySpecies]
	cp b
	jr z, .foundMatch3
	
	; Skip sprite pointer (2 bytes)
	inc hl
	inc hl
	jr .tableLoop3
	
.skipEntry3
	; Skip pokemon + sprite pointer (3 bytes)
	inc hl
	inc hl  
	inc hl
	jr .tableLoop3

.foundMatch3
	ld a, [hli]  ; sprite pointer low
	ld [wSpriteInputPtr], a
	ld a, [hl]   ; sprite pointer high
	ld [wSpriteInputPtr + 1], a
	scf
	ret

.noAlternate3
	and a
	ret

CheckAlternatePokemonSprite4::
; Compact version assuming all alternate sprites are in same bank
; Returns: carry set if alternate sprite loaded, clear if using normal sprite
	ld hl, AlternatePokemonSpriteTable4
	
.tableLoop4
	ld a, [hli]  ; trainer class
	cp $FF
	jr z, .noAlternate4
	
	ld b, a
	ld a, [wTrainerClass]
	cp b
	jr nz, .skipEntry4
	
	ld a, [hli]  ; pokemon species  
	ld b, a
	ld a, [wCurPartySpecies]
	cp b
	jr z, .foundMatch4
	
	; Skip sprite pointer (2 bytes)
	inc hl
	inc hl
	jr .tableLoop4
	
.skipEntry4
	; Skip pokemon + sprite pointer (3 bytes)
	inc hl
	inc hl  
	inc hl
	jr .tableLoop4

.foundMatch4
	ld a, [hli]  ; sprite pointer low
	ld [wSpriteInputPtr], a
	ld a, [hl]   ; sprite pointer high
	ld [wSpriteInputPtr + 1], a
	scf
	ret

.noAlternate4
	and a
	ret

CheckAlternatePokemonSprite5::
; Compact version assuming all alternate sprites are in same bank
; Returns: carry set if alternate sprite loaded, clear if using normal sprite
	ld hl, AlternatePokemonSpriteTable5
	
.tableLoop5
	ld a, [hli]  ; trainer class
	cp $FF
	jr z, .noAlternate5
	
	ld b, a
	ld a, [wTrainerClass]
	cp b
	jr nz, .skipEntry5
	
	ld a, [hli]  ; pokemon species  
	ld b, a
	ld a, [wCurPartySpecies]
	cp b
	jr z, .foundMatch5
	
	; Skip sprite pointer (2 bytes)
	inc hl
	inc hl
	jr .tableLoop5
	
.skipEntry5
	; Skip pokemon + sprite pointer (3 bytes)
	inc hl
	inc hl  
	inc hl
	jr .tableLoop5

.foundMatch5
	ld a, [hli]  ; sprite pointer low
	ld [wSpriteInputPtr], a
	ld a, [hl]   ; sprite pointer high
	ld [wSpriteInputPtr + 1], a
	scf
	ret

.noAlternate5
	and a
	ret

CheckAlternatePokemonSprite6::
; Compact version assuming all alternate sprites are in same bank
; Returns: carry set if alternate sprite loaded, clear if using normal sprite
	ld hl, AlternatePokemonSpriteTable6
	
.tableLoop6
	ld a, [hli]  ; trainer class
	cp $FF
	jr z, .noAlternate6
	
	ld b, a
	ld a, [wTrainerClass]
	cp b
	jr nz, .skipEntry6
	
	ld a, [hli]  ; pokemon species  
	ld b, a
	ld a, [wCurPartySpecies]
	cp b
	jr z, .foundMatch6
	
	; Skip sprite pointer (2 bytes)
	inc hl
	inc hl
	jr .tableLoop6
	
.skipEntry6
	; Skip pokemon + sprite pointer (3 bytes)
	inc hl
	inc hl  
	inc hl
	jr .tableLoop6

.foundMatch6
	ld a, [hli]  ; sprite pointer low
	ld [wSpriteInputPtr], a
	ld a, [hl]   ; sprite pointer high
	ld [wSpriteInputPtr + 1], a
	scf
	ret

.noAlternate6
	and a
	ret

; COMPACT TABLE - Only 4 bytes per entry (no bank stored)
AlternatePokemonSpriteTable1:
    db ROCKET, ZUBAT, LOW(RocketZubatPicFront), HIGH(RocketZubatPicFront)                          ; ROCKET
    db ROCKET, RATTATA, LOW(RocketRattataPicFront), HIGH(RocketRattataPicFront)
	db ROCKET, RATICATE, LOW(RocketRaticatePicFront), HIGH(RocketRaticatePicFront)	
;	db ROCKET, GOLBAT, LOW(RocketRaticatePicFront), HIGH(RocketRaticatePicFront)	        
	db JESSIE_JAMES, MEOWTH, LOW(RocketMeowthPicFront), HIGH(RocketMeowthPicFront) 			       ; JESSIE_JAMES
	db JESSIE_JAMES, KOFFING, LOW(JamesKoffingPicFront), HIGH(JamesKoffingPicFront)
	db JESSIE_JAMES, WEEZING, LOW(JamesWeezingPicFront), HIGH(JamesWeezingPicFront)
	db JESSIE_JAMES, WEEPINBELL, LOW(JamesWeepinbellPicFront), HIGH(JamesWeepinbellPicFront)
	db JESSIE_JAMES, VICTREEBEL, LOW(JamesVictreebelPicFront), HIGH(JamesVictreebelPicFront)
	db JESSIE_JAMES, EKANS, LOW(JessieEkansPicFront), HIGH(JessieEkansPicFront)                     
	db JESSIE_JAMES, ARBOK, LOW(JessieArbokPicFront), HIGH(JessieArbokPicFront)
	db JESSIE_JAMES, MAGIKARP, LOW(JamesMagikarpPicFront), HIGH(JamesMagikarpPicFront)
	db JESSIE_JAMES, LICKITUNG, LOW(JessieLickitungPicFront), HIGH(JessieLickitungPicFront)
	db GIOVANNI, PERSIAN, LOW(GiovanniPersianPicFront), HIGH(GiovanniPersianPicFront)		       ; GIOVANNI
	db GIOVANNI, KANGASKHAN, LOW(GiovanniKangaskhanPicFront), HIGH(GiovanniKangaskhanPicFront)
	db GIOVANNI, ONIX, LOW(GiovanniOnixPicFront), HIGH(GiovanniOnixPicFront)
	db GIOVANNI, PINSIR, LOW(GiovanniPinsirPicFront), HIGH(GiovanniPinsirPicFront)
	db GIOVANNI, RHYHORN, LOW(GiovanniRhyhornPicFront), HIGH(GiovanniRhydonPicFront)
	db GIOVANNI, RHYDON, LOW(GiovanniRhydonPicFront), HIGH(GiovanniRhydonPicFront)
	db $FF
	
AlternatePokemonSpriteTable2:
 	db BROCK, ONIX, LOW(BrockOnixPicFront), HIGH(BrockOnixPicFront)							       ; BROCK
	db BROCK, VULPIX, LOW(BrockVulpixPicFront), HIGH(BrockVulpixPicFront)
	db BROCK, ZUBAT, LOW(BrockZubatPicFront), HIGH(BrockZubatPicFront)
;	db BROCK, NINETALES, LOW(BrockNinetalesPicFront), HIGH(BrockNinetalesPicFront)
	db MISTY, PSYDUCK, LOW(MistyPsyduckPicFront), HIGH(MistyPsyduckPicFront)
	db MISTY, STARYU, LOW(MistyStaryuPicFront), HIGH(MistyStaryuPicFront) 				       	   ; MISTY
	db MISTY, STARMIE, LOW(MistyStarmiePicFront), HIGH(MistyStarmiePicFront) 	
	db MISTY, HORSEA, LOW(MistyHorseaPicFront), HIGH(MistyHorseaPicFront)	
;	db MISTY, SEADRA, LOW(MistyHorseaPicFront), HIGH(MistyHorseaPicFront)	
;	db MISTY, KINGDRA, LOW(MistyHorseaPicFront), HIGH(MistyHorseaPicFront)			
	db LT_SURGE, RAICHU, LOW(LtSurgeRaichuPicFront), HIGH(LtSurgeRaichuPicFront)
	db LT_SURGE, ELECTRODE, LOW(LtSurgeElectrodePicFront), HIGH(LtSurgeElectrodePicFront)		   ; LT_SURGE
	db LT_SURGE, ELECTABUZZ, LOW(LtSurgeElectabuzzPicFront), HIGH(LtSurgeElectabuzzPicFront)	
	db $FF
	
AlternatePokemonSpriteTable3:
	db ERIKA, VILEPLUME, LOW(ErikaVileplumePicFront), HIGH(ErikaVileplumePicFront)			       ; ERIKA
    db ERIKA, TANGELA, LOW(ErikaTangelaPicFront), HIGH(ErikaTangelaPicFront)
	db ERIKA, VICTREEBEL, LOW(JamesVictreebelPicFront), HIGH(JamesVictreebelPicFront)
	db ERIKA, EXEGGUTOR, Low(ExeggutorPicFront), HIGH(ExeggutorPicFront)
    db BLACKBELT, HITMONLEE, LOW(KarateHitmonleePicFront), HIGH(KarateHitmonleePicFront)	       ; KARATE MASTER
	db BLACKBELT, HITMONCHAN, LOW(KarateHitmonchanPicFront), HIGH(KarateHitmonchanPicFront)
	db SABRINA, ABRA, LOW(SabrinaAbraPicFront), HIGH(SabrinaAbraPicFront)						   ; SABRINA
	db SABRINA, KADABRA, LOW(SabrinaKadabraPicFront), HIGH(SabrinaKadabraPicFront)	
	db SABRINA, ALAKAZAM, LOW(SabrinaAlakazamPicFront), HIGH(SabrinaAlakazamPicFront)
	db SABRINA, HYPNO, LOW(SabrinaHypnoPicFront), HIGH(SabrinaHypnoPicFront)
	db SABRINA, HAUNTER, LOW(SabrinaHaunterPicFront), HIGH(SabrinaHaunterPicFront)
;	db SABRINA, GENGAR, LOW(SabrinaHaunterPicFront), HIGH(SabrinaHaunterPicFront)
    db $FF

AlternatePokemonSpriteTable4:
;   db JANINE, NIDOQUEEN, LOW(JanineNidoqueenPicFront), HIGH(JanineNidoqueenPicFront)              ; JANINE
;	db JANINE, VENOMOTH, LOW(JanineVenomothPicFront), HIGH(JanineVenomothPicFront)
;	db KOGA, GOLBAT, LOW(KogaGolbatPicFront), HIGH(KogaGolbatPicFront)
	db KOGA, WEEZING, LOW(KogaWeezingPicFront), HIGH(KogaWeezingPicFront)					       ; KOGA
	db KOGA, VENONAT, LOW(KogaVenonatPicFront), HIGH(KogaVenonatPicFront)				
	db KOGA, VENOMOTH, LOW(KogaVenomothPicFront), HIGH(KogaVenomothPicFront)				
	db BLAINE, ARCANINE, LOW(BlaineArcaninePicFront), HIGH(BlaineArcaninePicFront)			       ; BLAINE
;	db BLAINE, RAPIDASH, LOW(BlaineRapidashPicFront), HIGH(BlaineRapidashPicFront)		
	db BLAINE, MAGMAR, LOW(BlaineMagmarPicFront), HIGH(BlaineMagmarPicFront)
	db $FF

AlternatePokemonSpriteTable5:
	db LORELEI, DEWGONG, LOW(LoreleiDewgongPicFront), HIGH(LoreleiDewgongPicFront)			       ; LORELEI
	db LORELEI, CLOYSTER, LOW(LoreleiCloysterPicFront), HIGH(LoreleiCloysterPicFront)
	db LORELEI, SLOWBRO, LOW(LoreleiSlowbroPicFront), HIGH(LoreleiSlowbroPicFront)
	db LORELEI, LAPRAS, LOW(LoreleiLaprasPicFront), HIGH(LoreleiLaprasPicFront)
;	db LORELEI, STARMIE, LOW(LoreleiStarmiePicFront), HIGH(LoreleiStarmiePicFront)	
	db BRUNO, HITMONLEE, LOW(BrunoHitmonleePicFront), HIGH(BrunoHitmonleePicFront)			       ; BRUNO
	db BRUNO, HITMONCHAN, LOW(BrunoHitmonchanPicFront), HIGH(BrunoHitmonchanPicFront)
	db BRUNO, ONIX, LOW(BrunoOnixPicFront), HIGH(BrunoOnixPicFront)
	db BRUNO, SLOWBRO, LOW(BrunoSlowbroPicFront), HIGH(BrunoSlowbroPicFront)
	db BRUNO, PRIMEAPE, LOW(BrunoPrimeapePicFront), HIGH(BrunoPrimeapePicFront)
	db BRUNO, POLIWRATH, LOW(BrunoPoliwrathPicFront), HIGH(BrunoPoliwrathPicFront) 
	db BRUNO, MACHAMP, LOW(BrunoMachampPicFront), HIGH(BrunoMachampPicFront)
	db AGATHA, HAUNTER, LOW(AgathaHaunterPicFront), HIGH(AgathaHaunterPicFront)				       ; AGATHA
;	db AGATHA, ARBOK, LOW(AgathaArbokPicFront), HIGH(AgathaArbokPicFront)	
;	db AGATHA, JYNX, LOW(AgathaAJynxPicFront), HIGH(AgathaJynxPicFront)		
	db AGATHA, GENGAR, LOW(AgathaGengarPicFront), HIGH(AgathaGengarPicFront)
	db LANCE, GYARADOS, LOW(LanceGyaradosPicFront), HIGH(LanceGyaradosPicFront)				       ; LANCE
;	db LANCE, AERODACTYL, LOW(LanceAerodactylPicFront), HIGH(LanceAerodactylPicFront)
;	db LANCE, ARCANINE, LOW(LanceArcaninePicFront), HIGH(LanceArcaninePicFront)
	db LANCE, DRAGONITE, LOW(LanceDragonitePicFront), HIGH(LanceDragonitePicFront)
	db $FF
	
AlternatePokemonSpriteTable6:	
;	db RIVAL2, PIDGEOT, LOW(RivalPidgeotPicFront), HIGH(RivalPidgeotPicFront) 
;	db RIVAL2, FEAROW, LOW(RivalFearowPicFront), HIGH(RivalFearowPicFront) 
;	db RIVAL2, FLAREON, LOW(RivalFlareonPicFront), HIGH(RivalFlareonPicFront) 
;	db RIVAL2, JOLTEON, LOW(RivalJolteonPicFront), HIGH(RivalJolteonPicFront) 
;	db RIVAL2, VAPOREON, LOW(RivalVaporeonPicFront), HIGH(RivalVaporeonPicFront) 
	db RIVAL2, ALAKAZAM, LOW(RivalAlakazamPicFront), HIGH(RivalAlakazamPicFront)                   ; RIVAL 2
    db RIVAL2, EXEGGUTOR, LOW(RivalExeggutorPicFront), HIGH(RivalExeggutorPicFront)
	db RIVAL2, VICTREEBEL, LOW(RivalVictreebelPicFront), HIGH(RivalVictreebelPicFront)
	db RIVAL2, SANDSLASH, LOW(RivalSandslashPicFront), HIGH(RivalSandslashPicFront)
;	db RIVAL3, PIDGEOT, LOW(RivalPidgeotPicFront), HIGH(RivalPidgeotPicFront) 
;	db RIVAL3, FEAROW, LOW(RivalFearowPicFront), HIGH(RivalFearowPicFront) 
;	db RIVAL3, FLAREON, LOW(RivalFlareonPicFront), HIGH(RivalFlareonPicFront) 
;	db RIVAl3, JOLTEON, LOW(RivalJolteonPicFront), HIGH(RivalJolteonPicFront) 
;	db RIVAL3, VAPOREON, LOW(RivalVaporeonPicFront), HIGH(RivalVaporeonPicFront) 
	db RIVAL3, ALAKAZAM, LOW(RivalAlakazamPicFront), HIGH(RivalAlakazamPicFront)                   ; RIVAL 3
	db RIVAL3, EXEGGUTOR, LOW(RivalExeggutorPicFront), HIGH(RivalExeggutorPicFront)
	db RIVAL3, VICTREEBEL, LOW(RivalVictreebelPicFront), HIGH(RivalVictreebelPicFront)            
    db RIVAL3, SANDSLASH, LOW(RivalSandslashPicFront), HIGH(RivalSandslashPicFront)
   ;db RIVAL4, ALAKAZAM, LOW(RivalAlakazamPicFront), HIGH(RivalAlakazamPicFront)                   ; RIVAL 4
   ;db RIVAL4, RHYDON, LOW(RivalRhydonPicFront), HIGH(RivalRhydonPicFront)        
	db GUITARIST, ELECTABUZZ, LOW(GuitaristElectabuzzPicFront), HIGH(GuitaristElectabuzzPicFront)  ; OTHER TRAINERS
	db GUITARIST, PIKACHU, LOW(FemalePikachuPicFront), HIGH(FemalePikachuPicFront)
    db LASS, PIKACHU, LOW(FemalePikachuPicFront), HIGH(FemalePikachuPicFront)                      ; FEMALE TRAINERS
	db LASS, LAPRAS, LOW(FemaleLaprasPicFront), HIGH(FemaleLaprasPicFront)
	db JR_TRAINER_F, PIKACHU, LOW(FemalePikachuPicFront), HIGH(FemalePikachuPicFront)
	db JR_TRAINER_F, LAPRAS, LOW(FemaleLaprasPicFront), HIGH(FemaleLaprasPicFront)
	db COOL_TRAINER_F, LAPRAS, LOW(FemaleLaprasPicFront), HIGH(FemaleLaprasPicFront)
	db POKEFAN_F, PIKACHU, LOW(FemalePikachuPicFront), HIGH(FemalePikachuPicFront)
	db SCHOOLKID, PIKACHU, LOW(FemalePikachuPicFront), HIGH(FemalePikachuPicFront)
	db $FF


;	Extras to look at:

;	Rocket Grunts:  I just took the most common ones in the parties and used them
;	db ROCKET, EKANS, LOW(RocketEkansPicFront), HIGH(RocketEkansPicFront)
;	db ROCKET, GRIMER, LOW(RocketGrimerPicFront), HIGH(RocketGrimerPicFront)
;	db ROCKET, KOFFING, LOW(RocketKoffingPicFront), HIGH(RocketKoffingPicFront)	

;	Team Rocket:  I'd be more ok with added these back since they are the main villains


;	Giovanni:   He has way too many alt sprites.  So I removed a bunch
;	db GIOVANNI, MACHOKE, LOW(GiovanniMachokePicFront), HIGH(GiovanniMachokePicFront)
;	db GIOVANNI, DUGTRIO, LOW(GiovanniDugtrioPicFront), HIGH(GiovanniDugtrioPicFront)
;	db GIOVANNI, GRAVELER, LOW(GiovanniGravelerPicFront), HIGH(GiovanniGravelerPicFront)
;	db GIOVANNI, GOLEM, LOW(GiovanniGolemPicFront), HIGH(GiovanniGolemPicFront)

;	Brock:  Zubat is the only one that doesn't make sense.  I don't remember a zubat at all.
;	db BROCK, GEODUDE, LOW(BrockGeodudePicFront), HIGH(BrockGeodudePicFront)

;	Misty:    
;	db MISTY, GOLDEEN, LOW(MistyGoldeenPicFront), HIGH(MistyGoldeenPicFront)

;	Lt. Surge: Reduced alt sprites.  I thought we were going to have fearow in the rematch as well
;	db LT_SURGE, RATICATE, LOW(LtSurgeRaticatePicFront), HIGH(LtSurgeRaticatePicFront)
;	db LT_SURGE, FEAROW, LOW(LtSurgeFearowPicFront), HIGH(LtSurgeFearowPicFront)
;	

;	Erika:  Too many.  Also dragonair/dragonite make no sense
;	db ERIKA, DRAGONITE, LOW(ErikaVictreebelPicFront), HIGH(ErikaVictreebelPicFront)
;	db ERIKA, DRAGONAIR, LOW(ErikaDragonairPicFront), HIGH(ErikaDragonairPicFront)
;	db ERIKA, IVYSAUR, LOW(ErikaIvysaurPicFront), HIGH(ErikaIvysaurPicFront)
;	db ERIKA, VENUSAUR, LOW(ErikaVenusaurPicFront), HIGH(ErikaVenusaurPicFront)

;	Sabrina:  Too many
;	db SABRINA, SLOWBRO, LOW(SabrinaSlowbroPicFront), HIGH(SabrinaSlowbroPicFront)
;   db SABRINA, GOLDUCK, LOW(SabrinaGolduckPicFront), HIGH(SabrinaGolduckPicFront)			      
;	db SABRINA, MR_MIME, LOW(SabrinaMrMimePicFront), HIGH(SabrinaMrMimePicFront)

;	Blaine:  Swapping out Tauros
;	db BLAINE, TAUROS, LOW(BlaineTaurosPicFront), HIGH(BlaineTaurosPicFront)

;	Lance:
;	db LANCE, DRAGONAIR, LOW(LanceDragonairPicFront), HIGH(LanceDragonairPicFront)


;	Rival 2:
;	RATICATE
;	3 EVEELUTIONS
;	PIGEOT
;	FEAROW
;	SANDSLASH
;	ALAKAZAM
;	EXEGGUTOR

;	db RIVAL2, GOLDUCK, LOW(RivalGolduckPicFront), HIGH(RivalGolduckPicFront)
;   db RIVAL2, PRIMEAPE, LOW(RivalPrimeapePicFront), HIGH(RivalPrimeapePicFront)
;	db RIVAL2, MAGNETON, LOW(RivalMagnetonPicFront), HIGH(RivalMagnetonPicFront)
;	db RIVAL2, DODRIO, LOW(RivalDodrioPicFront), HIGH(RivalDodrioPicFront)



;	RIVAL 3:
;	3 EVEELUTIONS
;	PIDGEOT
;	ALAKAZAM
;	FEAROW
;	EXEGGUTOR
;	VICTREEBEL
;	db RIVAL3, GOLDUCK, LOW(RivalGolduckPicFront), HIGH(RivalGolduckPicFront)
;	db RIVAL3, MAGNETON, LOW(RivalMagnetonPicFront), HIGH(RivalMagnetonPicFront)
;	db RIVAL2, DODRIO, LOW(RivalDodrioPicFront), HIGH(RivalDodrioPicFront)