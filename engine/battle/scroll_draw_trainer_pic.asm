_ScrollTrainerPicAfterBattle:
; Load the enemy trainer's pic and scrolls it into
; the screen from the right.
	xor a
	ld [wEnemyMonSpecies2], a
	ld b, SET_PAL_BATTLE
	call RunPaletteCommand
	callfar _LoadTrainerPic
	hlcoord 19, 0
	ld c, $0
.scrollLoop
	inc c
	ld a, c
	cp 9      ; bug: should be 10   ; Line fixed by G-Dubs (This is to make the trainer's end position match its start position)
	ret z
	ld d, $0
	push bc
	push hl
	ld b, $0
.drawTrainerPicLoop
    ld a, b
    cp 7
    jr c, .normal
	call DrawTrainerPicColumnBlank
	jr .blank
.normal
    call DrawTrainerPicColumn
    ld a, 7
    add d
    ld d, a
.blank
    inc hl
	inc b
    dec c
    jr nz, .drawTrainerPicLoop
    ld c, 4
    call DelayFrames
    pop hl
    pop bc
    dec hl
    jr .scrollLoop

; write one 7-tile column of the trainer pic to the tilemap
DrawTrainerPicColumn:
	push hl
	push de
	push bc
	ld e, 7
.loop
	ld [hl], d
	ld bc, SCREEN_WIDTH
	add hl, bc
	inc d
	dec e
	jr nz, .loop
	pop bc
	pop de
	pop hl
	ret

DrawTrainerPicColumnBlank:
	push hl
	push bc
	ld e, 7
.loop
	ld [hl], $7F ; blank tile
	ld bc, SCREEN_WIDTH
	add hl, bc
	dec e
	jr nz, .loop
	pop bc
	pop hl
	ret
	
