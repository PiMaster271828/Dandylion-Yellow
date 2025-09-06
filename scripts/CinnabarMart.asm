CinnabarMart_Script:
	jp EnableAutoTextBoxDrawing

CinnabarMart_TextPointers:
	def_text_pointers
	dw_const CinnabarMartClerkText,        TEXT_CINNABARMART_CLERK
	dw_const CinnabarMartSilphWorkerFText, TEXT_CINNABARMART_SILPH_WORKER_F
	dw_const CinnabarMartScientistText,    TEXT_CINNABARMART_SCIENTIST

CinnabarMartSilphWorkerFText:
	text_far _CinnabarMartSilphWorkerFText
	text_end

CinnabarMartScientistText:
	text_far _CinnabarMartScientistText
	text_end

CinnabarMartClerkText:				                                 ; New text added by G-Dubs (Followed tutorial to free up space in the home bank)
	script_mart POKE_BALL, GREAT_BALL, ULTRA_BALL, POTION, SUPER_POTION, HYPER_POTION, MAX_POTION, REVIVE, ANTIDOTE, BURN_HEAL, AWAKENING, PARALYZE_HEAL, ICE_HEAL, FULL_HEAL, ESCAPE_ROPE, REPEL, SUPER_REPEL, MAX_REPEL
	
/*	
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
	script_mart POKE_BALL, POTION, ANTIDOTE, PARALYZE_HEAL, BURN_HEAL, AWAKENING, ESCAPE_ROPE
	ret

.CascadeStock
    ; Inventory for 2-3 Badges 
	script_mart POKE_BALL, POTION, ANTIDOTE, BURN_HEAL, AWAKENING, PARALYZE_HEAL, ESCAPE_ROPE, REPEL
	ret

.RainbowStock
	; Inventory for 4-5 Badges
	script_mart POKE_BALL, GREAT_BALL, POTION, SUPER_POTION, REVIVE, ANTIDOTE, BURN_HEAL, AWAKENING, PARALYZE_HEAL, ICE_HEAL, ESCAPE_ROPE, REPEL, SUPER_REPEL
	ret

.MarshStock
	; Inventory for 6-7 Badges
	script_mart POKE_BALL, GREAT_BALL, ULTRA_BALL, POTION, SUPER_POTION, HYPER_POTION, MAX_POTION, REVIVE, ANTIDOTE, BURN_HEAL, AWAKENING, PARALYZE_HEAL, ICE_HEAL, FULL_HEAL, ESCAPE_ROPE, REPEL, SUPER_REPEL, MAX_REPEL
	ret

.EarthStock
    ; Inventory for 8 (All) Badges
	script_mart POKE_BALL, GREAT_BALL, ULTRA_BALL, POTION, SUPER_POTION, HYPER_POTION, MAX_POTION, REVIVE, ANTIDOTE, BURN_HEAL, AWAKENING, PARALYZE_HEAL, ICE_HEAL, FULL_HEAL, ESCAPE_ROPE, REPEL, SUPER_REPEL, MAX_REPEL
	ret
*/