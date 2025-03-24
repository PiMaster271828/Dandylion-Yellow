MACRO move
	db \1 ; animation (interchangeable with move id)
	db \2 ; effect
	db \3 ; power
	db \4 ; type
	db \5 percent ; accuracy
	db \6 ; pp
	assert \6 <= 40, "PP must be 40 or less"
ENDM

Moves:
; Characteristics of each move.
	table_width MOVE_LENGTH
	move POUND,         NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 35                                                                        ; Move #1
	move KARATE_CHOP,   NO_ADDITIONAL_EFFECT,        50, FIGHTING,     100, 25 ; Changed to Fighting type                                             ; Move #2
	move DOUBLESLAP,    TWO_TO_FIVE_ATTACKS_EFFECT,  15, NORMAL,        95, 10 ; Buffed power & accuracy                                              ; Move #3
	move COMET_PUNCH,   TWO_TO_FIVE_ATTACKS_EFFECT,  20, FIGHTING,      95, 15 ; Changed to Fighting, & buffed power & accuracy                       ; Move #4
	move MEGA_PUNCH,    NO_ADDITIONAL_EFFECT,        90, FIGHTING,      95, 20 ; Changed to Fighting, & buffed power & accuracy                       ; Move #5
	move PAY_DAY,       PAY_DAY_EFFECT,              40, NORMAL,       100, 20                                                                        ; Move #6   (Meowth line's signature move) 
	move FIRE_PUNCH,    BURN_SIDE_EFFECT1,           75, FIRE,         100, 15                                                                        ; Move #7
	move ICE_PUNCH,     FREEZE_SIDE_EFFECT1,         75, ICE,          100, 15                                                                        ; Move #8
	move THUNDERPUNCH,  PARALYZE_SIDE_EFFECT1,       75, ELECTRIC,     100, 15                                                                        ; Move #9
	move SCRATCH,       NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 35                                                                        ; Move #10
	move VICEGRIP,      NO_ADDITIONAL_EFFECT,        55, STEEL,        100, 30 ; Changed to Steel type                                                ; Move #11
	move GUILLOTINE,    OHKO_EFFECT,                  1, NORMAL,        30,  5                                                                        ; Move #12   (Pinsir's signature move)
	move RAZOR_WIND,    CHARGE_EFFECT,              100, NORMAL,        95, 10 ; changed to Flying type, buf. pow. & acc. (New high crit. rate move)  ; Move #13
	move SWORDS_DANCE,  ATTACK_UP2_EFFECT,            0, NORMAL,       100, 30                                                                        ; Move #14
	move CUT,           NO_ADDITIONAL_EFFECT,        55, BUG,           95, 30 ; Changed to Bug type, & buffed power (New high crit. rate move)       ; Move #15
	move GUST,          NO_ADDITIONAL_EFFECT,        40, FLYING,       100, 35 ; Changed to Flying type                                               ; Move #16
	move WING_ATTACK,   NO_ADDITIONAL_EFFECT,        60, FLYING,       100, 35 ; Buffed power                                                         ; Move #17
	move WHIRLWIND,     SWITCH_AND_TELEPORT_EFFECT,   0, FLYING,       100, 20 ; Changed to Flying type, & buffed accuracy                            ; Move #18
	move FLY,           FLY_EFFECT,                  70, FLYING,        95, 15 ; Buffed power                                                         ; Move #19
	move BIND,          TRAPPING_EFFECT,             15, NORMAL,        85, 20 ; Buffed accuracy                                                      ; Move #20
	move SLAM,          NO_ADDITIONAL_EFFECT,        80, DRAGON,        85, 20 ; Changed to Dragon type, & buffed power & accuracy                    ; Move #21
	move VINE_WHIP,     NO_ADDITIONAL_EFFECT,        40, GRASS,        100, 10 ; Buffed power                                                         ; Move #22
	move STOMP,         FLINCH_SIDE_EFFECT2,         65, NORMAL,       100, 20                                                                        ; Move #23
	move DOUBLE_KICK,   ATTACK_TWICE_EFFECT,         30, FIGHTING,     100, 30                                                                        ; Move #24
	move MEGA_KICK,     NO_ADDITIONAL_EFFECT,       120, FIGHTING,      85,  5 ; Buffed accuracy                                                      ; Move #25
	move JUMP_KICK,     JUMP_KICK_EFFECT,            80, FIGHTING,      95, 25 ; Buffed power                                                         ; Move #26
	move ROLLING_KICK,  FLINCH_SIDE_EFFECT2,         75, FIGHTING,      95, 15 ; Buffed power & accuracy                                              ; Move #27
	move SAND_ATTACK,   ACCURACY_DOWN1_EFFECT,        0, GROUND,       100, 15 ; Changed to Ground type                                               ; Move #28
	move HEADBUTT,      FLINCH_SIDE_EFFECT2,         70, NORMAL,       100, 15                                                                        ; Move #29
	move HORN_ATTACK,   POISON_SIDE_EFFECT1,         65, BUG,          100, 25 ; Changed to Bug type, & gave a Poison side effect                     ; Move #30
	move FURY_ATTACK,   TWO_TO_FIVE_ATTACKS_EFFECT,  20, NORMAL,        95, 20 ; Buffed power & accuracy                                              ; Move #31
	move HORN_DRILL,    OHKO_EFFECT,                  1, NORMAL,        30,  5                                                                        ; Move #32
	move TACKLE,        NO_ADDITIONAL_EFFECT,        35, NORMAL,        95, 35                                                                        ; Move #33
	move BODY_SLAM,     PARALYZE_SIDE_EFFECT2,       85, NORMAL,       100, 15                                                                        ; Move #34
	move WRAP,          TRAPPING_EFFECT,             15, NORMAL,        85, 20                                                                        ; Move #35
	move TAKE_DOWN,     RECOIL_EFFECT,               90, NORMAL,        90, 20 ; Buffed power & accuracy                                              ; Move #36
	move THRASH,        THRASH_PETAL_DANCE_EFFECT,  120, NORMAL,       100, 20 ; Buffed power                                                         ; Move #37
	move DOUBLE_EDGE,   RECOIL_EFFECT,              120, NORMAL,       100, 15 ; Buffed power                                                         ; Move #38
	move TAIL_WHIP,     DEFENSE_DOWN1_EFFECT,         0, NORMAL,       100, 30                                                                        ; Move #39
	move POISON_STING,  POISON_SIDE_EFFECT1,         35, POISON,       100, 35 ; Buffed power                                                         ; Move #40
	move TWINEEDLE,     TWINEEDLE_EFFECT,            40, BUG,          100, 20 ; Buffed power                                                         ; Move #41    (Beedrill & Cloyster signature move) 
	move PIN_MISSILE,   PIN_MISSILE_EFFECT,          25, BUG,           90, 20 ; Buffed accuracy                                                      ; Move #42
	move LEER,          DEFENSE_DOWN1_EFFECT,         0, DARK,         100, 30 ; Changed to Dark type                                                 ; Move #43
	move BITE,          FLINCH_SIDE_EFFECT1,         60, DARK,         100, 25 ; Changed to Dark type                                                 ; Move #44
	move GROWL,         ATTACK_DOWN1_EFFECT,          0, SOUND,        100, 40 ; Changed to Sound type                                                ; Move #45
	move ROAR,          SWITCH_AND_TELEPORT_EFFECT,   0, SOUND,        100, 20 ; Changed to Sound type                                                ; Move #46
	move SING,          SLEEP_EFFECT,                 0, SOUND,         55, 15 ; Changed to Sound type                                                ; Move #47
	move SUPERSONIC,    CONFUSION_EFFECT,             0, SOUND,         75, 20 ; Changed to Sound type, & buffed accuracy                             ; Move #48
	move SONICBOOM,     SPECIAL_DAMAGE_EFFECT,        1, SOUND,         90, 20 ; Changed to Sound type (Flinch side effect to be added)               ; Move #49
	move DISABLE,       DISABLE_EFFECT,               0, PSYCHIC_TYPE,  85, 20 ; Changed to Psychic type, & buffed accuracy                           ; Move #50
	move ACID,          DEFENSE_DOWN_SIDE_EFFECT,    65, POISON,       100, 30 ; Buffed power                                                         ; Move #51
	move EMBER,         BURN_SIDE_EFFECT1,           40, FIRE,         100, 25                                                                        ; Move #52
	move FLAMETHROWER,  BURN_SIDE_EFFECT1,           95, FIRE,         100, 15                                                                        ; Move #53
	move MIST,          MIST_EFFECT,                  0, ICE,          100, 30                                                                        ; Move #54
	move WATER_GUN,     NO_ADDITIONAL_EFFECT,        40, WATER,        100, 25                                                                        ; Move #55
	move HYDRO_PUMP,    NO_ADDITIONAL_EFFECT,       120, WATER,         85, 10 ; Buffed accuracy & power points                                       ; Move #56
	move SURF,          NO_ADDITIONAL_EFFECT,        95, WATER,        100, 15                                                                        ; Move #57
	move ICE_BEAM,      FREEZE_SIDE_EFFECT1,         95, ICE,          100, 10                                                                        ; Move #58
	move BLIZZARD,      FREEZE_SIDE_EFFECT1,        120, ICE,           90,  5                                                                        ; Move #59
	move PSYBEAM,       CONFUSION_SIDE_EFFECT,       65, PSYCHIC_TYPE, 100, 20                                                                        ; Move #60
	move BUBBLEBEAM,    SPEED_DOWN_SIDE_EFFECT,      65, WATER,        100, 20                                                                        ; Move #61
	move AURORA_BEAM,   ATTACK_DOWN_SIDE_EFFECT,     65, ICE,          100, 20                                                                        ; Move #62
	move HYPER_BEAM,    HYPER_BEAM_EFFECT,          150, DRAGON,        90,  5 ; Changed to Dragon type                                               ; Move #63
	move PECK,          NO_ADDITIONAL_EFFECT,        35, FLYING,       100, 35                                                                        ; Move #64
	move DRILL_PECK,    NO_ADDITIONAL_EFFECT,        85, FLYING,       100, 20 ; Buffed power (New high crit. rate move)                              ; Move #65
	move SUBMISSION,    RECOIL_EFFECT,              100, FIGHTING,      90, 25 ; Buffed power & accuracy (Flinch side effect to be added)             ; Move #66
	move LOW_KICK,      FLINCH_SIDE_EFFECT2,         55, FIGHTING,     100, 20 ; Buffed power & accuracy (Varying power based on weight to be added)  ; Move #67
	move COUNTER,       NO_ADDITIONAL_EFFECT,         1, FIGHTING,     100, 20                                                                        ; Move #68
	move SEISMIC_TOSS,  SPECIAL_DAMAGE_EFFECT,        1, FIGHTING,     100, 20                                                                        ; Move #69
	move STRENGTH,      NO_ADDITIONAL_EFFECT,        80, FIGHTING,     100, 15 ; Changed to Fighting type                                             ; Move #70
	move ABSORB,        DRAIN_HP_EFFECT,             30, GRASS,        100, 20 ; Buffed power                                                         ; Move #71
	move MEGA_DRAIN,    DRAIN_HP_EFFECT,             60, GRASS,        100, 10 ; Buffed power                                                         ; Move #72
	move LEECH_SEED,    LEECH_SEED_EFFECT,            0, GRASS,         90, 10                                                                        ; Move #73
	move GROWTH,        SPECIAL_UP1_EFFECT,           0, NORMAL,       100, 40                                                                        ; Move #74
	move RAZOR_LEAF,    NO_ADDITIONAL_EFFECT,        55, GRASS,         95, 25                                                                        ; Move #75
	move SOLARBEAM,     CHARGE_EFFECT,              180, GRASS,        100, 10 ; Buffed power (Burn side effect to be added)                          ; Move #76
	move POISONPOWDER,  POISON_EFFECT,                0, POISON,        85, 35 ; Buffed accuracy                                                      ; Move #77
	move STUN_SPORE,    PARALYZE_EFFECT,              0, GRASS,         85, 30 ; Buffed accuracy                                                      ; Move #78
	move SLEEP_POWDER,  SLEEP_EFFECT,                 0, GRASS,         85, 15 ; Buffed accuracy                                                      ; Move #79
	move PETAL_DANCE,   THRASH_PETAL_DANCE_EFFECT,  120, GRASS,        100, 20 ; Buffed power                                                         ; Move #80   (Oddish line's signature move)
	move STRING_SHOT,   SPEED_DOWN1_EFFECT,           0, BUG,          100, 40                                                                        ; Move #81   (Caterpie & Weedle signature move)
	move DRAGON_RAGE,   SPECIAL_DAMAGE_EFFECT,        1, DRAGON,       100, 10                                                                        ; Move #82
	move FIRE_SPIN,     TRAPPING_EFFECT,             15, FIRE,          85, 15 ; Buffed accuracy (Burn side effect to be added)                       ; Move #83
	move THUNDERSHOCK,  PARALYZE_SIDE_EFFECT1,       40, ELECTRIC,     100, 30                                                                        ; Move #84
	move THUNDERBOLT,   PARALYZE_SIDE_EFFECT1,       95, ELECTRIC,     100, 15                                                                        ; Move #85
	move THUNDER_WAVE,  PARALYZE_EFFECT,              0, ELECTRIC,     100, 20                                                                        ; Move #86
	move THUNDER,       FLINCH_SIDE_EFFECT1,        120, SOUND,         85, 10 ; Changed to Sound type, changed side effect to flinch, & buffed acc.  ; Move #87   (A new Electric type move "Thunder Strike" will replace this move)
	move ROCK_THROW,    NO_ADDITIONAL_EFFECT,        55, ROCK,          90, 15 ; Buffed power & accuracy                                              ; Move #88
	move EARTHQUAKE,    NO_ADDITIONAL_EFFECT,       100, GROUND,       100, 10 ; Unchanged (This is the best move in the game!)                       ; Move #89
	move FISSURE,       OHKO_EFFECT,                  1, GROUND,        30,  5                                                                        ; Move #90
	move DIG,           CHARGE_EFFECT,               80, GROUND,       100, 10 ; Nerfed power                                                         ; Move #91
	move TOXIC,         POISON_EFFECT,                0, POISON,        90, 10 ; Buffed accuracy                                                      ; Move #92
	move CONFUSION,     CONFUSION_SIDE_EFFECT,       50, PSYCHIC_TYPE, 100, 25                                                                        ; Move #93
	move PSYCHIC_M,     SPECIAL_DOWN_SIDE_EFFECT,    90, PSYCHIC_TYPE, 100, 10                                                                        ; Move #94
	move HYPNOSIS,      SLEEP_EFFECT,                 0, PSYCHIC_TYPE,  65, 20 ; Buffed accuracy                                                      ; Move #95
	move MEDITATE,      ATTACK_UP1_EFFECT,            0, PSYCHIC_TYPE, 100, 40                                                                        ; Move #96
	move AGILITY,       SPEED_UP2_EFFECT,             0, NORMAL,       100, 30 ; Changed to Normal type                                               ; Move #97
	move QUICK_ATTACK,  NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 30                                                                        ; Move #98
	move RAGE,          RAGE_EFFECT,                 80, NORMAL,       100, 20 ; Buffed power                                                         ; Move #99
	move TELEPORT,      SWITCH_AND_TELEPORT_EFFECT,   0, PSYCHIC_TYPE, 100, 20                                                                        ; Move #100
	move NIGHT_SHADE,   SPECIAL_DAMAGE_EFFECT,        0, GHOST,        100, 15                                                                        ; Move #101
	move MIMIC,         MIMIC_EFFECT,                 0, NORMAL,       100, 10                                                                        ; Move #102
	move SCREECH,       DEFENSE_DOWN2_EFFECT,         0, SOUND,         85, 40 ; Changed to Sound type                                                ; Move #103
	move DOUBLE_TEAM,   EVASION_UP1_EFFECT,           0, NORMAL,       100, 15                                                                        ; Move #104
	move RECOVER,       HEAL_EFFECT,                  0, NORMAL,       100, 20                                                                        ; Move #105
	move HARDEN,        DEFENSE_UP1_EFFECT,           0, ROCK,         100, 30 ; Changed to Rock type                                                 ; Move #106
	move MINIMIZE,      EVASION_UP1_EFFECT,           0, NORMAL,       100, 20                                                                        ; Move #107
	move SMOKESCREEN,   ACCURACY_DOWN1_EFFECT,        0, DARK,         100, 20 ; Changed to Dark type                                                 ; Move #108
	move CONFUSE_RAY,   CONFUSION_EFFECT,             0, GHOST,        100, 10                                                                        ; Move #109
	move WITHDRAW,      DEFENSE_UP1_EFFECT,           0, WATER,        100, 40                                                                        ; Move #110
	move DEFENSE_CURL,  DEFENSE_UP1_EFFECT,           0, NORMAL,       100, 40                                                                        ; Move #111
	move BARRIER,       DEFENSE_UP2_EFFECT,           0, PSYCHIC_TYPE, 100, 30                                                                        ; Move #112
	move LIGHT_SCREEN,  LIGHT_SCREEN_EFFECT,          0, PSYCHIC_TYPE, 100, 30                                                                        ; Move #113  (Replaced Softboiled as TM 41)
	move HAZE,          HAZE_EFFECT,                  0, DARK,         100, 30 ; Changed to Dark type                                                 ; Move #114
	move REFLECT,       REFLECT_EFFECT,               0, PSYCHIC_TYPE, 100, 20                                                                        ; Move #115
	move FOCUS_ENERGY,  FOCUS_ENERGY_EFFECT,          0, FIGHTING,     100, 30 ; Changed to Fighting type                                             ; Move #116
	move BIDE,          BIDE_EFFECT,                  0, NORMAL,       100, 10                                                                        ; Move #117
	move METRONOME,     METRONOME_EFFECT,             0, NORMAL,       100, 10                                                                        ; Move #118
	move MIRROR_MOVE,   MIRROR_MOVE_EFFECT,           0, FLYING,       100, 20                                                                        ; Move #119
	move SELFDESTRUCT,  EXPLODE_EFFECT,             200, NORMAL,       100,  5 ; Buffed power                                                         ; Move #120 
	move EGG_BOMB,      NO_ADDITIONAL_EFFECT,       100, GRASS,         95, 10 ; Changed to Grass type, & buffed accuracy, and made a high Crit. rate ; Move #121  (What is this OP trash?)
	move LICK,          PARALYZE_SIDE_EFFECT2,       40, GHOST,        100, 30 ; Buffed power                                                         ; Move #122
	move SMOG,          POISON_SIDE_EFFECT2,         40, POISON,        95, 20 ; Buffed power & accuracy                                              ; Move #123
	move SLUDGE,        POISON_SIDE_EFFECT2,         70, POISON,       100, 20 ; Buffed power                                                         ; Move #124
	move BONE_CLUB,     FLINCH_SIDE_EFFECT1,         70, GROUND,        90, 20 ; Buffed power & accuracy                                              ; Move #125  (Cubone line's signature move)
	move FIRE_BLAST,    BURN_SIDE_EFFECT2,          120, FIRE,          85, 10 ; Buffed power points                                                  ; Move #126
	move WATERFALL,     FLINCH_SIDE_EFFECT1,         80, WATER,        100, 15 ; Added flinch side effect                                             ; Move #127
	move CLAMP,         TRAPPING_EFFECT,             35, WATER,         75, 10                                                                        ; Move #128
	move SWIFT,         SWIFT_EFFECT,                60, NORMAL,       100, 20                                                                        ; Move #129
	move SKULL_BASH,    CHARGE_EFFECT,              120, NORMAL,       100, 15 ; Buffed power (Defense boost on charge turn to be added)              ; Move #130
	move SPIKE_CANNON,  TWO_TO_FIVE_ATTACKS_EFFECT,  35, WATER,        100, 15 ; Changed to Water type, & buffed power                                ; Move #131
	move CONSTRICT,     SPEED_DOWN_SIDE_EFFECT,      10, NORMAL,       100, 35                                                                        ; Move #132
	move AMNESIA,       SPECIAL_UP2_EFFECT,           0, PSYCHIC_TYPE, 100, 20                                                                        ; Move #133
	move KINESIS,       ACCURACY_DOWN1_EFFECT,        0, PSYCHIC_TYPE,  95, 15 ; Buffed accuracy (Power of 20 to be added)                            ; Move #134  (Kadabra's signature move)
	move SOFTBOILED,    HEAL_EFFECT,                  0, NORMAL,       100, 10                                                                        ; Move #135  (Chansey & Exeggutor signature move)
	move HI_JUMP_KICK,  JUMP_KICK_EFFECT,           130, FIGHTING,      90, 20 ; Buffed power                                                         ; Move #136  (Hitmonlee's signature move)
	move GLARE,         PARALYZE_EFFECT,              0, DARK,         100, 30 ; Changed to Dark type, & buffed accuracy                              ; Move #137
	move DREAM_EATER,   DREAM_EATER_EFFECT,         100, PSYCHIC_TYPE, 100, 15                                                                        ; Move #138
	move POISON_GAS,    POISON_EFFECT,                0, POISON,        85, 40 ; Buffed accuracy                                                      ; Move #139  (Exeggutor's signature move)
	move BARRAGE,       TWO_TO_FIVE_ATTACKS_EFFECT,  35, GRASS,         85, 20 ; Changed to Grass type, & buffed power                                ; Move #140
	move LEECH_LIFE,    DRAIN_HP_EFFECT,             80, BUG,          100, 15 ; Buffed power                                                         ; Move #141
	move LOVELY_KISS,   SLEEP_EFFECT,                 0, FAIRY,         75, 10 ; Changed to Fairy type                                                ; Move #142
	move SKY_ATTACK,    CHARGE_EFFECT,              140, FLYING,        90,  5 ; (New high crit. move)                                                ; Move #143
	move TRANSFORM,     TRANSFORM_EFFECT,             0, NORMAL,       100, 10                                                                        ; Move #144
	move BUBBLE,        SPEED_DOWN_SIDE_EFFECT,      20, WATER,        100, 30                                                                        ; Move #145
	move DIZZY_PUNCH,   NO_ADDITIONAL_EFFECT,        70, FIGHTING,     100, 10 ; Changed to Fighting type                                             ; Move #146  (Kangaskhan's signature move)
	move SPORE,         SLEEP_EFFECT,                 0, GRASS,        100, 15                                                                        ; Move #147
	move FLASH,         ACCURACY_DOWN1_EFFECT,        0, NORMAL,        95, 20 ; Buffed accuracy                                                      ; Move #148
	move PSYWAVE,       SPECIAL_DAMAGE_EFFECT,        1, PSYCHIC_TYPE, 100, 15 ; Buffed accuracy and damage calculation                               ; Move #149
	move SPLASH,        SPLASH_EFFECT,                0, WATER,         10, 40 ; Nerfed accuracy (Move too strong, please nerf!)                      ; Move #150  (Magikarp's signatire move)
	move ACID_ARMOR,    DEFENSE_UP2_EFFECT,           0, POISON,       100, 40                                                                        ; Move #151
	move CRABHAMMER,    NO_ADDITIONAL_EFFECT,        90, WATER,         95, 10 ; Gave flinch side effect, & buffed power & accuracy                   ; Move #152  (Kingler & Parasect signature move)
	move EXPLOSION,     EXPLODE_EFFECT,             250, NORMAL,       100,  5 ; Buffed power (Defense halving effect to be added)                    ; Move #153
	move FURY_SWIPES,   TWO_TO_FIVE_ATTACKS_EFFECT,  20, NORMAL,        85, 15 ; Buffed power & accuracy                                              ; Move #154
	move BONEMERANG,    ATTACK_TWICE_EFFECT,         50, GROUND,        90, 10                                                                        ; Move #155  (Cubone line's signature move)
	move REST,          HEAL_EFFECT,                  0, NORMAL,       100, 10 ; Changed to Normal type                                               ; Move #156
	move ROCK_SLIDE,    FLINCH_SIDE_EFFECT2,         75, ROCK,          90, 10 ; Gave Flinch side effect                                              ; Move #157
	move HYPER_FANG,    FLINCH_SIDE_EFFECT1,         80, NORMAL,        90, 15                                                                        ; Move #158
	move SHARPEN,       ATTACK_UP1_EFFECT,            0, NORMAL,       100, 30                                                                        ; Move #159
	move CONVERSION,    CONVERSION_EFFECT,            0, NORMAL,       100, 30                                                                        ; Move #160
	move TRI_ATTACK,    NO_ADDITIONAL_EFFECT,        80, NORMAL,       100, 10 ; (Tri Attack effect to be added)                                      ; Move #161
	move SUPER_FANG,    SUPER_FANG_EFFECT,            1, NORMAL,        90, 10                                                                        ; Move #162
	move SLASH,         NO_ADDITIONAL_EFFECT,        70, NORMAL,       100, 20                                                                        ; Move #163
	move SUBSTITUTE,    SUBSTITUTE_EFFECT,            0, NORMAL,       100, 10                                                                        ; Move #164
	move STRUGGLE,      RECOIL_EFFECT,               50, STRUGGLER,    100, 10 ; Changed to Struggler type                                            ; Move #165  (Always last move number)
	assert_table_length NUM_ATTACKS
