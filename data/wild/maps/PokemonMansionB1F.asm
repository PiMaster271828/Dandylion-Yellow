PokemonMansionB1FWildMons:
	def_grass_wildmons 10 ; encounter rate
	db 35, GRIMER         ; 15%
    db 38, GROWLITHE      ; 15%
    db 40, RATTATA        ; 15%
    db 43, RATICATE       ; 15%
	db 38, GRIMER         ; 10%
	db 46, RATICATE       ; 10%
	db 41, MUK            ; 10%
    db 39, KOFFING        ;  5%
    db 43, WEEZING        ;  2%
	db 35, MAGMAR         ;  1%
	db 24, DITTO          ;  1%
	db 38, MAGMAR         ;  1%	
	end_grass_wildmons

    ; Grimer     25%
	; Raticate   25%
	; Growlithe  15%
	; Rattata    15%
	; Muk        10%
	; Koffing     5%
	; Weezing     2%
	; Magmar      2%
	; Ditto       1%

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
