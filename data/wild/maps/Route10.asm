Route10WildMons:
	def_grass_wildmons 15 ; encounter rate
	db 22, MAGNEMITE      ; 15%
	db 22, VOLTORB        ; 15%
	db 20, RATTATA        ; 15%
	db 20, SPEAROW        ; 15%
    db 19, NIDORAN_M      ; 10%
	db 19, NIDORAN_F      ; 10%
    db 20, SANDSHREW      ; 10%
    db 18, MACHOP         ;  5%
	db 20, EKANS          ;  2%
	db 22, KRABBY         ;  1%
	db 22, CUBONE         ;  1%
    db 25, RATICATE       ;  1%
	end_grass_wildmons
	
	; Magnemite  15%
	; Voltorb    15%
	; Rattata    15%
	; Spearow    15%
	; Nidoran♂   10%
	; Nidoran♀   10%
	; Sandshrew  10%
	; Machop      5%
	; Ekans       2%
	; Krabby      1%
	; Cubone      1%	
	; Raticate    1%

	def_water_wildmons 3  ; encounter rate
	db 25, GOLDEEN        ; 15%
	db 30, GOLDEEN        ; 15%
	db 35, GOLDEEN        ; 15%
	db 40, GOLDEEN        ; 15%
	db 30, TENTACOOL      ; 10%
	db 30, KRABBY         ; 10%
	db 30, SEAKING        ; 10%
	db 35, SEAKING        ;  5%
    db 40, SEAKING        ;  2%
	db 45, SEAKING        ;  1%
	db 35, KRABBY         ;  1%
	db 40, KINGLER        ;  1% 
	end_water_wildmons
	
	; Goldeen    60%
	; Seaking    18%
	; Krabby     11%
    ; Tentacool  10%
	; Kingler     1%
