; *****************************************************************
; Jump Table implementation for trainer sprite selection
; Replaces individual IsFighting* functions and previous table attempts
; *****************************************************************

; Main entry point for alternate trainer sprite selection
; Called via farcall from GetTrainerInformation
HandleAlternateTrainerSprite::
	ld a, [wTrainerClass]
	; No need to 'dec a' here if the table is 1-indexed matching class IDs directly
	; Or keep 'dec a' and use a 0-indexed table (standard)

	; Using 0-indexed table (standard approach):
	dec a ; Classes are 1-indexed, table is 0-indexed

	; Bounds check: Ensure class is within the valid range for the table
	cp NUM_TRAINERS ; NUM_TRAINERS is the total number of classes (count = $37 = 55)
	ret nc         ; If a >= NUM_TRAINERS (i.e., original class > $37), class is invalid, return

	; Calculate address in jump table: HL = Base + (A * 2)
	ld hl, TrainerSpriteJumpTable
	add a          ; Multiply 0-based index by 2 (each entry is a 2-byte address)
	ld c, a
	ld b, 0
	add hl, bc     ; Add offset to base address

	; Load the handler address from the table into HL
	ld a, [hli]    ; Load low byte into A
	ld h, [hl]     ; Load high byte into H
	ld l, a        ; Load low byte into L (HL now holds the handler address)

	; Jump to the specific handler routine for this trainer class
	jp hl

