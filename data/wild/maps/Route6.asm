Route6WildMons:
	def_grass_wildmons 15 ; encounter rate
	db 16, PIDGEY         ; 20%
	db 16, RATTATA        ; 20% 
	db 10, ABRA           ; 15%
	db 15, MANKEY         ; 10%
	db 15, MEOWTH         ; 10%
	db 18, PIDGEY         ; 10%
	db 16, ODDISH         ;  5%
	db 16, BELLSPROUT     ;  5%
	db 10, JIGGLYPUFF     ;  4%
	db 19, PIDGEOTTO      ;  1%
	end_grass_wildmons

    ; Pidgey      20%
	; Rattata     20%
	; Abra        15%
	; Mankey      10%
	; Meowth      10%
	; Oddish       5%
	; Bellsprout   5%
	; Jigglypuff   4%
	; Pidgeotto    1%

	def_water_wildmons 3  ; encounter rate
	db 15, PSYDUCK        ; 20%
	db 20, PSYDUCK        ; 20%
	db 25, PSYDUCK        ; 15%
	db 30, PSYDUCK        ; 10%
	db 30, SHELLDER       ; 10%
	db 15, SLOWPOKE       ; 10%
	db 35, PSYDUCK        ;  5%
	db 40, PSYDUCK        ;  5%
	db 30, GOLDUCK        ;  4%
	db 40, GOLDUCK        ;  1%
	end_water_wildmons
	
	; Psyduck   75%
	; Shellder  10%
	; Slowpoke  10%
	; Golduck    5%
