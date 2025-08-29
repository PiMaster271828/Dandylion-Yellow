CeruleanMart_Script:
	jp EnableAutoTextBoxDrawing

CeruleanMart_TextPointers:
	def_text_pointers
	dw_const CeruleanMartClerkText,        TEXT_CERULEANMART_CLERK
	dw_const CeruleanMartCooltrainerMText, TEXT_CERULEANMART_COOLTRAINER_M
	dw_const CeruleanMartCooltrainerFText, TEXT_CERULEANMART_COOLTRAINER_F

CeruleanMartCooltrainerMText:
	text_far _CeruleanMartCooltrainerMText
	text_end

CeruleanMartCooltrainerFText:
	text_far _CeruleanMartCooltrainerFText
	text_end

CeruleanMartClerkText:                                               ; New text added by G-Dubs (Followed tutorial to free up space in the home bank)
    ld hl, wObtainedBadges                                           ; New functions added by G-Dubs to test badge specific mart listings

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
	; Inventory for 0 - 1 Badges
	script_mart POKE_BALL, POTION, ANTIDOTE, PARALYZE_HEAL, BURN_HEAL, AWAKENING, PARALYZE_HEAL
	ret

.CascadeStock
	; Inventory for 2-3 Badges 
	script_mart POKE_BALL, POTION, ESCAPE_ROPE, REPEL, ANTIDOTE, BURN_HEAL, AWAKENING, PARALYZE_HEAL
	ret

.RainbowStock
	; Inventory for 4-5 Badges
	script_mart POKE_BALL, GREAT_BALL, POTION, SUPER_POTION, REVIVE, ESCAPE_ROPE, REPEL, SUPER_REPEL, ANTIDOTE, BURN_HEAL, AWAKENING, PARALYZE_HEAL, ICE_HEAL
	ret

.MarshStock
	; Inventory for 6-7 Badges
	script_mart POKE_BALL, GREAT_BALL, ULTRA_BALL, POTION, SUPER_POTION, HYPER_POTION, REVIVE, ESCAPE_ROPE, REPEL, SUPER_REPEL, MAX_REPEL, ANTIDOTE, BURN_HEAL, AWAKENING, PARALYZE_HEAL, ICE_HEAL, FULL_HEAL
	ret

.EarthStock
    ; Inventory for 8 (All) Badges
	script_mart POKE_BALL, GREAT_BALL, ULTRA_BALL, POTION, SUPER_POTION, HYPER_POTION, MAX_POTION, REVIVE, ESCAPE_ROPE, REPEL, SUPER_REPEL, MAX_REPEL, ANTIDOTE, BURN_HEAL, AWAKENING, PARALYZE_HEAL, ICE_HEAL,  FULL_HEAL
	ret
