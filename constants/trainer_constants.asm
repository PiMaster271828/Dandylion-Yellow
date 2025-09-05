/*
DEF OPP_ID_OFFSET EQU 190    ; Changed from 200 to 190 to make room for new trainer classes by G-Dubs
                             ; The PokéMon constants end at 190, so there's not much room for new trainer classes  

MACRO trainer_const
	const \1
	DEF OPP_\1 EQU OPP_ID_OFFSET + \1
ENDM
*/

MACRO trainer_const
    const \1
    DEF OPP_\1 EQU \1
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
	trainer_const NOBODY         ; $00 ; $190
	trainer_const YOUNGSTER      ; $01 ; $191
	trainer_const BUG_CATCHER    ; $02 ; $192
	trainer_const LASS           ; $03 ; $193
	trainer_const SAILOR         ; $04 ; $194
	trainer_const JR_TRAINER_M   ; $05 ; $195
	trainer_const JR_TRAINER_F   ; $06 ; $196
	trainer_const POKEMANIAC     ; $07 ; $197
	trainer_const SUPER_NERD     ; $08 ; $198
	trainer_const HIKER          ; $09 ; $199
	trainer_const BIKER          ; $0A ; $200
	trainer_const BURGLAR        ; $0B ; $201
	trainer_const ENGINEER       ; $0C ; $202
	trainer_const UNUSED_JUGGLER ; $0D ; $203
	trainer_const FISHER         ; $0E ; $204
	trainer_const SWIMMER        ; $0F ; $205
	trainer_const CUE_BALL       ; $10 ; $206
	trainer_const GAMBLER        ; $11 ; $207
	trainer_const BEAUTY         ; $12 ; $208
	trainer_const PSYCHIC_TR     ; $13 ; $209
	trainer_const ROCKER         ; $14 ; $210
	trainer_const JUGGLER        ; $15 ; $211
	trainer_const TAMER          ; $16 ; $212
	trainer_const BIRD_KEEPER    ; $17 ; $213
	trainer_const BLACKBELT      ; $18 ; $214
	trainer_const RIVAL1         ; $19 ; $215
	trainer_const PROF_OAK       ; $1A ; $216
	trainer_const CHIEF          ; $1B ; $217
	trainer_const SCIENTIST      ; $1C ; $218
	trainer_const GIOVANNI       ; $1D ; $219
	trainer_const ROCKET         ; $1E ; $220
	trainer_const COOLTRAINER_M  ; $1F ; $221
	trainer_const COOLTRAINER_F  ; $20 ; $222
	trainer_const BRUNO          ; $21 ; $223
	trainer_const BROCK          ; $22 ; $224
	trainer_const MISTY          ; $23 ; $225
	trainer_const LT_SURGE       ; $24 ; $226
	trainer_const ERIKA          ; $25 ; $227 
	trainer_const KOGA           ; $26 ; $228
	trainer_const BLAINE         ; $27 ; $229
	trainer_const SABRINA        ; $28 ; $230
	trainer_const GENTLEMAN      ; $29 ; $231
	trainer_const RIVAL2         ; $2A ; $232
	trainer_const RIVAL3         ; $2B ; $233
	trainer_const LORELEI        ; $2C ; $234
	trainer_const CHANNELER      ; $2D ; $235
	trainer_const AGATHA         ; $2E ; $234
	trainer_const LANCE          ; $2F ; $235
	trainer_const JESSIE_JAMES   ; $30 ; $236 ; New trainer class for Team Rocket added by Vlad
    trainer_const POKEFAN_M      ; $31 ; $237 ; New trainer class added by G-Dubs
    trainer_const POKEFAN_F      ; $32 ; $238 ; New trainer class added by G-Dubs
	trainer_const GUITARIST      ; $33 ; $239 ; New trainer class added by G-Dubs
	trainer_const SOLDIER        ; $34 ; $240 ; New trainer class added by G-Dubs
	trainer_const LADY           ; $35 ; $241 ; New trainer class added by G-Dubs
	trainer_const WAITER         ; $36 ; $242 ; New trainer class added by G-Dubs
	trainer_const CHEF           ; $37 ; $243 ; New trainer class added by G-Dubs
	trainer_const TEACHER        ; $38 ; $244 ; New trainer class added by G-Dubs
    trainer_const SCHOOL_KID     ; $39 ; $245 ; New trainer class added by G-Dubs
	trainer_const OFFICER_JENNY  ; $3A ; $246 ; New trainer class added by G-Dubs
    trainer_const FIREFIGHTER    ; $3B ; $247 ; New trainer class added by G-Dubs
    trainer_const DRAGON_TAMER   ; $3C ; $248 ; New trainer class added by G-Dubs
   ;trainer_const NURSE_JOY      ; $?? ; $2?? ; New trainer class added by G-Dubs
DEF NUM_TRAINERS EQU const_value - 1
