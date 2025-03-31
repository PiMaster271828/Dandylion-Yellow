Route24WildMons:
	def_grass_wildmons 25 ; encounter rate
	db 15, ODDISH         ; 20%
	db 15, BELLSPROUT     ; 20%
	db 17, PIDGEY         ; 15%
	db 10, ABRA           ; 10%
	db 16, VENONAT        ; 10%
	db  7, CATERPIE       ; 10% 
	db  8, METAPOD        ;  5%
	db  7, WEEDLE         ;  5%
	db  8, KAKUNA         ;  4%
	db 17, PIDGEOTTO      ;  1%
	end_grass_wildmons

    ; Oddish      20%
	; Bellsprout  20%
	; Pidgey      15%
	; Abra        10%
	; Venonat     10%
	; Caterpie    10%
	; Metapod      5%
	; Weedle       5%
	; Kakuna       4%
	; Pidgeotto    1%

	def_water_wildmons 3  ; encounter rate

    db 25, GOLDEEN        ; 20%
	db 30, GOLDEEN        ; 20%
	db 35, GOLDEEN        ; 15%
	db 30, PSYDUCK        ; 10%
	db 30, KRABBY         ; 10%
	db 30, POLIWAG        ; 10% 
	db 40, GOLDEEN        ;  5%
	db 30, SEAKING        ;  5%
	db 35, SEAKING        ;  4%
	db 40, SEAKING        ;  1%
	end_water_wildmons
	
	; Goldeen   60%
	; Psyduck   10%
	; Krabby    10%
	; Poliwag   10%
	; Seaking   10%