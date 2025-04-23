TradeMons:
; entries correspond to TRADE_FOR_* constants
	table_width 3 + NAME_LENGTH
	; give mon, get mon, dialog id, nickname
	; The two instances of TRADE_DIALOGSET_EVOLUTION are a leftover
	; from the Japanese Blue trades, which used species that evolve.
	; Japanese Red and Green used TRADE_DIALOGSET_CASUAL, and had
	; the same species as English Red and Blue.
  ; db NIDORINO,   NIDORINA,  TRADE_DIALOGSET_CASUAL,    "TERRY@@@@@@" ; Red & Blue Trade
	db LICKITUNG,  DUGTRIO,   TRADE_DIALOGSET_CASUAL,    "GURIO@@@@@@"
  ; db NIDORINA,   NIDORINO,  TRADE_DIALOGSET_CASUAL,    "DINO@@@@@@@"
  ;	db ABRA,       MR_MIME,   TRADE_DIALOGSET_CASUAL,    "MARCEL@@@@@" ; Red & Blue Trade
	db CLEFAIRY,   MR_MIME,   TRADE_DIALOGSET_CASUAL,    "MILES@@@@@@"
  ; db ABRA,       MR_MIME,   TRADE_DIALOGSET_CASUAL,    "MARCEL@@@@@" ; Red & Blue Trade	
	db BUTTERFREE, BEEDRILL,  TRADE_DIALOGSET_HAPPY,     "STINGER@@@@" ; unused
  ; db POLIWHIRL,  JYNX,      TRADE_DIALOGSET_CASUAL,    "LOLA@@@@@@@" ; Red & Blue Trade
	db KANGASKHAN, MUK,       TRADE_DIALOGSET_CASUAL,    "STICKY@@@@@"
  ; db VENONAT,    TANGELA,   TRADE_DIALOGSET_CASUAL,    "CRINKLES@@@" ; Red & Blue Trade
	db MEW,        MEW,       TRADE_DIALOGSET_HAPPY,     "BART@@@@@@@" ; unused
  ; db PINSIR,     SCYTHER,   TRADE_DIALOGSET_HAPPY,     "MANTIS@@@@@" ; Trade added by G-Dubs
	db TANGELA,    PARASECT,  TRADE_DIALOGSET_CASUAL,    "SPIKE@@@@@@"
  ; db SLOWBRO,    LICKITUNG, TRADE_DIALOGSET_CASUAL,    "MARC@@@@@@@" ; Red & Blue Trade	
	db PIDGEOT,    PIDGEOT,   TRADE_DIALOGSET_EVOLUTION, "MARTY@@@@@@" ; unused
  ; db SPEAROW,    FARFETCHD, TRADE_DIALOGSET_EVOLUTION, "DUX@@@@@@@@" ; Red & Blue Trade
	db GOLDUCK,    RHYDON,    TRADE_DIALOGSET_EVOLUTION, "BUFFY@@@@@@"
  ; db PONYTA,     SEEL,      TRADE_DIALOGSET_EVOLUTION, "SAILOR@@@@@" ; Red & Blue Trade	
	db GROWLITHE,  DEWGONG,   TRADE_DIALOGSET_HAPPY,     "CEZANNE@@@@"
  ; db ELECTRODE,  RAICHU,    TRADE_DIALOGSET_HAPPY,     "DORIS@@@@@@" ; Red & Blue Trade
  ; db NIDORAN_M,  NIDORAN_F, TRADE_DIALOGSET_HAPPY,     "RITA@@@@@@@" ; Red & Blue Trade
	db CUBONE,     MACHOKE,   TRADE_DIALOGSET_HAPPY,     "RICKY@@@@@@" 
  ; db NIDORAN_F,  NIDORAN_M, TRADE_DIALOGSET_HAPPY,     "SPOT@@@@@@@" ; Red & Blue Trade
  ; db SCYTHER,    PINSIR,    TRADE_DIALOGSET_HAPPY,     "BEETLE@@@@@" ; Trade added by G-Dubs	

	assert_table_length NUM_NPC_TRADES
