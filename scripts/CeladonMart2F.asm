CeladonMart2F_Script:
	jp EnableAutoTextBoxDrawing

CeladonMart2F_TextPointers:
	def_text_pointers
	dw_const CeladonMart2FClerk1Text,           TEXT_CELADONMART2F_CLERK1
	dw_const CeladonMart2FClerk2Text,           TEXT_CELADONMART2F_CLERK2
	dw_const CeladonMart2FMiddleAgedManText,    TEXT_CELADONMART2F_MIDDLE_AGED_MAN
	dw_const CeladonMart2FGirlText,             TEXT_CELADONMART2F_GIRL
	dw_const CeladonMart2FCurrentFloorSignText, TEXT_CELADONMART2F_CURRENT_FLOOR_SIGN

CeladonMart2FMiddleAgedManText:
	text_far _CeladonMart2FMiddleAgedManText
	text_end

CeladonMart2FGirlText:
	text_far _CeladonMart2FGirlText
	text_end

CeladonMart2FCurrentFloorSignText:
	text_far _CeladonMart2FCurrentFloorSignText
	text_end

CeladonMart2FClerk1Text:		                                     ; New text added by G-Dubs (Followed tutorial to free up space in the home bank)
    script_mart POKE_BALL, GREAT_BALL, POTION, SUPER_POTION, REVIVE, ANTIDOTE, BURN_HEAL, AWAKENING, PARALYZE_HEAL, ICE_HEAL, ESCAPE_ROPE, REPEL, SUPER_REPEL	
	
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
	script_mart POKE_BALL, POTION, ANTIDOTE, PARALYZE_HEAL, BURN_HEAL, AWAKENING, PARALYZE_HEAL
	ret

.CascadeStock
	; Inventory for 2-3 Badges
	script_mart POKE_BALL, GREAT_BALL, POTION, SUPER_POTION, REVIVE, ANTIDOTE, BURN_HEAL, AWAKENING, PARALYZE_HEAL, ICE_HEAL, ESCAPE_ROPE, REPEL, SUPER_REPEL
    ret

.RainbowStock
	; Inventory for 4-5 Badges
	script_mart POKE_BALL, GREAT_BALL, POTION, SUPER_POTION, REVIVE, ANTIDOTE, BURN_HEAL, AWAKENING, PARALYZE_HEAL, ICE_HEAL, ESCAPE_ROPE, REPEL, SUPER_REPEL
	ret

.MarshStock
	; Inventory for 6-7 Badges
	script_mart POKE_BALL, GREAT_BALL, ULTRA_BALL, POTION, SUPER_POTION, HYPER_POTION, REVIVE, ANTIDOTE, BURN_HEAL, AWAKENING, PARALYZE_HEAL, ICE_HEAL, FULL_HEAL, ESCAPE_ROPE, REPEL, SUPER_REPEL, MAX_REPEL
	ret

.EarthStock
    ; Inventory for 8 (All) Badges
	script_mart POKE_BALL, GREAT_BALL, ULTRA_BALL, POTION, SUPER_POTION, HYPER_POTION, MAX_POTION, REVIVE, ANTIDOTE, BURN_HEAL, AWAKENING, PARALYZE_HEAL, ICE_HEAL, FULL_HEAL, ESCAPE_ROPE, REPEL, SUPER_REPEL, MAX_REPEL
	ret

*/

CeladonMart2FClerk2Text:		                                     ; New text added by G-Dubs (Followed tutorial to free up space in the home bank)
	; TM Nums:  TM 01          TM 02          TM 05         TM 07          TM 09         TM 17          TM 32           TM 33       TM 37 (GIGA DRAIN)                  
	script_mart TM_MEGA_PUNCH, TM_RAZOR_WIND, TM_MEGA_KICK, TM_HORN_DRILL, TM_TAKE_DOWN, TM_SUBMISSION, TM_DOUBLE_TEAM, TM_REFLECT, TM_EGG_BOMB

