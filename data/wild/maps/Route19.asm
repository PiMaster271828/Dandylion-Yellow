Route19WildMons:
	def_grass_wildmons 25 ; encounter rate
	db 25, SPEAROW        ; 15%
	db 25, KRABBY         ; 15%
	db 25, RATTATA        ; 15%
	db 25, PIDGEY         ; 15%
	db 27, SHELLDER       ; 10%
    db 27, KRABBY         ; 10%
	db 27, SLOWPOKE       ; 10%
	db 26, STARYU         ;  5%
	db 27, STARYU         ;  2%
	db 28, STARYU         ;  1%
	db 29, STARYU         ;  1%
	db 30, STARYU         ;  1%
	end_grass_wildmons

    ; Krabby     25%
	; Spearow    15%
	; Rattata    15%
	; Pidgey     15%
    ; Shellder   10%
	; Slowpoke   10%
	; Staryu     10%

	def_water_wildmons 5 ; encounter rate
	db 20, TENTACOOL      ; 15%
	db 25, TENTACOOL      ; 15%
	db 30, TENTACOOL      ; 15%
	db 35, TENTACOOL      ; 15%
	db  5, TENTACOOL      ; 10%
	db 10, TENTACOOL      ; 10%
	db 15, TENTACOOL      ; 10%
	db 30, SHELLDER       ;  5%
	db 40, TENTACRUEL     ;  2%
	db 40, TENTACOOL      ;  1%
	db 40, TENTACOOL      ;  1%
	db 45, TENTACRUEL     ;  1%
	end_water_wildmons
    
	; Tentacool   92%
	; Shellder     5%
	; Tentacruel   3%