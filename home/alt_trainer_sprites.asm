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