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
	script_mart POKE_BALL, GREAT_BALL, ULTRA_BALL, POTION, SUPER_POTION, HYPER_POTION, REPEL, SUPER_REPEL, MAX_REPEL, ESCAPE_ROPE, FULL_HEAL, REVIVE
