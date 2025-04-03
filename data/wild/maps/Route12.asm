Route12WildMons:
	def_grass_wildmons 15 ; encounter rate
	db 25, ODDISH         ; 20%
	db 25, BELLSPROUT     ; 20%
	db 28, PIDGEY         ; 15%
	db 30, PIDGEOTTO      ; 10%
	db 30, PIDGEY         ; 10%
	db 25, VENONAT        ; 10%
	db 30, GLOOM          ;  5%
	db 30, WEEPINBELL     ;  5%
	db 31, FARFETCHD      ;  4%
	db 25, DITTO          ;  1%
	end_grass_wildmons
	
	; Pidgey      35%
	; Oddish      20%
	; Bellsprout  20%
    ; Venonat     10%
    ; Pidgeotto   10%
    ; Gloom        5%
    ; Weepinbell   5%
    ; Farfetch'd   4%
    ; Ditto        1%	

	def_water_wildmons  3 ; encounter rate
	db 25, SLOWPOKE       ; 20%
 	db 30, SLOWPOKE       ; 20%
	db 35, SLOWPOKE       ; 15%
	db 20, SLOWPOKE       ; 10%
	db 15, SLOWPOKE       ; 10%
	db 20, SHELLDER       ; 10%
	db 25, SHELLDER       ;  5%
	db 40, SLOWPOKE       ;  5%
	db 30, SLOWBRO        ;  4%
	db 35, SLOWBRO        ;  1%
	end_water_wildmons

    ; Slowpoke  80%
	; Shellder  15%
	; Slowbro    5%
