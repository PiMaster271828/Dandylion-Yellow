PalletTownWildMons:
	def_grass_wildmons 25 ; encounter rate
	db  5, PIKACHU        ; 15%
    db  5, PIKACHU        ; 15%
	db  5, PIKACHU        ; 15%
	db  5, PIKACHU        ; 15%
	db  5, EEVEE          ; 10%
	db  5, EEVEE          ; 10%
	db  5, EEVEE          ; 10%
	db  5, CHARMANDER     ;  5%
	db  5, BULBASAUR      ;  2%
	db  5, BULBASAUR      ;  1%
	db  5, BULBASAUR      ;  1%
	db  5, BULBASAUR      ;  1%
	end_grass_wildmons

    ; Pikachu     60%
	; Eevee       30%
    ; Charmander   5%
    ; Bulbasaur    5%

	def_water_wildmons 5  ; encounter rate
    db 20, TENTACOOL      ; 15%
	db 25, TENTACOOL      ; 15%
	db 30, TENTACOOL      ; 15%
	db 35, TENTACOOL      ; 15%
	db  5, TENTACOOL      ; 10%
	db 10, TENTACOOL      ; 10%
	db 15, TENTACOOL      ; 10%
	db  5, SQUIRTLE       ;  5%
	db 40, TENTACRUEL     ;  2%
	db 40, TENTACOOL      ;  1%
	db 40, TENTACOOL      ;  1%
	db 45, TENTACRUEL     ;  1%
	end_water_wildmons
    
	; Tentacool   92%
	; Squirtle     5%
	; Tentacruel   3%
	