PalletTownWildMons:
	def_grass_wildmons 25 ; encounter rate
	db  5, PIKACHU        ; 20%
	db  5, EEVEE          ; 20%
	db  5, PIKACHU        ; 15%
	db  5, EEVEE          ; 10%
	db  5, PIKACHU        ; 10%
	db  5, EEVEE          ; 10%
	db  5, CHARMANDER     ;  5%
	db  5, EEVEE          ;  5%
	db  5, BULBASAUR      ;  4%
	db  5, BULBASAUR      ;  1%
	end_grass_wildmons

    ; Pikachu     45%
	; Eevee       45%
    ; Charmander   5%
    ; Bulbasaur    5%

	def_water_wildmons 5  ; encounter rate
	db 20, TENTACOOL      ; 20%
	db 25, TENTACOOL      ; 20%
	db 30, TENTACOOL      ; 15% 
	db 10, TENTACOOL      ; 10%
	db 15, TENTACOOL      ; 10%
	db 35, TENTACOOL      ; 10%
	db  5, TENTACOOL      ;  5%
	db 40, TENTACOOL      ;  5%
	db  5, SQUIRTLE       ;  4%
    db  5, SQUIRTLE       ;  1%
	end_water_wildmons
    
	; Tentacool   95%
	; Squirtle     5%
	