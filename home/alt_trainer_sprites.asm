/**************************************************************
Function added by Vlad to let the Swimmer have multiple sprites
***************************************************************/
IsFightingSwimmer::
	ld a, [wTrainerClass]
	cp SWIMMER
	ret nz
	ld a, [wTrainerNo]
	cp $01
	ret c
	ld de, Swimmer2Pic
	cp $02
	jr c, .dummy
	ld de, Swimmer2Pic ; possibly meant to add another pic
.dummy
	ld hl, wTrainerPicPointer
	ld a, e
	ld [hli], a
	ld [hl], d
	ret

/******************************************************************
Function added by G-Dubs to let the Guitarist have multiple sprites
*******************************************************************/
IsFightingGuitarist::
	ld a, [wTrainerClass]
	cp GUITARIST
	ret nz
	ld a, [wTrainerNo]
	cp $04
	ret c
	cp $07
	ld de, Guitarist2Pic
	jr c, .dummy
	cp $0A
	ld de, Guitarist3Pic
	jr c, .dummy
	ld de, Guitarist3Pic ; possibly meant to add another pic
	ret
.dummy
	ld hl, wTrainerPicPointer
	ld a, e
	ld [hli], a
	ld [hl], d
	ret
/*******************************************************************
Function added by G-Dubs to let the Pokémaniac have multiple sprites
********************************************************************/
IsFightingPokemaniac::
	ld a, [wTrainerClass]
	cp POKEMANIAC
	ret nz
	ld a, [wTrainerNo]
	cp $08
	ret c
	ld de, Pokemaniac2Pic
	cp $0B
	jr c, .dummy
	ld de, Pokemaniac2Pic ; possibly meant to add another pic
.dummy
	ld hl, wTrainerPicPointer
	ld a, e
	ld [hli], a
	ld [hl], d
	ret
