DEF OPP_ID_OFFSET EQU 195    ; Changed from 200 to 195 to make room for new trainer classes by G-Dubs
                             ; The PokéMon constants end at 190, so there's not much room for new trainer classes  

MACRO trainer_const
	const \1
	DEF OPP_\1 EQU OPP_ID_OFFSET + \1
ENDM

; trainer class ids
; indexes for:
; - TrainerNames (see data/trainers/names.asm)
; - TrainerNamePointers (see data/trainers/name_pointers.asm)
; - TrainerDataPointers (see data/trainers/parties.asm)
; - TrainerPicAndMoneyPointers (see data/trainers/pic_pointers_money.asm)
; - TrainerAIPointers (see data/trainers/ai_pointers.asm)
; - TrainerClassMoveChoiceModifications (see data/trainers/move_choices.asm)
	const_def
	trainer_const NOBODY         ; $00 ; $195
	trainer_const YOUNGSTER      ; $01 ; $196
	trainer_const BUG_CATCHER    ; $02 ; $197
	trainer_const LASS           ; $03 ; $198
	trainer_const SAILOR         ; $04 ; $199
	trainer_const JR_TRAINER_M   ; $05 ; $200
	trainer_const JR_TRAINER_F   ; $06 ; $201
	trainer_const POKEMANIAC     ; $07 ; $202
	trainer_const SUPER_NERD     ; $08 ; $203
	trainer_const HIKER          ; $09 ; $204
	trainer_const BIKER          ; $0A ; $205
	trainer_const BURGLAR        ; $0B ; $206
	trainer_const ENGINEER       ; $0C ; $207
	trainer_const UNUSED_JUGGLER ; $0D ; $208
	trainer_const FISHER         ; $0E ; $209
	trainer_const SWIMMER        ; $0F ; $210
	trainer_const CUE_BALL       ; $10 ; $211
	trainer_const GAMBLER        ; $11 ; $212
	trainer_const BEAUTY         ; $12 ; $213
	trainer_const PSYCHIC_TR     ; $13 ; $214
	trainer_const ROCKER         ; $14 ; $215
	trainer_const JUGGLER        ; $15 ; $216
	trainer_const TAMER          ; $16 ; $217
	trainer_const BIRD_KEEPER    ; $17 ; $218
	trainer_const BLACKBELT      ; $18 ; $219
	trainer_const RIVAL1         ; $19 ; $220
	trainer_const PROF_OAK       ; $1A ; $221
	trainer_const CHIEF          ; $1B ; $222
	trainer_const SCIENTIST      ; $1C ; $223
	trainer_const GIOVANNI       ; $1D ; $224
	trainer_const ROCKET         ; $1E ; $225
	trainer_const COOLTRAINER_M  ; $1F ; $226
	trainer_const COOLTRAINER_F  ; $20 ; $227
	trainer_const BRUNO          ; $21 ; $228
	trainer_const BROCK          ; $22 ; $229
	trainer_const MISTY          ; $23 ; $230
	trainer_const LT_SURGE       ; $24 ; $231
	trainer_const ERIKA          ; $25 ; $232 
	trainer_const KOGA           ; $26 ; $233
	trainer_const BLAINE         ; $27 ; $234
	trainer_const SABRINA        ; $28 ; $235
	trainer_const GENTLEMAN      ; $29 ; $236
	trainer_const RIVAL2         ; $2A ; $237
	trainer_const RIVAL3         ; $2B ; $238
	trainer_const LORELEI        ; $2C ; $239
	trainer_const CHANNELER      ; $2D ; $240
	trainer_const AGATHA         ; $2E ; $241
	trainer_const LANCE          ; $2F ; $242
	trainer_const JESSIE_JAMES   ; $30 ; $243 ; New trainer class for Team Rocket added by Vlad
    trainer_const POKEFAN_M      ; $31 ; $244 ; New trainer class added by G-Dubs
    trainer_const POKEFAN_F      ; $32 ; $245 ; New trainer class added by G-Dubs
	trainer_const GUITARIST      ; $33 ; $246 ; New trainer class added by G-Dubs
	trainer_const SOLDIER        ; $34 ; $247 ; New trainer class added by G-Dubs
	trainer_const LADY           ; $35 ; $248 ; New trainer class added by G-Dubs
	trainer_const WAITER         ; $36 ; $249 ; New trainer class added by G-Dubs
	trainer_const CHEF           ; $37 ; $250 ; New trainer class added by G-Dubs
	trainer_const TEACHER        ; $38 ; $251 ; New trainer class added by G-Dubs
    trainer_const SCHOOL_KID     ; $39 ; $252 ; New trainer class added by G-Dubs
DEF NUM_TRAINERS EQU const_value - 1