; -----------------------------------------------------------------
; Jump Table - Pointers to specific handlers based on trainer class
; CORRECTED - Table is now 0-indexed. Entry N is for Class ID N+1.
; -----------------------------------------------------------------
TrainerSpriteJumpTable: ; Index (Decimal), Class ID (Hex) Comment
	; Index $00 (Class $01 YOUNGSTER)
	dw DefaultTrainerSpriteHandler ; 0, $01: YOUNGSTER
	dw DefaultTrainerSpriteHandler ; 1, $02: BUG_CATCHER
	dw DefaultTrainerSpriteHandler ; 2, $03: LASS
	dw DefaultTrainerSpriteHandler ; 3, $04: SAILOR
	dw DefaultTrainerSpriteHandler ; 4, $05: JR_TRAINER_M
	dw DefaultTrainerSpriteHandler ; 5, $06: JR_TRAINER_F
	dw PokemaniacSpriteHandler     ; 6, $07: POKEMANIAC              ; Has multiple sprites
	dw DefaultTrainerSpriteHandler ; 7, $08: SUPER_NERD				 ; Has multiple sprites        ; Not implemented yet 
	dw DefaultTrainerSpriteHandler ; 8, $09: HIKER
	dw DefaultTrainerSpriteHandler ; 9, $0A: BIKER
	dw DefaultTrainerSpriteHandler ; 10, $0B: BURGLAR
	dw DefaultTrainerSpriteHandler ; 11, $0C: ENGINEER
	dw DefaultTrainerSpriteHandler ; 12, $0D: UNUSED_JUGGLER
	dw DefaultTrainerSpriteHandler ; 13, $0E: FISHER
	dw SwimmerSpriteHandler        ; 14, $0F: SWIMMER                ; Has multiple sprites
	dw DefaultTrainerSpriteHandler ; 15, $10: CUE_BALL
	dw DefaultTrainerSpriteHandler ; 16, $11: GAMBLER
	dw BeautySpriteHandler         ; 17, $12: BEAUTY                 ; Has multiple sprites
	dw DefaultTrainerSpriteHandler ; 18, $13: PSYCHIC_TR		     ; Has multiple sprites        ; Not implemented yet
	dw DefaultTrainerSpriteHandler ; 19, $14: ROCKER
	dw DefaultTrainerSpriteHandler ; 20, $15: JUGGLER
	dw DefaultTrainerSpriteHandler ; 21, $16: TAMER
	dw DefaultTrainerSpriteHandler ; 22, $17: BIRD_KEEPER
	dw DefaultTrainerSpriteHandler ; 23, $18: BLACKBELT
	dw DefaultTrainerSpriteHandler ; 24, $19: RIVAL1
	dw DefaultTrainerSpriteHandler ; 25, $1A: PROF_OAK				 ; Has multiple sprites		   ; Not implemented yet
	dw DefaultTrainerSpriteHandler ; 26, $1B: CHIEF
	dw DefaultTrainerSpriteHandler ; 27, $1C: SCIENTIST
	dw DefaultTrainerSpriteHandler ; 28, $1D: GIOVANNI				 ; Has multiple sprites		   ; Not implemented yet
	dw DefaultTrainerSpriteHandler ; 29, $1E: ROCKET				 
	dw DefaultTrainerSpriteHandler ; 30, $1F: COOLTRAINER_M			 ; Has multiple sprites		   ; Not implemented yet
	dw DefaultTrainerSpriteHandler ; 31, $20: COOLTRAINER_F			 ; Has multiple sprites		   ; Not implemented yet
	dw DefaultTrainerSpriteHandler ; 32, $21: BRUNO					 ; Has multiple sprites		   ; Not implemented yet
	dw DefaultTrainerSpriteHandler ; 33, $22: BROCK					 ; Has multiple sprites		   ; Not implemented yet
	dw DefaultTrainerSpriteHandler ; 34, $23: MISTY					 ; Has multiple sprites		   ; Not implemented yet
	dw DefaultTrainerSpriteHandler ; 35, $24: LT_SURGE				 ; Has multiple sprites		   ; Not implemented yet
	dw DefaultTrainerSpriteHandler ; 36, $25: ERIKA					 ; Has multiple sprites		   ; Not implemented yet
	dw DefaultTrainerSpriteHandler ; 37, $26: KOGA					 ; Has multiple sprites		   ; Not implemented yet
	dw DefaultTrainerSpriteHandler ; 38, $27: BLAINE			     ; Has multiple sprites		   ; Not implemented yet
	dw DefaultTrainerSpriteHandler ; 39, $28: SABRINA				 ; Has multiple sprites		   ; Not implemented yet
	dw DefaultTrainerSpriteHandler ; 40, $29: GENTLEMAN				 ; Has multiple sprites		   ; Not implemented yet
	dw DefaultTrainerSpriteHandler ; 41, $2A: RIVAL2
	dw DefaultTrainerSpriteHandler ; 42, $2B: RIVAL3
	dw DefaultTrainerSpriteHandler ; 43, $2C: LORELEI				 ; Has multiple sprites		   ; Not implemented yet
	dw DefaultTrainerSpriteHandler ; 44, $2D: CHANNELER
	dw DefaultTrainerSpriteHandler ; 45, $2E: AGATHA				 ; Has multiple sprites		   ; Not implemented yet
	dw DefaultTrainerSpriteHandler ; 46, $2F: LANCE				     ; Has multiple sprites		   ; Not implemented yet
	dw DefaultTrainerSpriteHandler ; 47, $30: JESSIE_JAMES
	dw DefaultTrainerSpriteHandler ; 48, $31: POKEFAN_M
	dw DefaultTrainerSpriteHandler ; 49, $32: POKEFAN_F
	dw GuitaristSpriteHandler      ; 50, $33: GUITARIST  			 ; Has multiple sprites		   
	dw DefaultTrainerSpriteHandler ; 51, $34: SOLDIER
	dw DefaultTrainerSpriteHandler ; 52, $35: LADY
	dw DefaultTrainerSpriteHandler ; 53, $36: WAITER
	dw DefaultTrainerSpriteHandler ; 54, $37: CHEF
	dw TeacherSpriteHandler        ; 55, $38: TEACHER				 ; Has multiple sprites		   
	dw SchoolKidSpriteHandler      ; 56, $39: SCHOOL_KID			 ; Has multiple sprites		   

	; NOTE: Table has 55 entries (indices 0-54), correctly matching NUM_TRAINERS ($37 = 55)
	; for classes $01-$37. Class $00 (NOBODY) is not handled by this table.

