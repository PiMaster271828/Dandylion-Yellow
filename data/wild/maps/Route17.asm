Route17WildMons:
	def_grass_wildmons 25 ; encounter rate
	db 26, DODUO          ; 15%
	db 28, PONYTA         ; 15%
	db 28, SPEAROW        ; 15%
	db 28, RATTATA        ; 15%
	db 32, PONYTA         ; 10%
    db 28, DODUO          ; 10%
	db 26, PIDGEY         ; 10%
	db 30, RATICATE       ;  5%
	db 30, FEAROW         ;  2%
	db 29, DODRIO         ;  1%
	db 30, PIDGEOTTO      ;  1%
	db 32, RAPIDASH       ;  1%
	end_grass_wildmons

	; Doduo      25%
    ; Ponyta     25%
	; Spearow    15%
	; Rattata    15%
	; Pidgey     10%
	; Raticate    5%
	; Fearow      2%
	; Dodrio      1%
	; Pidgeotto   1%
	; Rapidash    1%

	def_water_wildmons 3 ; encounter rate
	db 20, TENTACOOL      ; 15%
	db 25, TENTACOOL      ; 15%
	db 30, TENTACOOL      ; 15%
	db 35, TENTACOOL      ; 15%
	db  5, TENTACOOL      ; 10%
	db 10, TENTACOOL      ; 10%
	db 15, TENTACOOL      ; 10%
	db 25, SHELLDER       ;  5%
	db 30, SHELLDER       ;  2%
	db 35, CLOYSTER       ;  1%
	db 40, CLOYSTER       ;  1%
	db 40, TENTACOOL      ;  1%
	end_water_wildmons
    
	; Tentacool   91%
	; Shelder      7%
	; Cloyster     2%
