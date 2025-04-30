; pokemon ids
; indexes for:
; - MonsterNames (see data/pokemon/names.asm)
; - EvosMovesPointerTable (see data/pokemon/evos_moves.asm)
; - CryData (see data/pokemon/cries.asm)
; - PokedexOrder (see data/pokemon/dex_order.asm)
; - PokedexEntryPointers (see data/pokemon/dex_entries.asm)
	const_def
	const NO_MON             ; $00  ; $  0
	const RHYDON             ; $01	; $  1
	const KANGASKHAN         ; $02	; $  2
	const NIDORAN_M          ; $03	; $  3
	const CLEFAIRY           ; $04	; $  4
	const SPEAROW            ; $05	; $  5
	const VOLTORB            ; $06	; $  6
	const NIDOKING           ; $07	; $  7
	const SLOWBRO            ; $08	; $  8
	const IVYSAUR            ; $09	; $  9
	const EXEGGUTOR          ; $0A	; $ 10
	const LICKITUNG          ; $0B	; $ 11
	const EXEGGCUTE          ; $0C	; $ 12
	const GRIMER             ; $0D	; $ 13
	const GENGAR             ; $0E  ; $ 14
	const NIDORAN_F          ; $0F	; $ 15
	const NIDOQUEEN          ; $10	; $ 16
	const CUBONE             ; $11	; $ 17
	const RHYHORN            ; $12	; $ 18
	const LAPRAS             ; $13	; $ 19
	const ARCANINE           ; $14	; $ 20
	const MEW                ; $15	; $ 21
	const GYARADOS           ; $16	; $ 22
	const SHELLDER           ; $17	; $ 23
	const TENTACOOL          ; $18	; $ 24
	const GASTLY             ; $19	; $ 25
	const SCYTHER            ; $1A	; $ 26
	const STARYU             ; $1B	; $ 27
	const BLASTOISE          ; $1C	; $ 28
	const PINSIR             ; $1D	; $ 29
	const TANGELA            ; $1E	; $ 30
	const_skip               ; $1F	; $ 31
	const_skip               ; $20	; $ 32
	const GROWLITHE          ; $21	; $ 33
	const ONIX               ; $22	; $ 34
	const FEAROW             ; $23	; $ 35
	const PIDGEY             ; $24	; $ 36
	const SLOWPOKE           ; $25	; $ 37
	const KADABRA            ; $26	; $ 38
	const GRAVELER           ; $27	; $ 39
	const CHANSEY            ; $28	; $ 40
	const MACHOKE            ; $29	; $ 41
	const MR_MIME            ; $2A	; $ 42
	const HITMONLEE          ; $2B	; $ 43
	const HITMONCHAN         ; $2C	; $ 44
	const ARBOK              ; $2D	; $ 45
	const PARASECT           ; $2E	; $ 46
	const PSYDUCK            ; $2F	; $ 47
	const DROWZEE            ; $30	; $ 48
	const GOLEM              ; $31	; $ 49
	const_skip               ; $32	; $ 50
	const MAGMAR             ; $33	; $ 51
	const_skip               ; $34	; $ 52
	const ELECTABUZZ         ; $35	; $ 53
	const MAGNETON           ; $36	; $ 54
	const KOFFING            ; $37	; $ 55
	const_skip               ; $38	; $ 56
	const MANKEY             ; $39	; $ 57
	const SEEL               ; $3A	; $ 58
	const DIGLETT            ; $3B	; $ 59
	const TAUROS             ; $3C	; $ 60
	const_skip               ; $3D	; $ 61
	const_skip               ; $3E	; $ 62
	const_skip               ; $3F	; $ 63
	const FARFETCHD          ; $40	; $ 64
	const VENONAT            ; $41	; $ 65
	const DRAGONITE          ; $42	; $ 66
	const_skip               ; $43	; $ 67
	const_skip               ; $44	; $ 68
	const_skip               ; $45	; $ 69
	const DODUO              ; $46	; $ 70
	const POLIWAG            ; $47	; $ 71
	const JYNX               ; $48	; $ 72
	const MOLTRES            ; $49	; $ 73
	const ARTICUNO           ; $4A	; $ 74
	const ZAPDOS             ; $4B	; $ 75
	const DITTO              ; $4C	; $ 76
	const MEOWTH             ; $4D	; $ 77
	const KRABBY             ; $4E	; $ 78
	const_skip               ; $4F	; $ 79
	const_skip               ; $50	; $ 80
	const_skip               ; $51	; $ 81
	const VULPIX             ; $52	; $ 82
	const NINETALES          ; $53	; $ 83
	const PIKACHU            ; $54	; $ 84
	const RAICHU             ; $55	; $ 85
	const_skip               ; $56	; $ 86
	const_skip               ; $57	; $ 87
	const DRATINI            ; $58	; $ 88
	const DRAGONAIR          ; $59	; $ 89
	const KABUTO             ; $5A	; $ 90
	const KABUTOPS           ; $5B	; $ 91
	const HORSEA             ; $5C	; $ 92
	const SEADRA             ; $5D	; $ 93
	const_skip               ; $5E	; $ 94
	const_skip               ; $5F	; $ 95
	const SANDSHREW          ; $60	; $ 96
	const SANDSLASH          ; $61	; $ 97
	const OMANYTE            ; $62	; $ 98
	const OMASTAR            ; $63	; $ 99	
	const JIGGLYPUFF         ; $64	; $100
	const WIGGLYTUFF         ; $65	; $101
	const EEVEE              ; $66	; $102
	const FLAREON            ; $67	; $103
	const JOLTEON            ; $68	; $104
	const VAPOREON           ; $69	; $105
	const MACHOP             ; $6A	; $106
	const ZUBAT              ; $6B	; $107
	const EKANS              ; $6C	; $108
	const PARAS              ; $6D	; $109
	const POLIWHIRL          ; $6E	; $110
	const POLIWRATH          ; $6F	; $111
	const WEEDLE             ; $70	; $112
	const KAKUNA             ; $71	; $113
	const BEEDRILL           ; $72	; $114
	const_skip               ; $73	; $115
	const DODRIO             ; $74	; $116
	const PRIMEAPE           ; $75	; $117
	const DUGTRIO            ; $76	; $118
	const VENOMOTH           ; $77	; $119
	const DEWGONG            ; $78	; $120
	const_skip               ; $79	; $121
	const_skip               ; $7A	; $122
	const CATERPIE           ; $7B	; $123
	const METAPOD            ; $7C	; $124
	const BUTTERFREE         ; $7D	; $125
	const MACHAMP            ; $7E	; $126
	const_skip               ; $7F	; $127
	const GOLDUCK            ; $80	; $128
	const HYPNO              ; $81	; $129
	const GOLBAT             ; $82	; $130
	const MEWTWO             ; $83	; $131
	const SNORLAX            ; $84	; $132
	const MAGIKARP           ; $85	; $133
	const_skip               ; $86	; $134
	const_skip               ; $87	; $135
	const MUK                ; $88	; $136
	const_skip               ; $89	; $137
	const KINGLER            ; $8A	; $138
	const CLOYSTER           ; $8B	; $139
	const_skip               ; $8C	; $140
	const ELECTRODE          ; $8D	; $141
	const CLEFABLE           ; $8E	; $142
	const WEEZING            ; $8F	; $143
	const PERSIAN            ; $90	; $144
	const MAROWAK            ; $91	; $145
	const_skip               ; $92	; $146
	const HAUNTER            ; $93	; $147
	const ABRA               ; $94	; $148
	const ALAKAZAM           ; $95	; $149
	const PIDGEOTTO          ; $96	; $150
	const PIDGEOT            ; $97	; $151
	const STARMIE            ; $98	; $152
	const BULBASAUR          ; $99	; $153
	const VENUSAUR           ; $9A	; $154
	const TENTACRUEL         ; $9B	; $155
	const_skip               ; $9C	; $156
	const GOLDEEN            ; $9D	; $157
	const SEAKING            ; $9E	; $158
	const_skip               ; $9F	; $159
	const_skip               ; $A0	; $160
	const_skip               ; $A1	; $161
	const_skip               ; $A2	; $162
	const PONYTA             ; $A3	; $163
	const RAPIDASH           ; $A4	; $164
	const RATTATA            ; $A5	; $165
	const RATICATE           ; $A6	; $166
	const NIDORINO           ; $A7	; $167
	const NIDORINA           ; $A8	; $168
	const GEODUDE            ; $A9	; $169
	const PORYGON            ; $AA	; $170	
	const AERODACTYL         ; $AB	; $171
	const_skip               ; $AC	; $172
	const MAGNEMITE          ; $AD	; $173
	const_skip               ; $AE	; $174
	const_skip               ; $AF	; $175
	const CHARMANDER         ; $B0	; $176
	const SQUIRTLE           ; $B1	; $177
	const CHARMELEON         ; $B2	; $178
	const WARTORTLE          ; $B3	; $179
	const CHARIZARD          ; $B4	; $180
	const_skip               ; $B5	; $181
	const FOSSIL_KABUTOPS    ; $B6	; $182
	const FOSSIL_AERODACTYL  ; $B7	; $183
	const MON_GHOST          ; $B8	; $184
	const ODDISH             ; $B9	; $185
	const GLOOM              ; $BA	; $186
	const VILEPLUME          ; $BB	; $187
	const BELLSPROUT         ; $BC	; $188
	const WEEPINBELL         ; $BD	; $189
	const VICTREEBEL         ; $BE	; $190

DEF NUM_POKEMON_INDEXES EQU const_value - 1

; player starter
DEF STARTER_PIKACHU EQU PIKACHU

; rival starters
DEF RIVAL_STARTER_JOLTEON  EQU 1
DEF RIVAL_STARTER_FLAREON  EQU 2
DEF RIVAL_STARTER_VAPOREON EQU 3

; ghost Marowak in Pokémon Tower
DEF RESTLESS_SOUL EQU MAROWAK
