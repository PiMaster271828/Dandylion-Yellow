WildMonEncounterSlotChances:
; There are 10 slots for wild pokemon, and this is the table that defines how common each of
; those 10 slots is. A random number is generated and then the first byte of each pair in this
; table is compared against that random number. If the random number is less than or equal
; to the first byte, then that slot is chosen.  The second byte is double the slot number.
	/*
	db  50, $00 ; 51/256 = 19.9% chance of slot 0
	db 101, $02 ; 51/256 = 19.9% chance of slot 1
	db 140, $04 ; 39/256 = 15.2% chance of slot 2
	db 165, $06 ; 25/256 =  9.8% chance of slot 3
	db 190, $08 ; 25/256 =  9.8% chance of slot 4
	db 215, $0A ; 25/256 =  9.8% chance of slot 5
	db 228, $0C ; 13/256 =  5.1% chance of slot 6
	db 241, $0E ; 13/256 =  5.1% chance of slot 7
	db 252, $10 ; 11/256 =  4.3% chance of slot 8
	db 255, $12 ;  3/256 =  1.2% chance of slot 9
	*/

	db  38, $00 ; 38/256 = 14.8% chance of slot 0
	db  76, $02 ; 38/256 = 14.8% chance of slot 1
	db 113, $04 ; 37/256 = 14.5% chance of slot 2
	db 150, $06 ; 37/256 = 14.5% chance of slot 3
	db 176, $08 ; 26/256 = 10.2% chance of slot 4
	db 202, $0A ; 26/256 = 10.2% chance of slot 5
	db 228, $0C ; 26/256 = 10.2% chance of slot 6
	db 241, $0E ; 13/256 =  5.1% chance of slot 7
	db 246, $10 ;  5/256 =  2.0% chance of slot 8
	db 249, $12 ;  3/256 =  1.2% chance of slot 9
	db 252, $14 ;  3/256 =  1.2% chance of slot 10
	db 255, $16 ;  3/256 =  1.2% chance of slot 11
