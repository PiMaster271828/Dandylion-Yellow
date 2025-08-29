CeladonMart5F_Script:
	call EnableAutoTextBoxDrawing
	ret

CeladonMart5F_TextPointers:
	def_text_pointers
	dw_const CeladonMart5FGentlemanText,        TEXT_CELADONMART5F_GENTLEMAN
	dw_const CeladonMart5FSailorText,           TEXT_CELADONMART5F_SAILOR
	dw_const CeladonMart5FClerk1Text,           TEXT_CELADONMART5F_CLERK1
	dw_const CeladonMart5FClerk2Text,           TEXT_CELADONMART5F_CLERK2
	dw_const CeladonMart5FCurrentFloorSignText, TEXT_CELADONMART5F_CURRENT_FLOOR_SIGN

CeladonMart5FGentlemanText:
	text_far _CeladonMart5FGentlemanText
	text_end

CeladonMart5FSailorText:
	text_far _CeladonMart5FSailorText
	text_end

CeladonMart5FCurrentFloorSignText:
	text_far _CeladonMart5FCurrentFloorSignText
	text_end

CeladonMart5FClerk1Text:		                                     ; New text added by G-Dubs (Followed tutorial to free up space in the home bank)
	ld hl, wObtainedBadges                                           ; New functions added by G-Dubs to test badge specific mart inventories
	; Check for Earth Badge (8th)
	bit BIT_EARTHBADGE, [hl]
	jr nz, .EarthStock

    ; Check for Marsh Badge (6th)
	bit BIT_MARSHBADGE, [hl]
	jr nz, .MarshStock

	; Check for Rainbow Badge (4th)
	bit BIT_RAINBOWBADGE, [hl]
	jr nz, .RainbowStock

	; Check for Cascade Badge (2nd)
	bit BIT_CASCADEBADGE, [hl]
	jr nz, .CascadeStock

; Default 
	; Inventory for 0-1 Badges
	script_mart X_ACCURACY, GUARD_SPEC, DIRE_HIT, X_ATTACK, X_DEFEND, X_SPEED, X_SPECIAL

.CascadeStock
	; Inventory for 2-3 Badges
	script_mart X_ACCURACY, GUARD_SPEC, DIRE_HIT, X_ATTACK, X_DEFEND, X_SPEED, X_SPECIAL, ETHER

.RainbowStock
	; Inventory for 4-5 Badges
	script_mart X_ACCURACY, GUARD_SPEC, DIRE_HIT, X_ATTACK, X_DEFEND, X_SPEED, X_SPECIAL, ETHER, ELIXIR

.MarshStock
	; Inventory for 6-7 Badges
	script_mart X_ACCURACY, GUARD_SPEC, DIRE_HIT, X_ATTACK, X_DEFEND, X_SPEED, X_SPECIAL, ETHER, ELIXIR, MAX_ETHER

.EarthStock
    ; Inventory for 8 (All) Badges
    script_mart X_ACCURACY, GUARD_SPEC, DIRE_HIT, X_ATTACK, X_DEFEND, X_SPEED, X_SPECIAL, ETHER, ELIXIR, MAX_ETHER, MAX_ELIXIR
	
CeladonMart5FClerk2Text:		                                     ; New text added by G-Dubs (Followed tutorial to free up space in the home bank)
	ld hl, wObtainedBadges                                           ; New functions added by G-Dubs to test badge specific mart inventories
	; Check for Earth Badge (8th)
	bit BIT_EARTHBADGE, [hl]
	jr nz, .EarthStock

; Default 
	; Inventory for 0-7 Badges
	script_mart HP_UP, PROTEIN, IRON, CARBOS, CALCIUM

.EarthStock
    ; Inventory for 8 (All) Badges
    script_mart HP_UP, PROTEIN, IRON, CARBOS, CALCIUM, PP_UP