VermillionCityWildMons:
	def_grass_wildmons 15 ; encounter rate
	db 18, SPEAROW        ; 20%
	db 18, MACHOP         ; 20% 
	db 20, PIDGEY         ; 15%
	db 17, RATTATA        ; 10%
	db 18, PSYDUCK        ; 10%
	db 19, RATTATA        ; 10%
	db 16, VOLTORB        ;  5%
	db 16, MAGNEMITE      ;  5%
	db 20, PIDGEOTTO      ;  4%
	db 20, PIKACHU        ;  1%
	end_grass_wildmons

	; Rattata     20%
	; Spearow     20%
	; Machop      20%
    ; Pidgey      15%
    ; Psyduck     10%
    ; Voltorb      5%
    ; Magnemite    5%
	; Pidgeotto    4%
	; Pikachu      1%

	def_water_wildmons 3  ; encounter rate
	db 20, TENTACOOL      ; 20%
	db 25, TENTACOOL      ; 20%
	db 30, TENTACOOL      ; 15% 
	db 10, TENTACOOL      ; 10%
	db 15, TENTACOOL      ; 10%
	db 35, TENTACOOL      ; 10%
	db  5, TENTACOOL      ;  5%
	db 40, TENTACOOL      ;  5%
	db 30, HORSEA         ;  4%
    db 40, TENTACRUEL     ;  1%
	end_water_wildmons
    
	; Tentacool   95%
	; Horsea       4%
	; Tentacruel   1%