; -----------------------------------------------------------------
; Sprite Handler Routines (Remain the same as before)
; -----------------------------------------------------------------

; Default handler: Does nothing, uses sprite pointer already set.
DefaultTrainerSpriteHandler:
	ret

; Handler for Swimmer class ($0F) - Index 14
SwimmerSpriteHandler:
	ld a, [wTrainerNo]
	cp $01
	ret c ; Trainer 0 -> Use default (SwimmerPic)
	cp $02
	jr nc, .NotSwimmer1 ; Check if >= 2
	; Trainer 1 -> Use Swimmer2Pic
	ld de, Swimmer2Pic
	call UpdateTrainerPicPointer
	ret ; Explicitly return after update
.NotSwimmer1:
	ret

; Handler for Guitarist class ($33) - Index 50 (Corrected from $32 label)
GuitaristSpriteHandler:
	ld a, [wTrainerNo]
	cp $04
	ret c ; Trainers 0-3 -> Use default (Guitarist1Pic)
	cp $07
	jr nc, .CheckGuitarist7to9 ; Check if >= 7
	; Trainers 4-6 -> Use Guitarist2Pic
	ld de, Guitarist2Pic
	call UpdateTrainerPicPointer
	ret ; Done for this range
.CheckGuitarist7to9:
	cp $0A
	jr nc, .GuitaristDone ; Check if >= 10
	; Trainers 7-9 -> Use Guitarist3Pic
	ld de, Guitarist3Pic
	call UpdateTrainerPicPointer
	ret ; Done for this range
.GuitaristDone:
	ret

; Handler for Pokemaniac class ($07) - Index 6
PokemaniacSpriteHandler:
	ld a, [wTrainerNo]
	cp $08
	ret c ; Trainers 0-7 -> Use default (PokemaniacPic)
	cp $0B
	jr nc, .PokemaniacDone ; Check if >= 11
	; Trainers 8-10 -> Use Pokemaniac2Pic
	ld de, Pokemaniac2Pic
	call UpdateTrainerPicPointer
	ret ; Done for this range
.PokemaniacDone:
	ret

; Handler for Beauty class ($12) - Index 17
BeautySpriteHandler:
	ld a, [wTrainerNo]
	cp $01
	ret c ; Trainer 0 -> Use default (BeautyPic)
	cp $02
	jr nc, .CheckBeauty2to3 ; Check if >= 2
	; Trainer 1 -> Use Beauty2Pic
	ld de, Beauty2Pic
	call UpdateTrainerPicPointer
	ret ; Done for this range
.CheckBeauty2to3:
    cp $04
    jr nc, .BeautyDone ; Check if >= 4
    ; Trainers 2-3 -> Use Beauty3Pic
    ld de, Beauty3Pic
    call UpdateTrainerPicPointer
    ret ; Done for this range
.BeautyDone:
	ret

; Handler for Teacher class ($13) - Index 18
TeacherSpriteHandler:
    ld a, [wTrainerNo]    
    cp $02
    jr nz, .TeacherDone ; If not 2, jump to TeacherDone (Use default sprite)
    ; Trainer 2 only -> Use UnusedTeacherPic:
    ld de, Teacher2Pic
    call UpdateTrainerPicPointer
    ret ; Done for this range
.TeacherDone:
    ret

; Handler for SchoolKid class ($14) - Index 19
SchoolKidSpriteHandler:
	ld a, [wTrainerNo]
	cp $01
	ret c ; Trainers 0-1 -> Use default (SchoolKidPic) ( School Boy)
	cp $04
	jr nc, .SchoolKidDone ; Check if >= 4
	; Trainers 1-3 -> Use SchoolKid2Pic (School Girl)
	ld de, SchoolKid2Pic
	call UpdateTrainerPicPointer
	ret ; Done for this range
.SchoolKidDone:
	ret

; -----------------------------------------------------------------
; Helper function to update the sprite pointer
; -----------------------------------------------------------------
UpdateTrainerPicPointer:
	ld hl, wTrainerPicPointer
	ld a, e
	ld [hli], a
	ld [hl], d
	ret