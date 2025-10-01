Route18WildMons:
	def_grass_wildmons 25 ; encounter rate
	db 24, SPEAROW        ; 15%
	db 24, DODUO          ; 15%
	db 24, RATTATA        ; 15%
	db 24, PIDGEY         ; 15%
	db 26, SPEAROW        ; 10%
    db 26, DODUO          ; 10%
	db 26, RATTATA        ; 10%
	db 28, RATICATE       ;  5%
	db 28, FEAROW         ;  2%
	db 28, DODRIO         ;  1%
	db 28, PIDGEOTTO      ;  1%
	db 30, PIDGEOT        ;  1%
	end_grass_wildmons

    ; Spearow    25%
	; Doduo      25%
	; Rattata    25%
	; Pidgey     15%
	; Raticate    5%
	; Fearow      2%
	; Dodrio      1%
	; Pidgeotto   1%
	; Pidgeot     1%

	def_water_wildmons 3 ; encounter rate
	db 20, TENTACOOL     ; 15%
	db 25, TENTACOOL     ; 15%
	db 30, TENTACOOL     ; 15%
	db 35, TENTACOOL     ; 15%
	db  5, TENTACOOL     ; 10%
	db 10, TENTACOOL     ; 10%
	db 15, TENTACOOL     ; 10%
	db 25, SHELLDER      ;  5%
	db 30, SHELLDER      ;  2%
	db 35, CLOYSTER      ;  1%
	db 40, CLOYSTER      ;  1%
	db 40, TENTACOOL     ;  1%
	end_water_wildmons
    
	; Tentacool   91%
	; Shelder      7%
	; Cloyster     2%
