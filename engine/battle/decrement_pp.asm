/***********************************************************************************************************************************************************************************************************************************
Code modified by G-Dubs so that Struggle uses PP if it is used as a normal move, but not if it is used because a PokéMon has no PP on all it moves, and is forced to "Struggle".
************************************************************************************************************************************************************************************************************************************/
DecrementPP:
; after using a move, decrement pp in battle and (if not transformed?) in party
	ld a, [de]                    ; Load move ID
    cp STRUGGLE                   ; Check if move is Struggle
    jr nz, .checkStatus           ; If not, continue normally

    ; Struggle check: If all other moves have 0 PP, do not decrement
    call CheckIfNoMovesLeft
    ret z                         ; If all PP are 0, do not decrement Struggle's PP

    ; Otherwise, Struggle was used normally, continue to decrement PP

.checkStatus:
	ld hl, wPlayerBattleStatus1
	ld a, [hli]                   ; load the wPlayerBattleStatus1 pokemon status flags and increment hl to load the
	                              ; wPlayerBattleStatus2 status flags later
	and (1 << STORING_ENERGY) | (1 << THRASHING_ABOUT) | (1 << ATTACKING_MULTIPLE_TIMES)
	ret nz                        ; if any of these statuses are true, don't decrement PP
	bit USING_RAGE, [hl]
	ret nz                        ; don't decrement PP either if Pokemon is using Rage
	ld hl, wBattleMonPP           ; PP of first move (in battle)

; decrement PP in the battle struct
	call .DecrementPP

; decrement PP in the party struct
	ld a, [wPlayerBattleStatus3]
	bit TRANSFORMED, a
	ret nz                        ; Return if transformed. Pokemon Red stores the "current pokemon's" PP separately from the "Pokemon in your party's" PP.  This is duplication -- in all cases *other* than Pokemon with Transform.
	                              ; Normally, this means we have to go on and make the same modification to the "party's pokemon" PP that we made to the "current pokemon's" PP.
							      ; But, if we're dealing with a Transformed Pokemon, it has separate PP for the move set that it copied from its opponent, which is *not* the same as its real PP as part of your party.
							      ; So we return, and don't do that part.

	ld hl, wPartyMon1PP           ; PP of first move (in party)
	ld a, [wPlayerMonNumber]      ; which mon in party is active
	ld bc, wPartyMon2 - wPartyMon1
	call AddNTimes                ; calculate address of the mon to modify

.DecrementPP:
	ld a, [wPlayerMoveListIndex]  ; which move (0, 1, 2, 3) did we use?
	ld c, a
	ld b, 0
	add hl, bc                    ; calculate the address in memory of the PP we need to decrement based on the move chosen.
	dec [hl]                      ; Decrement PP
	ret

/*******************************************************************
Function added by G-Dubs to check if a PokéMon has no moves left.
********************************************************************/
; CheckIfNoMovesLeft - Checks if all moves have 0 PP left
CheckIfNoMovesLeft:
    ld hl, wBattleMonPP  ; Pointer to battle Pokémon's PP
    ld b, 4              ; Number of moves to check

.loop:
    ld a, [hl]           ; Load PP for current move
    and a                ; Is it 0?
    jr nz, .hasPP        ; If any move has PP, return "not forced"
    
    inc hl               ; Move to next move's PP
    dec b                ; Decrease counter
    jr nz, .loop         ; Repeat for all 4 moves

    xor a                ; No PP left → return Z flag set
    ret

.hasPP:
    ld a, 1              ; At least one move has PP → return Z flag clear
    ret