GetTrainerInformation::
	call GetTrainerName
	ld a, [wLinkState]
	and a
	jr nz, .linkBattle
	ld a, BANK(TrainerPicAndMoneyPointers)
	call BankswitchHome
	ld a, [wTrainerClass]
	dec a
	ld hl, TrainerPicAndMoneyPointers
	ld bc, $5
	call AddNTimes
	ld de, wTrainerPicPointer
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	ld de, wTrainerBaseMoney
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
;	call IsFightingJessieJames
	farcall IsFightingSwimmer     ; Function added by Vlad to let the Swimmer have multiple sprites
	farcall IsFightingGuitarist   ; Function added by G-Dubs to let the Guitarist have multiple sprites
   ;farcall IsFightingPokemaniac  ; Function added by G-Dubs to let the Pokemaniac have multiple sprites
   ;farcall IsFightingBrock      ; Function added by G-Dubs to let the Gym Leaders have multiple sprites (for rematches)
   ;farcall IsFightingMisty
   ;farcall IsFightingLtSurge
   ;farcall IsFightingErika
   ;farcall IsFightingSabrina
   ;farcall IsFightingKoga
   ;farcall IsFightingJanine
   ;farcall IsFightingBlaine	
   ;farcall IsFightingGiovanni
   ;farcall IsFightingLorelei
   ;farcall IsFightingBruno
   ;farcall IsFightingAgatha
   ;farcall IsFightingLance
	jp BankswitchBack
.linkBattle
	ld hl, wTrainerPicPointer
	ld de, RedPicFront
	ld [hl], e
	inc hl
	ld [hl], d
	ret

;IsFightingJessieJames::
;	ld a, [wTrainerClass]
;	cp ROCKET
;	ret nz
;	ld a, [wTrainerNo]
;	cp $2a
;	ret c
;	ld de, JessieJamesPic
;	cp $2e
;	jr c, .dummy
;	ld de, JessieJamesPic ; possibly meant to add another pic
;.dummy
;	ld hl, wTrainerPicPointer
;	ld a, e
;	ld [hli], a
;	ld [hl], d
;	ret

GetTrainerName::
	farjp GetTrainerName_
