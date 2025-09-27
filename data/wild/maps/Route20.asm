Route20WildMons:
	def_grass_wildmons 25 ; encounter rate
	db 30, SLOWPOKE       ; 15%
	db 28, KRABBY         ; 15%
	db 26, SHELLDER       ; 15%
	db 28, SEEL           ; 15%
	db 30, PIDGEY         ; 10%
	db 30, STARYU         ; 10%
    db 30, KRABBY         ; 10%
	db 30, KINGLER        ;  5%
	db 33, KRABBY         ;  2%
	db 35, KRABBY         ;  1%
	db 37, KRABBY         ;  1%
	db 39, KRABBY         ;  1%
	end_grass_wildmons

    ; Krabby     30%
	; Slowpoke   15%
	; Shellder   15%
	; Seel       15%
	; Pidgey     10%
    ; Staryu     10%
	; Kingler     5%
	
	def_water_wildmons 5 ; encounter rate
	db 20, TENTACOOL      ; 15%
	db 25, TENTACOOL      ; 15%
	db 30, TENTACOOL      ; 15%
	db 35, TENTACOOL      ; 15%
	db  5, TENTACOOL      ; 10%
	db 10, TENTACOOL      ; 10%
	db 15, TENTACOOL      ; 10%
	db 30, SEEL           ;  5%
	db 40, TENTACRUEL     ;  2%
	db 40, TENTACOOL      ;  1%
	db 40, TENTACOOL      ;  1%
	db 45, TENTACRUEL     ;  1%
	end_water_wildmons
    
	; Tentacool   92%
	; Seel         5%
	; Tentacruel   3%
