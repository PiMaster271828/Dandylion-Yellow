MACRO move_choices
	IF _NARG
		db \# ; all args
	ENDC
	db 0 ; end
	DEF list_index += 1
ENDM

; move choice modification methods that are applied for each trainer class
; 1	Discourage redundant status moves.
; 2 Encourage moves with stat boosting effects.
; 3 Encourage moves that are effective against the player's mon (even if non-damaging).
TrainerClassMoveChoiceModifications:
	list_start
	move_choices         ; YOUNGSTER
	move_choices 1       ; BUG CATCHER
	move_choices 1       ; LASS
	move_choices 1, 3    ; SAILOR
	move_choices 1       ; JR. TRAINER ♂
	move_choices 1       ; JR. TRAINER ♀
	move_choices 1, 2, 3 ; POKÉMANIAC
	move_choices 1, 2    ; SUPER NERD
	move_choices 1       ; HIKER
	move_choices 1       ; BIKER
	move_choices 1, 3    ; BURGLAR
	move_choices 1       ; ENGINEER
	move_choices 1, 2    ; UNUSED JUGGLER
	move_choices 1, 3    ; FISHER
	move_choices 1, 3    ; SWIMMER
	move_choices         ; CUE BALL
	move_choices 1       ; GAMBLER
	move_choices 1, 3    ; BEAUTY
	move_choices 1, 2    ; PSYCHIC
	move_choices 1       ; ROCKER
	move_choices 1       ; JUGGLER
	move_choices 1       ; TAMER
	move_choices 1       ; BIRD KEEPER
	move_choices 1       ; BLACKBELT
	move_choices 1       ; RIVAL 1
	move_choices 1, 3    ; PROF. OAK
	move_choices 1, 2    ; CHIEF
	move_choices 1, 2    ; SCIENTIST
	move_choices 1, 3    ; GIOVANNI
	move_choices 1       ; ROCKET
	move_choices 1, 3    ; COOLTRAINER ♂	
	move_choices 1, 3    ; COOLTRAINER ♀	
	move_choices 1       ; BRUNO
	move_choices 1       ; BROCK
	move_choices 1, 3    ; MISTY
	move_choices 1       ; LT. SURGE
	move_choices 1, 3    ; ERIKA
	move_choices 1, 3    ; KOGA				
	move_choices 1       ; BLAINE
	move_choices 1       ; SABRINA
	move_choices 1, 2    ; GENTLEMAN
	move_choices 1, 3    ; RIVAL 2
	move_choices 1, 3    ; RIVAL 3
	move_choices 1, 2, 3 ; LORELEI
	move_choices 1       ; CHANNELER
	move_choices 1       ; AGATHA           
	move_choices 1, 3    ; LANCE
	move_choices         ; JESSIE & JAMES	; New trainer class for Team Rocket added by Vlad 
	move_choices 1       ; POKÉFAN ♂		; New trainer class added by G-Dubs
	move_choices 1       ; POKÉFAN ♀		; New trainer class added by G-Dubs
	move_choices 1       ; GUITARIST		; New trainer class added by G-Dubs
	move_choices 1       ; SOLDIER			; New trainer class added by G-Dubs
	move_choices 1       ; LADY				; New trainer class added by G-Dubs
	move_choices 1       ; WAITER			; New trainer class added by G-Dubs
	move_choices 1       ; CHEF				; New trainer class added by G-Dubs
	move_choices 1       ; TEACHER   		; New trainer class added by G-Dubs
	move_choices 1, 3    ; SCHOOL KID		; New trainer class added by G-Dubs
	assert_list_length NUM_TRAINERS
