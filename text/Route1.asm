_Route1Youngster1MartSampleText::
	text "Hi! I work at a"
	line "#MON MART."

	para "It's a convenient"
	line "shop, so please"
	cont "visit us in"
	cont "VIRIDIAN CITY."

	para "I know, I'll give"
	line "you a sample!"
	cont "Here you go!"
	prompt

_Route1Youngster1GotPotionText::
	text "<PLAYER> got"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_Route1Youngster1AlsoGotPokeballsText::
	text "We also carry"
	line "# BALLs for"
	cont "catching #MON!"
	done

_Route1Youngster1NoRoomText::
	text "You have too much"
	line "stuff with you!"
	done

_Route1Youngster2Text::
	text "See those ledges"
	line "along the road?"

	para "It's a bit scary,"
	line "but you can jump"
	cont "from them."

	para "You can get back"
	line "to PALLET TOWN"
	cont "quicker that way."
	done

_Route1Youngster3Text::           ; New NPC added by G-Dubs
	text "I'm not a trainer."
	line "But if you look"
	cont "one in the eyes,"
	cont "you need to be"
	cont "ready to battle."
	done

_Route1Youngster4BattleText::     ; New trainer added by G-Dubs
	text "I just lost a"
	line "battle, so I'm"
	cont "trying to find"
	cont "more #MON."

	para "Wait! You look"
    line "like I could beat"
	cont "you. Come on,"
	cont "let's battle!"
	done

_Route1Youngster4EndBattleText::
	text "Ugh."
	line "You beat me!"

	para "Why do I only"
	line "have these two"
	cont "#MON?"
	prompt

_Route1Youngster4AfterBattleText::
	text "I have to catch"
	line "more #MON for"
	cont "battles..."
	done

_Route1SignText::
	text "ROUTE 1"
	line "PALLET TOWN -"
	cont "VIRIDIAN CITY"
	done

/*


Trainer 02:
    text "Are you a #MON"
	line "trainer? 
	
	para "Let's battle!"
	done

    text "Ah"
	line "Man. I won my"
	cont "last battle."
    prompt

    text "I hear being a"
	line "good trainer is"
	cont "really hard. I'm"
	cont "going to battle"
	cont "other trainers to"
	cont "get stronger."
    done   

Trainer 03:
    text "There aren't any"
	line "bug #MON here,"
	cont "but I do see a"
	cont "#MON trainer!"
    done 
	
	text "Argh!"
	line "You're strong!"
    prompt

	text "I ran out of"
	line "#BALLS. I need to"
	cont "go buy some more."
	done

NPC 01:
    text "I'm not a trainer."
	line "But if you look"
	cont "one in the eyes,"
	cont "you need to be"
	cont "ready to battle."
	done
*/