Route12WildMons:
	def_grass_wildmons 15 ; encounter rate
	db 28, PIDGEY         ; 15%
	db 25, ODDISH         ; 15%
	db 25, BELLSPROUT     ; 15%
	db 25, VENONAT        ; 15%
    db 30, PIDGEOTTO      ; 10%
	db 30, GLOOM          ; 10%
	db 30, WEEPINBELL     ; 10%
	db 30, PIDGEY         ;  5%
	db 33, FARFETCHD      ;  2%
	db 30, KRABBY         ;  1%
	db 35, VENOMOTH       ;  1%
	db 25, DITTO          ;  1%
	end_grass_wildmons
	
	; Pidgey      15%
	; Oddish      15%
	; Bellsprout  15%
    ; Venonat     15%
    ; Pidgeotto   10%
    ; Gloom       10%
    ; Weepinbell  10%
    ; Farfetch'd   2%
	; Krabby       1%
	; Venomoth     1%
    ; Ditto        1%	

	def_water_wildmons  3 ; encounter rate
	db 20, SLOWPOKE       ; 15%
	db 25, SLOWPOKE       ; 15%
 	db 30, SLOWPOKE       ; 15%
	db 35, SLOWPOKE       ; 15%
	db 40, SLOWPOKE       ; 10%
	db 20, SHELLDER       ; 10%
	db 30, TENTACOOL      ; 10%
	db 25, SHELLDER       ;  5%
	db 30, KRABBY         ;  2%
	db 30, SLOWBRO        ;  1%
	db 35, SLOWBRO        ;  1%
	db 40, SLOWBRO        ;  1%
	end_water_wildmons

    ; Slowpoke   70%
	; Shellder   15%
	; Tentacool  10%
	; Slowbro     3%
	; Krabby      2%
