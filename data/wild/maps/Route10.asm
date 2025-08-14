Route10WildMons:
	def_grass_wildmons 15 ; encounter rate
	db 22, MAGNEMITE      ; 20%
	db 22, VOLTORB        ; 20%
	db 20, RATTATA        ; 15%
	db 20, SANDSHREW      ; 10%
	db 18, NIDORAN_M      ; 10%
	db 18, NIDORAN_F      ; 10%
	db 20, EKANS          ;  5%
	db 22, RATICATE       ;  5%
	db 16, MACHOP         ;  4%
	db 18, MACHOP         ;  1%
	end_grass_wildmons
	
	; Magnemite  20%
	; Voltorb    20%
	; Rattata    15%
	; Sandshrew  10%
	; Nidoran♂   10%
	; Nidoran♀   10%
	; Ekans       5%
	; Raticate    5%
	; Machop      5%
	
	def_water_wildmons 3  ; encounter rate
	db 25, GOLDEEN        ; 20%
	db 25, GOLDEEN        ; 20%
	db 30, GOLDEEN        ; 15%
	db 30, GOLDEEN        ; 10%
	db 20, GOLDEEN        ; 10%
	db 35, GOLDEEN        ; 10% 
	db 40, GOLDEEN        ;  5%
	db 30, SEAKING        ;  5%
	db 35, SEAKING        ;  4%
	db 40, SEAKING        ;  1%
	end_water_wildmons
	
	; Goldeen   90%
	; Seaking   10%
