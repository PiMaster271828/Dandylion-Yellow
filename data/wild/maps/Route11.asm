Route11WildMons:
	def_grass_wildmons 15 ; encounter rate
	db 21, PIDGEY         ; 20%
	db 20, RATTATA        ; 20%
	db 22, DROWZEE        ; 15%
	db 23, PIDGEY         ; 10%
	db 22, RATTATA        ; 10%
	db 22, SPEAROW        ; 10%
	db 22, EKANS          ;  5%
	db 22, SANDSHREW      ;  5%
	db 25, PIDGEOTTO      ;  4%
	db 25, RATICATE       ;  1%
	end_grass_wildmons
	
	; Pidgey     30%
	; Rattata    30%
	; Drowzee    15%
	; Spearow    10%
	; Ekans       5%
	; Sandshrew   5%
	; Pidgeotto   4%
	; Raticate    1%

	def_water_wildmons 3  ; encounter rate
	db 20, TENTACOOL      ; 20%
	db 25, TENTACOOL      ; 20%
	db 30, TENTACOOL      ; 15% 
	db 10, TENTACOOL      ; 10%
	db 15, TENTACOOL      ; 10%
	db 35, TENTACOOL      ; 10%
	db  5, TENTACOOL      ;  5%
	db 40, TENTACOOL      ;  5%
	db 30, POLIWAG        ;  4%
    db 40, TENTACRUEL     ;  1%
	end_water_wildmons
    
	; Tentacool   95%
	; Poliwag      4%
	; Tentacruel   1%