/*
    ld hl, wObtainedBadges                                           ; New functions added by G-Dubs to test badge specific mart listings

	; Check for Earth Badge (8th)
	bit BIT_EARTHBADGE, [hl]
	jr nz, .EarthStock

    ; Check for Volcano Badge (7th)
	bit BIT_VOLCANOBADGE, [hl]
	jr nz, .VolcanoStock

	; Check for Marsh Badge (6th)
	bit BIT_MARSHBADGE, [hl]
	jr nz, .MarshStock

    ; Check for Soul Badge (5th)
	bit BIT_SOULBADGE, [hl]
	jr nz, .SoulStock

	; Check for Rainbow Badge (4th)
	bit BIT_RAINBOWBADGE, [hl]
	jr nz, .RainbowStock

    ; Check for Thunder Badge (3rd)
	bit BIT_THUNDERBADGE, [hl]
	jr nz, .ThunderStock

	; Check for Cascade Badge (2nd)
	bit BIT_CASCADEBADGE, [hl]
	jr nz, .CascadeStock

	; Check for Boulder Badge (1st)
	bit BIT_BOULDERBADGE, [hl]
	jr nz, .BoulderStock

; Default
	; Inventory for 0 Badges
	; TM Nums:  TM 01          TM 02          TM 05         TM 07          TM 09         TM 17          TM 32           TM 33       TM 37        TM 41          
	script_mart TM_MEGA_PUNCH, TM_RAZOR_WIND, TM_MEGA_KICK, TM_HORN_DRILL, TM_TAKE_DOWN, TM_SUBMISSION, TM_DOUBLE_TEAM, TM_REFLECT, TM_EGG_BOMB, TM_SOFTBOILED
	ret                                                                                                                           ; GIGA DRAIN   LIGHT SCREEN

.BoulderStock
	; Inventory for 1 Badge
	; TM Nums:  TM 01          TM 02          TM 05         TM 07          TM 09         TM 17          TM 32           TM 33       TM 34    TM 37        TM 41           
	script_mart TM_MEGA_PUNCH, TM_RAZOR_WIND, TM_MEGA_KICK, TM_HORN_DRILL, TM_TAKE_DOWN, TM_SUBMISSION, TM_DOUBLE_TEAM, TM_REFLECT, TM_BIDE, TM_EGG_BOMB, TM_SOFTBOILED
	ret                                                                                                                                    ; GIGA DRAIN   LIGHT SCREEN

.CascadeStock
	; Inventory for 2 Badges
	; TM Nums:  TM 01          TM 02          TM 04         TM 05         TM 07          TM 09         TM 11          TM 12         TM 17          TM 32           TM 33       TM 34    TM 37        TM 41          TM 45  
	script_mart TM_MEGA_PUNCH, TM_RAZOR_WIND, TM WHIRLWIND, TM_MEGA_KICK, TM_HORN_DRILL, TM_TAKE_DOWN, TM_BUBBLEBEAM, TM_WATER_GUN, TM_SUBMISSION, TM_DOUBLE_TEAM, TM_REFLECT, TM_BIDE, TM_EGG_BOMB, TM_SOFTBOILED, TM_THUNDER_WAVE
	ret                                     ; MOONBLAST                                                                                                                               ; GIGA DRAIN   LIGHT SCREEN

.ThunderStock
	; Inventory for 3 Badges
	; TM Nums:  TM 01          TM 02          TM 04         TM 05         TM 07          TM 08         TM 09         TM 11          TM 12         TM 17          TM 19            TM 24           TM 28   TM 32           TM 33       TM 34    TM 37        TM 41          TM 44    TM 45         
	script_mart TM_MEGA_PUNCH, TM_RAZOR_WIND, TM WHIRLWIND, TM_MEGA_KICK, TM_HORN_DRILL, TM_BODY_SLAM, TM_TAKE_DOWN, TM_BUBBLEBEAM, TM_WATER_GUN, TM_SUBMISSION, TM_SEISMIC_TOSS, TM_THUNDERBOLT, TM DIG, TM_DOUBLE_TEAM, TM_REFLECT, TM_BIDE, TM_EGG_BOMB, TM_SOFTBOILED, TM_REST, TM_THUNDER_WAVE
	ret                                     ; MOONBLAST                                                                                                                                                                                      ; GIGA DRAIN   LIGHT SCREEN

.RainbowStock
    ; Inventory for 4 Badges
	; TM Nums:  TM 01          TM 02          TM 04         TM 05         TM 07          TM 08         TM 09         TM 10           TM 11          TM 12         TM 17          TM 18       TM 19            TM 21          TM 24           TM 28   TM 30        TM 32           TM 33       TM 34    TM 37        TM 39     TM 41          TM 44    TM 45       
	script_mart TM_MEGA_PUNCH, TM_RAZOR_WIND, TM WHIRLWIND, TM_MEGA_KICK, TM_HORN_DRILL, TM_BODY_SLAM, TM_TAKE_DOWN, TM_DOUBLE_EDGE, TM_BUBBLEBEAM, TM_WATER_GUN, TM_SUBMISSION, TM_COUNTER, TM_SEISMIC_TOSS, TM_MEGA_DRAIN, TM_THUNDERBOLT, TM DIG, TM_TELEPORT, TM_DOUBLE_TEAM, TM_REFLECT, TM_BIDE, TM_EGG_BOMB, TM_SWIFT, TM_SOFTBOILED, TM_REST, TM_THUNDER_WAVE
	ret                                     ; MOONBLAST                                                                                                                                                                                                                                              ; GIGA DRAIN           ; LIGHT SCREEN

.SoulStock
    ; Inventory for 5 Badges
	; TM Nums:  TM 01          TM 02          TM 04         TM 05         TM 06     TM 07          TM 08         TM 09         TM 10           TM 11          TM 12         TM 13        TM 17          TM 18       TM 19            TM 21          TM 24           TM 28   TM 30        TM 32           TM 33       TM 34    TM 37        TM 39     TM 40          TM 41          TM 44    TM 45            TM 48          TM 49  
	script_mart TM_MEGA_PUNCH, TM_RAZOR_WIND, TM WHIRLWIND, TM_MEGA_KICK, TM_TOXIC, TM_HORN_DRILL, TM_BODY_SLAM, TM_TAKE_DOWN, TM_DOUBLE_EDGE, TM_BUBBLEBEAM, TM_WATER_GUN, TM_ICE_BEAM, TM_SUBMISSION, TM_COUNTER, TM_SEISMIC_TOSS, TM_MEGA_DRAIN, TM_THUNDERBOLT, TM DIG, TM_TELEPORT, TM_DOUBLE_TEAM, TM_REFLECT, TM_BIDE, TM_EGG_BOMB, TM_SWIFT, TM_SKULL_BASH, TM_SOFTBOILED, TM_REST, TM_THUNDER_WAVE, TM_ROCK_SLIDE, TM_TRI_ATTACK
	ret                                     ; MOONBLAST                                                                                                                                                                                                                                                                     ; GIGA DRAIN                          ; LIGHT SCREEN

.MarshStock
	; Inventory for 6 Badges
    ; TM Nums:  TM 01          TM 02          TM 03            TM 04         TM 05         TM 06     TM 07          TM 08         TM 09         TM 10           TM 11          TM 12         TM 13        TM 16       TM 17          TM 18       TM 19            TM 21          TM 23           TM 24           TM 28   TM 29       TM 30        TM 31     TM 32           TM 33       TM 34    TM 36             TM 37        TM 39     TM 40          TM 41          TM 44    TM 45            TM 46       TM 48          TM 49          TM 51          TM 86
	script_mart TM_MEGA_PUNCH, TM_RAZOR_WIND, TM_SWORDS_DANCE, TM WHIRLWIND, TM_MEGA_KICK, TM_TOXIC, TM_HORN_DRILL, TM_BODY_SLAM, TM_TAKE_DOWN, TM_DOUBLE_EDGE, TM_BUBBLEBEAM, TM_WATER_GUN, TM_ICE_BEAM, TM_PAY_DAY, TM_SUBMISSION, TM_COUNTER, TM_SEISMIC_TOSS, TM_MEGA_DRAIN, TM_DRAGON_RAGE, TM_THUNDERBOLT, TM DIG, TM_PSYCHIC, TM_TELEPORT, TM_MIMIC, TM_DOUBLE_TEAM, TM_REFLECT, TM_BIDE, TM_SELF_DESTRUCT, TM_EGG_BOMB, TM_SWIFT, TM_SKULL_BASH, TM_SOFTBOILED, TM_REST, TM_THUNDER_WAVE, TM_PSYWAVE, TM_ROCK_SLIDE, TM_TRI_ATTACK, TM_STEEL_WING, TM_ROCK_TOMB
	ret                                                      ; MOONBLAST                                                                                                                                                                                                                                                                                                                                         ; GIGA DRAIN                          ; LIGHT SCREEN                                                                     ; New TM         New TM

.VolcanoStock
    ; Inventory for 7 Badges
	; TM Nums:  TM 01          TM 02          TM 03            TM 04         TM 05         TM 06     TM 07          TM 08         TM 09         TM 10           TM 11          TM 12         TM 13        TM 14        TM 16       TM 17          TM 18       TM 19            TM 20    TM 21          TM 22         TM 23           TM 24           TM 25       TM 28   TM 29       TM 30        TM 31     TM 32           TM 33       TM 34    TM 35         TM 36             TM 37        TM 38          TM 39     TM 40          TM 41          TM 42           TM 44    TM 45            TM 46       TM 48          TM 49          TM 50          TM 51          TM 86
	script_mart TM_MEGA_PUNCH, TM_RAZOR_WIND, TM_SWORDS_DANCE, TM WHIRLWIND, TM_MEGA_KICK, TM_TOXIC, TM_HORN_DRILL, TM_BODY_SLAM, TM_TAKE_DOWN, TM_DOUBLE_EDGE, TM_BUBBLEBEAM, TM_WATER_GUN, TM_ICE_BEAM, TM_BLIZZARD, TM_PAY_DAY, TM_SUBMISSION, TM_COUNTER, TM_SEISMIC_TOSS, TM_RAGE, TM_MEGA_DRAIN, TM_SOLARBEAM, TM_DRAGON_RAGE, TM_THUNDERBOLT, TM_THUNDER, TM DIG, TM_PSYCHIC, TM_TELEPORT, TM_MIMIC, TM_DOUBLE_TEAM, TM_REFLECT, TM_BIDE, TM_METRONOME, TM_SELF_DESTRUCT, TM_EGG_BOMB, TM_FIRE_BLAST, TM_SWIFT, TM_SKULL_BASH, TM_SOFTBOILED, TM_DREAM_EATER, TM_REST, TM_THUNDER_WAVE, TM_PSYWAVE, TM_ROCK_SLIDE, TM_TRI_ATTACK, TM_SUBSTITUTE, TM_STEEL_WING, TM_ROCK_TOMB
	ret                                                      ; MOONBLAST                                                                                                                                                                                                                                                                                                                                                                                                       ; GIGA DRAIN                                         ; LIGHT SCREEN                                                                                                    ; New TM         New TM

.EarthStock
    ; Inventory for 8 (All) Badges
    ; TM Nums:  TM 01          TM 02          TM 03            TM 04         TM 05         TM 06     TM 07          TM 08         TM 09         TM 10           TM 11          TM 12         TM 13        TM 14        TM 15          TM 16       TM 17          TM 18       TM 19            TM 20    TM 21          TM 22         TM 23           TM 24           TM 25       TM 26          TM 27       TM 28   TM 29       TM 30        TM 31     TM 32           TM 33       TM 34    TM 35         TM 36             TM 37        TM 38          TM 39     TM 40          TM 41          TM 42           TM 44    TM 45            TM 46       TM 48          TM 49          TM 50          TM 51          TM 86
	script_mart TM_MEGA_PUNCH, TM_RAZOR_WIND, TM_SWORDS_DANCE, TM WHIRLWIND, TM_MEGA_KICK, TM_TOXIC, TM_HORN_DRILL, TM_BODY_SLAM, TM_TAKE_DOWN, TM_DOUBLE_EDGE, TM_BUBBLEBEAM, TM_WATER_GUN, TM_ICE_BEAM, TM_BLIZZARD, TM_HYPER_BEAM, TM_PAY_DAY, TM_SUBMISSION, TM_COUNTER, TM_SEISMIC_TOSS, TM_RAGE, TM_MEGA_DRAIN, TM_SOLARBEAM, TM_DRAGON_RAGE, TM_THUNDERBOLT, TM_THUNDER, TM_EARTHQUAKE, TM_FISSURE, TM DIG, TM_PSYCHIC, TM_TELEPORT, TM_MIMIC, TM_DOUBLE_TEAM, TM_REFLECT, TM_BIDE, TM_METRONOME, TM_SELF_DESTRUCT, TM_EGG_BOMB, TM_FIRE_BLAST, TM_SWIFT, TM_SKULL_BASH, TM_SOFTBOILED, TM_DREAM_EATER, TM_REST, TM_THUNDER_WAVE, TM_PSYWAVE, TM_ROCK_SLIDE, TM_TRI_ATTACK, TM_SUBSTITUTE, TM_STEEL_WING, TM_ROCK_TOMB
	ret                                                      ; MOONBLAST                                                                                                                                                                                                                                                                                                                                                                                                                                                 ; GIGA DRAIN                                         ; LIGHT SCREEN                                                                                                    ; New TM         New TM


.FinalStock
    ; Inventory after beating Elite Four
	; TM Nums:  TM 01          TM 02          TM 03            TM 04         TM 05         TM 06     TM 07          TM 08         TM 09         TM 10           TM 11          TM 12         TM 13        TM 14        TM 15          TM 16       TM 17          TM 18       TM 19            TM 20    TM 21          TM 22         TM 23           TM 24           TM 25       TM 26          TM 27       TM 28   TM 29       TM 30        TM 31     TM 32           TM 33       TM 34    TM 35         TM 36             TM 37        TM 38          TM 39     TM 40          TM 41          TM 42           TM 43          TM 44    TM 45            TM 46       TM 47         TM 48          TM 49          TM 50          TM 51          TM 86
	script_mart TM_MEGA_PUNCH, TM_RAZOR_WIND, TM_SWORDS_DANCE, TM WHIRLWIND, TM_MEGA_KICK, TM_TOXIC, TM_HORN_DRILL, TM_BODY_SLAM, TM_TAKE_DOWN, TM_DOUBLE_EDGE, TM_BUBBLEBEAM, TM_WATER_GUN, TM_ICE_BEAM, TM_BLIZZARD, TM_HYPER_BEAM, TM_PAY_DAY, TM_SUBMISSION, TM_COUNTER, TM_SEISMIC_TOSS, TM_RAGE, TM_MEGA_DRAIN, TM_SOLARBEAM, TM_DRAGON_RAGE, TM_THUNDERBOLT, TM_THUNDER, TM_EARTHQUAKE, TM_FISSURE, TM DIG, TM_PSYCHIC, TM_TELEPORT, TM_MIMIC, TM_DOUBLE_TEAM, TM_REFLECT, TM_BIDE, TM_METRONOME, TM_SELF_DESTRUCT, TM_EGG_BOMB, TM_FIRE_BLAST, TM_SWIFT, TM_SKULL_BASH, TM_SOFTBOILED, TM_DREAM_EATER, TM_SKY_ATTACK, TM_REST, TM_THUNDER_WAVE, TM_PSYWAVE, TM EXPLOSION, TM_ROCK_SLIDE, TM_TRI_ATTACK, TM_SUBSTITUTE, TM_STEEL_WING, TM_ROCK_TOMB
	ret                                                      ; MOONBLAST                                                                                                                                                                                                                                                                                                                                                                                                                                                 ; GIGA DRAIN                                         ; LIGHT SCREEN                                                                                                                                 ; New TM         New TM
*/
