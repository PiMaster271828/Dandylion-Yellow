Route24WildMons:
	def_grass_wildmons 25 ; encounter rate
	db 15, ODDISH         ; 15%
	db 15, BELLSPROUT     ; 15%
	db 17, PIDGEY         ; 15%
	db  7, CATERPIE       ; 15%
	db 10, ABRA           ; 10%
	db 16, VENONAT        ; 10%
	db 12, PSYDUCK        ; 10%
	db  8, METAPOD        ;  5%
	db  6, WEEDLE         ;  2%
	db  7, WEEDLE         ;  1%
	db  8, KAKUNA         ;  1%
	db 17, PIDGEOTTO      ;  1%
	end_grass_wildmons

    ; Oddish      15%
	; Bellsprout  15%
	; Pidgey      15%
    ; Caterpie    15%
	; Abra        10%
	; Venonat     10%
	; Psyduck     10%
	; Metapod      5%
	; Weedle       3%
	; Kakuna       1%
	; Pidgeotto    1%

	def_water_wildmons 3  ; encounter rate
	db 30, GOLDEEN        ; 15%
	db 35, GOLDEEN        ; 15%	
    db 40, GOLDEEN        ; 15%
	db 30, PSYDUCK        ; 15%
	db 30, TENTACOOL      ; 10%
	db 30, KRABBY         ; 10%
	db 30, POLIWAG        ; 10% 
	db 35, PSYDUCK        ;  5%
	db 35, SEAKING        ;  2%
	db 40, SEAKING        ;  1%
	db 45, SEAKING        ;  1%
	db 50, SEAKING        ;  1%
	end_water_wildmons
	
	; Goldeen    45%
	; Psyduck    20%
	; Tentacool  10%
	; Krabby     10%
	; Poliwag    10%
	; Seaking     5%