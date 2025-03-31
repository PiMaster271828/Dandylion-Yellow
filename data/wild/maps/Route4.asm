Route4WildMons:
	def_grass_wildmons 20 ; encounter rate
	db 11, SPEAROW        ; 20%
	db 13, SPEAROW        ; 20%
	db 10, MANKEY         ; 15%
	db 12, RATTATA        ; 10%
	db 10, SANDSHREW      ; 10%
	db 13, PIDGEY         ; 10%
	db 12, SANDSHREW      ;  5%
	db 14, RATTATA        ;  5%
	db 10, EKANS          ;  4%
	db 12, EKANS          ;  1%
	end_grass_wildmons

    ; Spearow    ; 40%
	; Rattata    ; 15%
	; Sandshrew  ; 15%
	; Mankey     ; 15%
	; Pidgey     ; 10%
	; Ekans      ;  5%

	def_water_wildmons 3  ; encounter rate
    db 25, GOLDEEN        ; 20%
	db 30, GOLDEEN        ; 20%
	db 35, GOLDEEN        ; 15%
	db 30, PSYDUCK        ; 10%
	db 30, KRABBY         ; 10%
	db 30, POLIWAG        ; 10% 
	db 40, GOLDEEN        ;  5%
	db 30, SEAKING        ;  5%
	db 35, SEAKING        ;  4%
	db 40, SEAKING        ;  1%
	end_water_wildmons
	
	; Goldeen   60%
	; Psyduck   10%
	; Krabby    10%
	; Poliwag   10%
	; Seaking   10%
