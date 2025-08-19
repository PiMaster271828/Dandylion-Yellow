CheckAlternatePokemonSprite::
; Compact version assuming all alternate sprites are in same bank
; Returns: carry set if alternate sprite loaded, clear if using normal sprite
	
	ld hl, AlternatePokemonSpriteTable
	
.tableLoop
	ld a, [hli]  ; trainer class
	cp $FF
	jr z, .noAlternate
	
	ld b, a
	ld a, [wTrainerClass]
	cp b
	jr nz, .skipEntry
	
	ld a, [hli]  ; pokemon species  
	ld b, a
	ld a, [wCurPartySpecies]
	cp b
	jr z, .foundMatch
	
	; Skip sprite pointer (2 bytes)
	inc hl
	inc hl
	jr .tableLoop
	
.skipEntry
	; Skip pokemon + sprite pointer (3 bytes)
	inc hl
	inc hl  
	inc hl
	jr .tableLoop

.foundMatch
	ld a, [hli]  ; sprite pointer low
	ld [wSpriteInputPtr], a
	ld a, [hl]   ; sprite pointer high
	ld [wSpriteInputPtr + 1], a
	scf
	ret

.noAlternate
	and a
	ret

; COMPACT TABLE - Only 4 bytes per entry (no bank stored)
AlternatePokemonSpriteTable:
	db JESSIE_JAMES, MEOWTH, LOW(RMeowthPicFront), HIGH(RMeowthPicFront)
	db $FF