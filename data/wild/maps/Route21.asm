Route21WildMons:
	def_grass_wildmons 25 ; encounter rate
	db 35, PIDGEY         ; 15%
	db 33, RATTATA        ; 15%
	db 35, SPEAROW        ; 15%
	db 37, PIDGEOTTO      ; 15%
	db 37, PIDGEY         ; 10%
    db 37, RATICATE       ; 10%
	db 39, PIDGEOTTO      ; 10%
	db 41, PIDGEOT        ;  5%
	db 28, MR_MIME        ;  2%
	db 36, TANGELA        ;  1%
	db 39, TANGELA        ;  1%
	db 42, TANGELA        ;  1%
	end_grass_wildmons

	; Pidgey     25%
	; Pidgeotto  25%
	; Rattata    15%
	; Spearow    15%
	; Raticate   10%
	; Pidgeot     5%
	; Tangela     3%
	; Mr. Mime    2%

	def_water_wildmons 5 ; encounter rate
	db 20, TENTACOOL      ; 15%
	db 25, TENTACOOL      ; 15%
	db 30, TENTACOOL      ; 15%
	db 35, TENTACOOL      ; 15%
	db  5, TENTACOOL      ; 10%
	db 10, TENTACOOL      ; 10%
	db 15, TENTACOOL      ; 10%
	db 30, HORSEA         ;  5%
	db 40, TENTACRUEL     ;  2%
	db 40, TENTACOOL      ;  1%
	db 40, TENTACOOL      ;  1%
	db 45, TENTACRUEL     ;  1%
	end_water_wildmons
    
	; Tentacool   92%
	; Horsea       5%
	; Tentacruel   3%