/*
; New Moves


; Unadded moves   
    move STEEL_WING,     STEEL_WING_EFFECT,           70, STEEL,         90, 25 ; 10% Raise user's Defense                                            ; Move #166
	move SLUDGE_BOMB,    POISON_SIDE_EFFECT2,         95, POISON,       100, 10                                                                       ; Move #167
	move GIGA_IMPACT,    HYPER_BEAM_EFFECT,          150, NORMAL,        90,  5                                                                       ; Move #168  (Move to replace Hyper Beam)
	move CRUNCH,         CRUNCH_EFFECT,               80, DARK,         100, 15 ; 30% Lower opponent's defense, 30% Flinch                            ; Move #169  (Magnemite line's signature move)
	move MAGNET_BOMB,    SWIFT_EFFECT,                60, STEEL,        100, 20                                                                       ; Move #170
	move IRON_TAIL,      DEFENSE_DOWN_SIDE_EFFECT,   100, STEEL,         75, 15                                                                       ; Move #171
	move HYPER_VOICE,    SPECIAL_DOWN_SIDE_EFFECT,    90, SOUND,        100, 10                                                                       ; Move #172
	move SHADOW_BALL,    SPECIAL_DOWN_SIDE_EFFECT,    90, GHOST,        100, 10                                                                       ; Move #173
    move POWDER_SNOW,    FREEZE_SIDE_EFFECT,          40, ICE,          100, 25                                                                       ; Move #174 
	move SWEET_KISS,     CONFUSION_EFFECT,             0, FAIRY,         85, 10                                                                       ; Move #175
    move MACH_PUNCH,     NO_ADDITIONAL_EFFECT,        40, FIGHTING,     100, 30 ; Priority +1                                                         ; Move #176  (Hitmonchan's signature move)
    move POISON_FANG,    POISON_FANG_EFFECT,          50, POISON,       100, 15 ; 50% Badly Poison, 10% Flinch                                        ; Move #177
    move ZIPPY_ZAP,      ZIPPY_ZAP_EFFECT,            50, ELECTRIC,     100, 15 ; Priority +3, Always Crit., Raise user's Evasion                     ; Move #178  (Starter Pikachu's signature move)
    move FRENZY_PLANT,   HYPER_BEAM_EFFECT,          150, GRASS,         90,  5                                                                       ; Move #179  (Venusaur's signature move)
    move BLAST_BURN,     HYPER_BEAM_EFFECT,          150, FIRE,          90,  5                                                                       ; Move #180  (Charizard's signature move)
    move HYDRO_CANNON,   HYPER_BEAM_EFFECT,          150, WATER,         90,  5                                                                       ; Move #181  (Blastoise's signature move)
	move DRAIN_KISS,     DRAIN_HP_EFFECT,             50, FAIRY,        100, 10                                                                       ; Move #182
	move MYSTICALFIRE,   SPECIAL_DOWN_SIDE_EFFECT,    70, FIRE,         100, 10                                                                       ; Move #183
	move BOLT_BEAK,      BOLT_BEAK_EFFECT,            85, ELECTRIC,     100, 10 ; Priority +1, 30% Paralyze                                           ; Move #184  (Zapdos's signature move)
    move ICY_WINGS,      ICY_WINGS_EFFECT,            45, ICE,          100, 10 ; Hits twice, 10% Freeze                                              ; Move #185  (Articuno's signature move)                     
	move DUALWINGBEAT,   ATTACK_TWICE_EFFECT,         40, FLYING,        90, 10                                                                       ; Move #186
    move WISH,           HEAL_EFFECT,                  0, FAIRY,        100, 10                                                                       ; Move #187
    move MOONBLAST,      NO_ADDITIONAL_EFFECT,       120, FAIRY,         85,  5                                                                       ; Move #188
    move COPYCAT,        MIRROR_MOVE_EFFECT,           0, FAIRY,        100, 20                                                                       ; Move #189
    move EXTREMESPEED,   EXTREMESPEED_EFFECT,         80, NORMAL,       100, 10 ; Priority +2                                                         ; Move #190
    move SACRED_FIRE,    SACRED_FIRE_EFFECT,         100, FIRE,          95,  5 ; 50% Burn                                                            ; Move #191  (Bidoof & Ho-Oh signature move)
    move ANCIENTPOWER,	 ANCIENT_POWER_EFFECT,        60, ROCK,         100, 10 ; 10% Omniboost                                                       ; Move #192  (Fossil PokéMon signature move)
	move FIN_SLAP,       ATTACK_TWICE_EFFECT,         20, WATER,         10, 30                                                                       ; Move #193
    move BUG_BITE,       FLINCH_SIDE_EFFECT2,         60, BUG,          100, 20                                                                       ; Move #194
    move SHADOW_BONE     SPECIAL_DOWN_SIDE_EFFECT,    85, GHOST,        100, 10                                                                       ; Move #195  (Marowak signature move)
	move DRAGONBREATH,   PARALYZE_SIDE_EFFECT1,       60, DRAGON,       100, 20                                                                       ; Move #196
	move PSY-KICK,       FLINCH_SIDE_EFFECT2,         75, PSYCHIC_TYPE, 100, 15                                                                       ; Move #197
   ;move PSYSHOCK,       SWIFT_EFFECT,                95, PSYCHIC_TYPE, 100, 15                                                                       ; Move #198  (Mew's signature move)
   ;move PSYSTRIKE,      SPECIAL_DOWN_SIDE_EFFECT,   100, PSYCHIC_TYPE, 100, 15                                                                       ; Move #199  (Mewtwo's signature move)
    move MUD_SHOT,       AUTO_SPEED_DOWN_SIDE_EFFECT, 55, GROUND,        95, 15 ; Always lower's opponent's Speed                                     ; Move #200
    move MUD-SLAP,       AUTO_ACC_DOWN_SIDE_EFFECT,   20, GROUND,       100, 10 ; Always lower's opponent's Accuracy                                  ; Move #201
    move WHIRLPOOL,      TRAPPING_EFFECT,             20, WATER,         85, 20                                                                       ; Move #202
    move DIVE_BOMB,      JUMP_KICK_EFFECT,            90, FIRE,     	 90, 10 ; Fixed Jump Kick Effect                                              ; Move #203  (Moltres's signature move)
	move GIGA_DRAIN,     DRAIN_HP_EFFECT,             80, GRASS,        100, 10                                                                       ; Move #204
	move CROSS_CHOP,     NO_ADDITIONAL_EFFECT,        85, FIGHTING,      85, 10 ; High Crit. rate                                                     ; Move #205
    move DUAL_CHOP,      ATTACK_TWICE_EFFECT,         40, FIGHTING,     100, 15 ; High Crit. rate                                                     ; Move #206
	move TAIL_SLAP,      TWO_TO_FIVE_ATTACKS_EFFECT,  25, NORMAL,        95, 15                                                                       ; Move #207
    move DRILL_RUN,      NO_ADDITIONAL_EFFECT,        80, GROUND,        95, 10 ; High Crit. rate                                                     ; Move #208
	move ROCK_BLAST,     TWO_TO_FIVE_ATTACKS_EFFECT,  25, ROCK,          90, 20                                                                       ; Move #209
	move ROCK_TOMB,      SPEED_DOWN_SIDE_EFFECT,      50, ROCK,          90, 10 ; Always lower's opponent's Speed                                     ; Move #210
	move MEGAHORN,       FLINCH_SIDE_EFFECT2,        120, BUG,           85, 10                                                                       ; Move #211
	move PLAY_ROUGH,     ATTACK_DOWN_SIDE_EFFECT,     90, FAIRY,         90, 10                                                                       ; Move #212
	move SKY_UPPERCUT,   NO_ADDITIONAL_EFFECT,        85, FIGHTING,      95, 15 ; Can hit Pokémon in sky                                              ; Move #213  (Hitmonchan's signature move)
	move SHADOW_PUNCH,   SWIFT_EFFECT,                60, GHOST,        100, 20                                                                       ; Move #214
	move MIRROR_COAT,    MIRROR_COAT_EFFECT,           1, PSYCHIC_TYPE, 100, 20 ; Modern Mirror Coat Effect                                           ; Move #215
	move ICY_WIND,       AUTO_SPEED_DOWN_SIDE_EFFECT, 55, ICE,           95, 15 ; Always lower's opponent's Speed                                     ; Move #216
    move WILD_CHARGE,    RECOIL_EFFECT,               90, ELECTRIC,      90, 20 ; 20% Paralyze, in addition to the Recoil Effect                      ; Move #217
	move FLASH_CANNON,   SPECIAL_DOWN_SIDE_EFFECT,    90, STEEL,        100, 10                                                                       ; Move #218
    move MAGICALGLEAM,   ACCURACY_DOWN_SIDE_EFFECT1,  80, FAIRY,        100, 10 ; Lowers opponent's Accuracy 10%                                      ; Move #219
	move STONE_EDGE,     NO_ADDITIONAL_EFFECT,       100, ROCK,          85, 10 ; High Crit. rate                                                     ; Move #220
	move DRAGON_CLAW,    NO_ADDITIONAL_EFFECT,        70, DRAGON,       100, 15 ; High Crit. rate                                                     ; Move #221
	move SLUDGE_WAVE,    POISON_SIDE_EFFECT2,        120, POISON,        85, 10                                                                       ; Move #222
	move BUG_BUZZ,	     SPECIAL_DOWN_SIDE_EFFECT,    90, BUG,          100, 10                                                                       ; Move #223
	move SIGNAL_BEAM,    CONFUSION_SIDE_EFFECT,       75, BUG,          100, 15                                                                       ; Move #224 
	
; Unanimated moves
	move PSYCHIC_ARMOR,  DEFENSE_UP2_EFFECT,           0, PSYCHIC_TYPE, 100, 40 ; Barrier effect + Reflect                                            ; Move #225  (Armored Mewtwo's signature move)
	move RADAR_EYES,     EVASION_DOWN_SIDE_EFFECT,    35, BUG,          100, 20 ; This move can't miss, and always lowers the foe's evasion           ; Move #???  (Venonat's signature move)
	move RAZOR_SHELL,    DEFENSE_DOWN_SIDE_EFFECT,    75, WATER,         95, 10 ; High Crit. rate                                                     ; Move #226
	move BLOOM_DOOM,     EXPLODE_EFFECT,             175, GRASS,        100,  5                                                                       ; Move #???
 	move POWER_WHIP,     DEFENSE_DOWN_SIDE_EFFECT,    80, GRASS,        100, 10 ; High Crit. rate                                                     ; Move #???  (Venusaur's signature move)
	move MAX_WILDFIRE,   ALWAYS_BURN_SIDE_EFFECT      80, FIRE,         100  10                                                                       ; Move #???  (Charizard's signature move)

; Struggle
	move STRUGGLE,       RECOIL_EFFECT,               50, STRUGGLE,     100, 10                                                                       ; Move #240  (Always last move number)

; Moves I really want to add into the game
    move TOMBSTONER,     POISON_SIDE_EFFECT1,         70, GHOST,         75, 15                                                                       ; Move #227  (Added as TM 56 for the memes)
	move METAL_CLAW,     METAL_CLAW_EFFECT,           50, STEEL,         95, 35 ; 10% Raise user's Attack                                             ; Move #228  (This move must be added as it is the best move in the game!)
    move BOUNCE,         FLY_EFFECT,                  85, FLYING,        85, 15 ; 30% Paralyze on landing turn                                        ; Move #229  (Magikarp & Gyarados signature move)
	move OCTAZOOKA,      ACCURACY_DOWN_SIDE_EFFECT3   65, WATER,         95, 10 ; Lowers opponent's Accuracy 50%                                      ; Move #230  (Horsea line's signature move)
	move SNIPE_SHOT,     NO_ADDITIONAL_EFFECT,        80, WATER,        100, 15 ; High Crit. rate                                                     ; Move #231  (Blastoise's signature move)
	move SEARING_SAND,   BURN_SIDE_EFFECT1,           70, GROUND,       100, 10	                                                                      ; Move #232
	move GNAW,           FLINCH_SIDE_EFFECT2,         60, NORMAL,       100, 25                                                                       ; Move #233  (TCG exclusive move)

; Moves that are a maybe
    move AERIAL_ACE,     SWIFT_EFFECT,                60, FLYING,       100, 20                                                                       ; Move #???
	move FAINT_ATTACK,   SWIFT_EFFECT,                60, DARK,         100, 20                                                                       ; Move #???
	move BONE_RUSH,      TWO_TO_FIVE_ATTACKS_EFFECT,  25, GROUND,        90, 10                                                                       ; Move #???  (Cubone line's signature move)
	move POISON_TAIL,    POISON_TAIL_SIDE_EFFECT,     50, POISON,       100, 15 ; 10% Badly Poison, high Crit. rate                                   ; Move #???
	move ALURINGVOICE,   CONFUSION_SIDE_EFFECT,       80, SOUND,        100, 10                                                                       ; Move #???
	move KINDLE	         BURN_SIDE_EFFECT1,           20, FIRE,         100, 30                                                                       ; Move #???  (Low power fire move, animation replaced Ember)
	move MUD_BOMB,       ACCURACY_DOWN_SIDE_EFFECT2,  65, GROUND,        95, 10 ; Lowers opponent's Accuracy 30%                                      ; Move #???
	move SHADOW_CLAW,    NO_ADDITIONAL_EFFECT,        70, GHOST,        100, 15 ; High Crit. rate                                                     ; Move #???
    move POISON_JAB,     POISON_SIDE_EFFECT1,         80, POISON,       100, 20                                                                       ; Move #???
    move VOLT_TACKLE,    RECOIL_EFFECT,              120, ELECTRIC,     100, 15                                                                       ; Move #???  (Pikachu's signature move)
    move SHEER_COLD,     OHKO_EFFECT,                  1, ICE,           30,  5                                                                       ; Move #???
    move HIHORSEPOWER,   NO_ADDITIONAL_EFFECT,        95, GROUND,        95, 10                                                                       ; Move #???
	move EARTH_POWER,    SPECIAL_DOWN_SIDE_EFFECT,    90, GROUND,       100, 10                                                                       ; Move #???  (Alternative move to Earthquake)
	
; Moves to possibly cut
	move HEAD_SMASH,     RECOIL_EFFECT,              150, ROCK,          80,  5                                                                       ; Move #???
   ;move SPIN_SLASH,     NO_ADDITIONAL_EFFECT,        55, NORMAL,        95, 30 ; High Crit. rate                                                     ; Move #???  (Mystery Dungeon exclusive move)
    move SEED_BOMB,      NO_ADDITIONAL_EFFECT,        80, GRASS,        100, 15                                                                       ; Move #???
	move LEAFAGE,        NO_ADDITIONAL_EFFECT,        20, GRASS,        100, 30                                                                       ; Move #???  (Low power Grass move)
	move ROCK_SMASH,     DEFENSE_DOWN_SIDE_EFFECT,    20, FIGHTING,     100, 30                                                                       ; Move #???  (Future HM move)
	move MAKE_IT_RAIN,   PAY_DAY_EFFECT,             120, STEEL,        100,  5 ; Drop user's Special after using                                     ; Move #???  (Persian signature move)
    move RAGE_FIST,      RAGE_FIST_EFFECT,            50, GHOST,        100, 50 ; Raise user's Attack after using                                     ; Move #???  (Primeape signature move)
	move SHOCK_WAVE,     SWIFT_EFFECT,                60, ELECTRIC,     100, 20                                                                       ; Move #???
	move HYPER_DRILL,    NO_ADDITIONAL_EFFECT,       100, NORMAL,       100, 10 ; High Crit. rate                                                     ; Move #???
   ;move PIKA_PAPOW,     PIKA_PAPOW_EFFECT,            1, ELECTRIC,     100,  5 ; Priority +4, Always hit, Always Crit., Power based on Pikachu's friendship (Default power of 250 if used by another Pokémon)
    move SPARK,          PARALYZE_SIDE_EFFECT2,       65, ELECTRIC,     100, 25                                                                       ; Move #???
    move AXE_KICK,       AXE_KICK_EFFECT,            120, FIGHTING,      90, 10 ; 30% Confuse, 30% Finch, Fixed Jump Kick Effect                      ; Move #???
    move DRAIN_PUNCH,    DRAIN_HP_EFFECT,             75, FIGHTING,     100, 10                                                                       ; Move #???
    move THUNDERSTRIKE,  PARALYZE_SIDE_EFFECT1,      120, ELECTRIC,      85, 10                                                                       ; Move #???  (Move to replace Thunder)
    move BLAZE_KICK,     BURN_SIDE_EFFECT1,           85, FIRE,          95, 10 ; High Crit. rate                                                     ; Move #???
	move NUZZLE,         AUTO_PARALYZE_SIDE_EFFECT,   20, ELECTRIC,     100, 20 ; Always paralyzes opponent                                           ; Move #???  (Pikachu's signature move)
*/
