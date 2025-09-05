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
	trainer_const NOBODY          ; $00 ;  0
	trainer_const YOUNGSTER       ; $01 ;  1
	trainer_const BUG_CATCHER     ; $02 ;  2
	trainer_const LASS            ; $03 ;  3
	trainer_const SAILOR          ; $04 ;  4
	trainer_const JR_TRAINER_M    ; $05 ;  5
	trainer_const JR_TRAINER_F    ; $06 ;  6
	trainer_const POKEMANIAC      ; $07 ;  7
	trainer_const SUPER_NERD      ; $08 ;  8
	trainer_const HIKER           ; $09 ;  9
	trainer_const BIKER           ; $0A ; 10
	trainer_const BURGLAR         ; $0B ; 11
	trainer_const ENGINEER        ; $0C ; 12
	trainer_const UNUSED_JUGGLER  ; $0D ; 13
	trainer_const FISHER          ; $0E ; 14
	trainer_const SWIMMER         ; $0F ; 15
	trainer_const CUE_BALL        ; $10 ; 16
	trainer_const GAMBLER         ; $11 ; 17
	trainer_const BEAUTY          ; $12 ; 18
	trainer_const PSYCHIC_TR      ; $13 ; 19
	trainer_const ROCKER          ; $14 ; 20
	trainer_const JUGGLER         ; $15 ; 21
	trainer_const TAMER           ; $16 ; 22
	trainer_const BIRD_KEEPER     ; $17 ; 23
	trainer_const BLACKBELT       ; $18 ; 24
	trainer_const RIVAL1          ; $19 ; 25
	trainer_const PROF_OAK        ; $1A ; 26
	trainer_const CHIEF           ; $1B ; 27
	trainer_const SCIENTIST       ; $1C ; 28
	trainer_const GIOVANNI        ; $1D ; 29
	trainer_const ROCKET          ; $1E ; 30
	trainer_const COOLTRAINER_M   ; $1F ; 31
	trainer_const COOLTRAINER_F   ; $20 ; 32
	trainer_const BRUNO           ; $21 ; 33
	trainer_const BROCK           ; $22 ; 34
	trainer_const MISTY           ; $23 ; 35
	trainer_const LT_SURGE        ; $24 ; 36
	trainer_const ERIKA           ; $25 ; 37 
	trainer_const KOGA            ; $26 ; 38
	trainer_const BLAINE          ; $27 ; 39
	trainer_const SABRINA         ; $28 ; 30
	trainer_const GENTLEMAN       ; $29 ; 31
	trainer_const RIVAL2          ; $2A ; 32
	trainer_const RIVAL3          ; $2B ; 33
	trainer_const LORELEI         ; $2C ; 34
	trainer_const CHANNELER       ; $2D ; 35
	trainer_const AGATHA          ; $2E ; 34
	trainer_const LANCE           ; $2F ; 35
	trainer_const JESSIE_JAMES    ; $30 ; 36 ; New trainer class for Team Rocket added by Vlad
    trainer_const POKEFAN_M       ; $31 ; 37 ; New trainer class added by G-Dubs
    trainer_const POKEFAN_F       ; $32 ; 38 ; New trainer class added by G-Dubs
	trainer_const GUITARIST       ; $33 ; 39 ; New trainer class added by G-Dubs
	trainer_const SOLDIER         ; $34 ; 40 ; New trainer class added by G-Dubs
	trainer_const LADY            ; $35 ; 41 ; New trainer class added by G-Dubs
	trainer_const WAITER          ; $36 ; 42 ; New trainer class added by G-Dubs
	trainer_const CHEF            ; $37 ; 43 ; New trainer class added by G-Dubs
	trainer_const TEACHER         ; $38 ; 44 ; New trainer class added by G-Dubs
    trainer_const SCHOOL_KID      ; $39 ; 45 ; New trainer class added by G-Dubs
	trainer_const OFFICER_JENNY   ; $3A ; 46 ; New trainer class added by G-Dubs
    trainer_const FIREFIGHTER     ; $3B ; 47 ; New trainer class added by G-Dubs
    trainer_const DRAGON_TAMER    ; $3C ; 48 ; New trainer class added by G-Dubs
   ;trainer_const NURSE_JOY       ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const DAISY_OAK       ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const JANINE          ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const RIVAL_4         ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const NINJA           ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const KINDLER         ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const TRIATHLETE_M    ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const TRIATHLETE_F    ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const FIREBREATHER    ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const AROMA_LADY      ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const OFFICE_WORKER_M ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const OFFICE_WORKER_F ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const BUTCH_CASSIDY   ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const ROCKET_BROTHER  ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const ROCKET_SISTER   ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const ROCKET_F        ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const BATTLE_GIRL     ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const BODYBUILDER     ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const PSYCHIC_F       ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const GUITARIST_F     ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const SCHOOL_GIRL     ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const JASMINE         ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const KARATE_MASTER   ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const DREAM_GIRL      ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const KIMONO_GIRL     ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const ABEKAH          ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const MR_FUJI         ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const SURFER          ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const STREET_PERFORMER; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const TWINS           ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const WAITRESS        ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const WORKER          ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const CUTE_GIRL       ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const TYRA_CHOPPER    ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const MIKAN           ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const VLAD            ; $?? ; ?? ; New trainer class added by G-Dubs
   ;trainer_const G-DUBS          ; $?? ; ?? ; New trainer class added by G-Dubs
DEF NUM_TRAINERS EQU const_value - 1
