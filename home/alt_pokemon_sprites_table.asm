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

; COMPACT TABLE - Only 4 bytes per entry (no bank stored)
AlternatePokemonSpriteTable1:
    db ROCKET, ZUBAT, LOW(RocketZubatPicFront), HIGH(RocketZubatPicFront)                     ; ROCKET
    db ROCKET, RATTATA, LOW(RocketRattataPicFront), HIGH(RocketRattataPicFront)			        
	db JESSIE_JAMES, MEOWTH, LOW(RocketMeowthPicFront), HIGH(RocketMeowthPicFront) 			  ; JESSIE_JAMES
	db JESSIE_JAMES, KOFFING, LOW(JamesKoffingPicFront), HIGH(JamesKoffingPicFront)
	db JESSIE_JAMES, WEEZING, LOW(JamesWeezingPicFront), HIGH(JamesWeezingPicFront)
	db JESSIE_JAMES, WEEPINBELL, LOW(JamesWeepinbellPicFront), HIGH(JamesWeepinbellPicFront)
	db JESSIE_JAMES, VICTREEBEL, LOW(JamesVictreebelPicFront), HIGH(JamesVictreebelPicFront)
	db JESSIE_JAMES, EKANS, LOW(JessieEkansPicFront), HIGH(JessieEkansPicFront)                     
	db JESSIE_JAMES, ARBOK, LOW(JessieArbokPicFront), HIGH(JessieArbokPicFront)
	db JESSIE_JAMES, LICKITUNG, LOW(JessieLickitungPicFront), HIGH(JessieLickitungPicFront)
	db BROCK, ONIX, LOW(BrockOnixPicFront), HIGH(BrockOnixPicFront)							  ; BROCK
	db BROCK, GEODUDE, LOW(BrockGeodudePicFront), HIGH(BrockGeodudePicFront)
	db BROCK, VULPIX, LOW(BrockVulpixPicFront), HIGH(BrockVulpixPicFront)	
	db BROCK, ZUBAT, LOW(BrockZubatPicFront), HIGH(BrockZubatPicFront)	
	db MISTY, PSYDUCK, LOW(MistyPsyduckPicFront), HIGH(MistyPsyduckPicFront)				  ; MISTY
	db MISTY, GOLDUCK, LOW(MistyGolduckPicFront), HIGH(MistyGolduckPicFront)
	db MISTY, HORSEA, LOW(MistyHorseaPicFront), HIGH(MistyHorseaPicFront)
	db MISTY, STARYU, LOW(MistyStaryuPicFront), HIGH(MistyStaryuPicFront) 
	db MISTY, STARMIE, LOW(MistyStarmiePicFront), HIGH(MistyStarmiePicFront) 				
	db LT_SURGE, RAICHU, LOW(LtSurgeRaichuPicFront), HIGH(LtSurgeRaichuPicFront)			  ; LT_SURGE
	db LT_SURGE, FEAROW, LOW(LtSurgeFearowPicFront), HIGH(LtSurgeFearowPicFront)	
	db ERIKA, VILEPLUME, LOW(ErikaVileplumePicFront), HIGH(ErikaVileplumePicFront)			  ; ERIKA
	db ERIKA, DRAGONAIR, LOW(ErikaDragonairPicFront), HIGH(ErikaDragonairPicFront)
	db KOGA, WEEZING, LOW(KogaWeezingPicFront), HIGH(KogaWeezingPicFront)					  ; KOGA			
	db KOGA, VENOMOTH, LOW(KogaVenomothPicFront), HIGH(KogaVenomothPicFront)				
	db BLACKBELT, HITMONLEE, LOW(KarateHitmonleePicFront), HIGH(KarateHitmonleePicFront)	  ; KARATE MASTER
	db BLACKBELT, HITMONCHAN, LOW(KarateHitmonchanPicFront), HIGH(KarateHitmonchanPicFront)
	db SABRINA, GOLDUCK, LOW(SabrinaGolduckPicFront), HIGH(SabrinaGolduckPicFront)			  ; SABRINA
	db SABRINA, KADABRA, LOW(SabrinaKadabraPicFront), HIGH(SabrinaKadabraPicFront)
	db SABRINA, ALAKAZAM, LOW(SabrinaAlakazamPicFront), HIGH(SabrinaAlakazamPicFront)
	db SABRINA, HAUNTER, LOW(SabrinaHaunterPicFront), HIGH(SabrinaHaunterPicFront)
	db BLAINE, ARCANINE, LOW(BlaineArcaninePicFront), HIGH(BlaineArcaninePicFront)			  ; BLAINE
	db BLAINE, TAUROS, LOW(BlaineTaurosPicFront), HIGH(BlaineTaurosPicFront)
	db BLAINE, MAGMAR, LOW(BlaineMagmarPicFront), HIGH(BlaineMagmarPicFront)
	db GIOVANNI, PERSIAN, LOW(GiovanniPersianPicFront), HIGH(GiovanniPersianPicFront)		  ; GIOVANNI
	db GIOVANNI, RHYDON, LOW(GiovanniRhydonPicFront), HIGH(GiovanniRhydonPicFront)
	db $FF

