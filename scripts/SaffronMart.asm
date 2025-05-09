SaffronMart_Script:
	jp EnableAutoTextBoxDrawing

SaffronMart_TextPointers:
	def_text_pointers
	dw_const SaffronMartClerkText,        TEXT_SAFFRONMART_CLERK
	dw_const SaffronMartSuperNerdText,    TEXT_SAFFRONMART_SUPER_NERD
	dw_const SaffronMartCooltrainerFText, TEXT_SAFFRONMART_COOLTRAINER_F

SaffronMartSuperNerdText:
	text_far _SaffronMartSuperNerdText
	text_end

SaffronMartCooltrainerFText:
	text_far _SaffronMartCooltrainerFText
	text_end

SaffronMartClerkText:					                             ; New text added by G-Dubs (Followed tutorial to free up space in the home bank)
	script_mart POKE_BALL, GREAT_BALL, POTION, SUPER_POTION, HYPER_POTION, REPEL, SUPER_REPEL, MAX_REPEL, ESCAPE_ROPE, FULL_HEAL, REVIVE
