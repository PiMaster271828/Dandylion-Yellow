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
	call c, Dummy
	ld de, SwimmerPic ; go back to using the default sprite
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
	call c, Dummy
	cp $0A
	ld de, Guitarist3Pic
	call c, Dummy
	ld de, Guitarist3Pic ; possibly meant to add another pic
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
	call c, Dummy
	ld de, PokemaniacPic ; go back to using the default sprite
	ret

/***************************************************************
Function added by G-Dubs to let the Beauty have multiple sprites
****************************************************************/
IsFightingBeauty::
	ld a, [wTrainerClass]
	cp BEAUTY
	ret nz
	ld a, [wTrainerNo]
	cp $01
	ret c
	cp $02
	ld de, Beauty2Pic
	call c, Dummy
	cp $04
	ld de, Beauty3Pic
	call c, Dummy
	ld de, BeautyPic ; go back to using the default sprite
	ret

/******************************************************************************************
Common Dummy Function added by G-Dubs to avoid each function using their own Dummy Function
*******************************************************************************************/
Dummy:
	ld hl, wTrainerPicPointer
	ld a, e
	ld [hli], a
	ld [hl], d
	ret