AlternatePokemonSpriteTable2:
	db LORELEI, DEWGONG, LOW(LoreleiDewgongPicFront), HIGH(LoreleiDewgongPicFront)			  ; LORELEI
	db LORELEI, CLOYSTER, LOW(LoreleiCloysterPicFront), HIGH(LoreleiCloysterPicFront)
	db LORELEI, SLOWBRO, LOW(LoreleiSlowbroPicFront), HIGH(LoreleiSlowbroPicFront)
	db LORELEI, LAPRAS, LOW(LoreleiLaprasPicFront), HIGH(LoreleiLaprasPicFront)
	db BRUNO, HITMONLEE, LOW(BrunoHitmonleePicFront), HIGH(BrunoHitmonleePicFront)			  ; BRUNO
	db BRUNO, HITMONCHAN, LOW(BrunoHitmonchanPicFront), HIGH(BrunoHitmonchanPicFront)
	db BRUNO, ONIX, LOW(BrunoOnixPicFront), HIGH(BrunoOnixPicFront)
	db BRUNO, POLIWRATH, LOW(BrunoPoliwrathPicFront), HIGH(BrunoPoliwrathPicFront) 
	db BRUNO, MACHAMP, LOW(BrunoMachampPicFront), HIGH(BrunoMachampPicFront)
	db AGATHA, HAUNTER, LOW(AgathaHaunterPicFront), HIGH(AgathaHaunterPicFront)				  ; AGATHA
	db AGATHA, ARBOK, LOW(AgathaArbokPicFront), HIGH(AgathaArbokPicFront)	
	db AGATHA, GENGAR, LOW(AgathaGengarPicFront), HIGH(AgathaGengarPicFront)
	db LANCE, GYARADOS, LOW(LanceGyaradosPicFront), HIGH(LanceGyaradosPicFront)				  ; LANCE
	db LANCE, DRAGONAIR, LOW(LanceDragonairPicFront), HIGH(LanceDragonairPicFront)
	db LANCE, DRAGONITE, LOW(LanceDragonitePicFront), HIGH(LanceDragonitePicFront)
	db RIVAL2, ALAKAZAM, LOW(RivalAlakazamPicFront), HIGH(RivalAlakazamPicFront)              ; RIVAL
	db RIVAL3, ALAKAZAM, LOW(RivalAlakazamPicFront), HIGH(RivalAlakazamPicFront)            
   ;db RIVAL4, ALAKAZAM, LOW(RivalAlakazamPicFront), HIGH(RivalAlakazamPicFront)
    db RIVAL2, GOLDUCK, LOW(RivalGolduckPicFront), HIGH(RivalGolduckPicFront)          
	db $FF