FuchsiaMart_Script:
	call EnableAutoTextBoxDrawing
	ret

FuchsiaMart_TextPointers:
	def_text_pointers
	dw_const FuchsiaMartClerkText,         TEXT_FUCHSIAMART_CLERK
	dw_const FuchsiaMartMiddleAgedManText, TEXT_FUCHSIAMART_MIDDLE_AGED_MAN
	dw_const FuchsiaMartCooltrainerFText,  TEXT_FUCHSIAMART_COOLTRAINER_F

FuchsiaMartMiddleAgedManText:
	text_far _FuchsiaMartMiddleAgedManText
	text_end

FuchsiaMartCooltrainerFText:
	text_far _FuchsiaMartCooltrainerFText
	text_end

FuchsiaMartClerkText:			                                     ; New text added by G-Dubs (Followed tutorial to free up space in the home bank)
	script_mart POKE_BALL, GREAT_BALL, ULTRA_BALL, POTION, SUPER_POTION, HYPER_POTION, REVIVE, FULL_HEAL, REPEL, SUPER_REPEL, ESCAPE_ROPE
