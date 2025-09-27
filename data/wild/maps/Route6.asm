Route6WildMons:
	def_grass_wildmons 15 ; encounter rate
	db 16, RATTATA        ; 15%
    db 16, PIDGEY         ; 15%
	db 15, MEOWTH         ; 15%
	db 16, SPEAROW        ; 15%
    db  9, JIGGLYPUFF     ; 10%
    db 15, PSYDUCK        ; 10%
    db 10, ABRA           ; 10%
    db 15, MANKEY         ;  5%
    db 15, MAGNEMITE      ;  2%
	db 15, BELLSPROUT     ;  1%
	db 15, ODDISH         ;  1%
	db 19, PIDGEOTTO      ;  1%
	end_grass_wildmons

    ; Pidgey      15%
	; Rattata     15%
	; Meowth      15%
	; Spearow     15%
	; Jigglypuff  10%
	; Psyduck     10%
	; Abra        10%
	; Mankey       5%
    ; Magnemite    2%	
	; Oddish       1%
	; Bellsprout   1%
	; Pidgeotto    1%

	def_water_wildmons 3  ; encounter rate
	db 15, PSYDUCK        ; 15%
	db 20, PSYDUCK        ; 15%
	db 25, PSYDUCK        ; 15%
	db 30, PSYDUCK        ; 15%
	db 35, PSYDUCK        ; 10%
	db 15, SLOWPOKE       ; 10%
	db 10, PSYDUCK        ; 10%
	db 40, PSYDUCK        ;  5%
	db 30, SHELLDER       ;  2%
	db 30, GOLDUCK        ;  1%
	db 35, GOLDUCK        ;  1%
	db 40, GOLDUCK        ;  1%
	end_water_wildmons
	
	; Psyduck   85%
	; Slowpoke  10%
	; Golduck    3%
	; Shellder   2%
