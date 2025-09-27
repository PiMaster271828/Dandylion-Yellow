Route22WildMons:
	def_grass_wildmons 25 ; encounter rate
	db  2, NIDORAN_M      ; 15%
	db  2, NIDORAN_F      ; 15%
	db  3, MANKEY         ; 15%
	db  3, RATTATA        ; 15%
	db  4, NIDORAN_M      ; 10%
	db  4, NIDORAN_F      ; 10%
	db  5, MANKEY         ; 10%
	db  2, SPEAROW        ;  5%
	db  3, SPEAROW        ;  2%
	db  4, SPEAROW        ;  1%
	db  5, SPEAROW        ;  1%
	db  6, SPEAROW        ;  1%
	end_grass_wildmons

    ; Nidoran♂  25%
	; Nidoran♀  25%
    ; Mankey    25%
	; Rattata   15%
	; Spearow   10%

	def_water_wildmons 5 ; encounter rate
	db 20, POLIWAG       ; 15%
	db 25, POLIWAG       ; 15%
	db 30, POLIWAG       ; 15%
	db 35, POLIWAG       ; 15%
	db  5, POLIWAG       ; 10%
	db 10, POLIWAG       ; 10%
	db 15, POLIWAG       ; 10%
	db 25, POLIWHIRL     ;  5%
	db 30, POLIWHIRL     ;  2%
	db 35, POLIWHIRL     ;  1%
	db 40, POLIWHIRL     ;  1%
	db 45, POLIWRATH     ;  1%
	end_water_wildmons
    
	; Poliwag     90%
	; Poliwhirl    9%
	; Poliwrath    1%
