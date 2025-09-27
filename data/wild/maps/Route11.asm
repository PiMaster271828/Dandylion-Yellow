Route11WildMons:
	def_grass_wildmons 15 ; encounter rate
	db 20, RATTATA        ; 15%
    db 21, PIDGEY         ; 15%
	db 18, SPEAROW        ; 15%
	db 22, DROWZEE        ; 15%
    db 22, SANDSHREW      ; 10%
    db 20, EKANS          ; 10%
    db 21, MEOWTH         ; 10%
    db 22, EKANS          ;  5%
    db 18, MAGNEMITE      ;  2%
	db 21, MANKEY         ;  1%
	db 25, RATICATE       ;  1%
	db 25, PIDGEOTTO      ;  1%
	end_grass_wildmons
	
	; Rattata    15%
	; Pidgey     15%
	; Spearow    15%
	; Drowzee    15%
    ; Ekans      15%
	; Meowth     10%
	; Sandshrew  10%
	; Magnemite   2%
	; Mankey      1%
	; Raticate    1%
    ; Pidgeotto   1%

	def_water_wildmons 3  ; encounter rate
	db 20, TENTACOOL      ; 15%
	db 25, TENTACOOL      ; 15%
	db 30, TENTACOOL      ; 15% 
	db 35, TENTACOOL      ; 15%
	db  5, TENTACOOL      ; 10%
	db 10, TENTACOOL      ; 10%
	db 15, TENTACOOL      ; 10%
	db 40, TENTACOOL      ;  5%
	db 25, POLIWAG        ;  2%
	db 30, POLIWAG        ;  1%
	db 35, POLIWAG        ;  1%
    db 40, TENTACRUEL     ;  1%
	end_water_wildmons
    
	; Tentacool   95%
	; Poliwag      4%
	; Tentacruel   1%
