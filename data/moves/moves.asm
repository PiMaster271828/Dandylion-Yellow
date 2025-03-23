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
	move POUND,        NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 35
	move KARATE_CHOP,  NO_ADDITIONAL_EFFECT,        50, FIGHTING,     100, 25 ; Changed to Fighting type
	move DOUBLESLAP,   TWO_TO_FIVE_ATTACKS_EFFECT,  15, NORMAL,        95, 10 ; Buffed power & accuracy
	move COMET_PUNCH,  TWO_TO_FIVE_ATTACKS_EFFECT,  20, FIGHTING,      95, 15 ; Changed to Fighting, & buffed power & accuracy
	move MEGA_PUNCH,   NO_ADDITIONAL_EFFECT,        90, FIGHTING,      95, 20 ; Changed to Fighting, & buffed power & accuracy
	move PAY_DAY,      PAY_DAY_EFFECT,              40, NORMAL,       100, 20
	move FIRE_PUNCH,   BURN_SIDE_EFFECT1,           75, FIRE,         100, 15
	move ICE_PUNCH,    FREEZE_SIDE_EFFECT1,         75, ICE,          100, 15
	move THUNDERPUNCH, PARALYZE_SIDE_EFFECT1,       75, ELECTRIC,     100, 15
	move SCRATCH,      NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 35
	move VICEGRIP,     NO_ADDITIONAL_EFFECT,        55, STEEL,        100, 30 ; Changed to Steel type
	move GUILLOTINE,   OHKO_EFFECT,                  1, NORMAL,        30,  5
	move RAZOR_WIND,   CHARGE_EFFECT,              100, NORMAL,        95, 10 ; changed to Flying type, buffed power & accuracy (New high crit. rate move)
	move SWORDS_DANCE, ATTACK_UP2_EFFECT,            0, NORMAL,       100, 30
	move CUT,          NO_ADDITIONAL_EFFECT,        55, BUG,           95, 30 ; Changed to Bug type, & buffed power (New high crit. rate move)
	move GUST,         NO_ADDITIONAL_EFFECT,        40, FLYING,       100, 35 ; Changed to Flying type
	move WING_ATTACK,  NO_ADDITIONAL_EFFECT,        60, FLYING,       100, 35 ; Buffed power
	move WHIRLWIND,    SWITCH_AND_TELEPORT_EFFECT,   0, FLYING,       100, 20 ; Changed to Flying type, & buffed accuracy
	move FLY,          FLY_EFFECT,                  70, FLYING,        95, 15 ; Buffed power 
	move BIND,         TRAPPING_EFFECT,             15, NORMAL,        85, 20 ; Buffed accuracy
	move SLAM,         NO_ADDITIONAL_EFFECT,        80, DRAGON,        85, 20 ; Changed to Dragon type, & buffed power & accuracy
	move VINE_WHIP,    NO_ADDITIONAL_EFFECT,        40, GRASS,        100, 10 ; Buffed power
	move STOMP,        FLINCH_SIDE_EFFECT2,         65, NORMAL,       100, 20 
	move DOUBLE_KICK,  ATTACK_TWICE_EFFECT,         30, FIGHTING,     100, 30 
	move MEGA_KICK,    NO_ADDITIONAL_EFFECT,       120, FIGHTING,      85,  5 ; Buffed accuracy
	move JUMP_KICK,    JUMP_KICK_EFFECT,            80, FIGHTING,      95, 25 ; Buffed power
	move ROLLING_KICK, FLINCH_SIDE_EFFECT2,         75, FIGHTING,      95, 15 ; Buffed power & accuracy
	move SAND_ATTACK,  ACCURACY_DOWN1_EFFECT,        0, GROUND,       100, 15 ; Changed to Ground type
	move HEADBUTT,     FLINCH_SIDE_EFFECT2,         70, NORMAL,       100, 15
	move HORN_ATTACK,  POISON_SIDE_EFFECT1,         65, BUG,          100, 25 ; Changed to Bug type, & gave a Poison side effect
	move FURY_ATTACK,  TWO_TO_FIVE_ATTACKS_EFFECT,  20, NORMAL,        95, 20 ; Buffed power & accuracy
	move HORN_DRILL,   OHKO_EFFECT,                  1, NORMAL,        30,  5
	move TACKLE,       NO_ADDITIONAL_EFFECT,        35, NORMAL,        95, 35
	move BODY_SLAM,    PARALYZE_SIDE_EFFECT2,       85, NORMAL,       100, 15
	move WRAP,         TRAPPING_EFFECT,             15, NORMAL,        85, 20
	move TAKE_DOWN,    RECOIL_EFFECT,               90, NORMAL,        90, 20 ; Buffed power & accuracy
	move THRASH,       THRASH_PETAL_DANCE_EFFECT,  120, NORMAL,       100, 20 ; Buffed power
	move DOUBLE_EDGE,  RECOIL_EFFECT,              120, NORMAL,       100, 15 ; Buffed power
	move TAIL_WHIP,    DEFENSE_DOWN1_EFFECT,         0, NORMAL,       100, 30
	move POISON_STING, POISON_SIDE_EFFECT1,         35, POISON,       100, 35 ; Buffed power 
	move TWINEEDLE,    TWINEEDLE_EFFECT,            40, BUG,          100, 20 ; Buffed power
	move PIN_MISSILE,  PIN_MISSILE_EFFECT,          25, BUG,           90, 20 ; Buffed accuracy (Poison side effect to be added)
	move LEER,         DEFENSE_DOWN1_EFFECT,         0, DARK,         100, 30 ; Changed to Dark type
	move BITE,         FLINCH_SIDE_EFFECT1,         60, DARK,         100, 25 ; Changed to Dark type
	move GROWL,        ATTACK_DOWN1_EFFECT,          0, SOUND,        100, 40 ; Changed to Sound type
	move ROAR,         SWITCH_AND_TELEPORT_EFFECT,   0, SOUND,        100, 20 ; Changed to Sound type
	move SING,         SLEEP_EFFECT,                 0, SOUND,         55, 15 ; Changed to Sound type
	move SUPERSONIC,   CONFUSION_EFFECT,             0, SOUND,         75, 20 ; Changed to Sound type, & buffed accuracy
	move SONICBOOM,    SPECIAL_DAMAGE_EFFECT,        1, SOUND,         90, 20 ; Changed to Sound type (Flinch side effect to be added)
	move DISABLE,      DISABLE_EFFECT,               0, PSYCHIC_TYPE,  85, 20 ; Changed to Psychic type, & buffed accuracy
	move ACID,         DEFENSE_DOWN_SIDE_EFFECT,    65, POISON,       100, 30 ; Buffed power
	move EMBER,        BURN_SIDE_EFFECT1,           40, FIRE,         100, 25 
	move FLAMETHROWER, BURN_SIDE_EFFECT1,           95, FIRE,         100, 15
	move MIST,         MIST_EFFECT,                  0, ICE,          100, 30
	move WATER_GUN,    NO_ADDITIONAL_EFFECT,        40, WATER,        100, 25
	move HYDRO_PUMP,   NO_ADDITIONAL_EFFECT,       120, WATER,         85, 10 ; Buffed accuracy & power points
	move SURF,         NO_ADDITIONAL_EFFECT,        95, WATER,        100, 15
	move ICE_BEAM,     FREEZE_SIDE_EFFECT1,         95, ICE,          100, 10
	move BLIZZARD,     FREEZE_SIDE_EFFECT1,        120, ICE,           90,  5
	move PSYBEAM,      CONFUSION_SIDE_EFFECT,       65, PSYCHIC_TYPE, 100, 20
	move BUBBLEBEAM,   SPEED_DOWN_SIDE_EFFECT,      65, WATER,        100, 20
	move AURORA_BEAM,  ATTACK_DOWN_SIDE_EFFECT,     65, ICE,          100, 20
	move HYPER_BEAM,   HYPER_BEAM_EFFECT,          150, DRAGON,        90,  5 ; Changed to Dragon type
	move PECK,         NO_ADDITIONAL_EFFECT,        35, FLYING,       100, 35
	move DRILL_PECK,   NO_ADDITIONAL_EFFECT,        85, FLYING,       100, 20 ; Buffed power (New high crit. rate move)
	move SUBMISSION,   RECOIL_EFFECT,              100, FIGHTING,      90, 25 ; Buffed power & accuracy (Flinch side effect to be added)
	move LOW_KICK,     FLINCH_SIDE_EFFECT2,         55, FIGHTING,     100, 20 ; Buffed power & accuracy (Varying power based on weight to be added)
	move COUNTER,      NO_ADDITIONAL_EFFECT,         1, FIGHTING,     100, 20
	move SEISMIC_TOSS, SPECIAL_DAMAGE_EFFECT,        1, FIGHTING,     100, 20
	move STRENGTH,     NO_ADDITIONAL_EFFECT,        80, FIGHTING,     100, 15 ; Changed to Fighting type
	move ABSORB,       DRAIN_HP_EFFECT,             30, GRASS,        100, 20 ; Buffed power
	move MEGA_DRAIN,   DRAIN_HP_EFFECT,             60, GRASS,        100, 10 ; Buffed power
	move LEECH_SEED,   LEECH_SEED_EFFECT,            0, GRASS,         90, 10
	move GROWTH,       SPECIAL_UP1_EFFECT,           0, NORMAL,       100, 40
	move RAZOR_LEAF,   NO_ADDITIONAL_EFFECT,        55, GRASS,         95, 25
	move SOLARBEAM,    CHARGE_EFFECT,              180, GRASS,        100, 10 ; Buffed power (Burn side effect to be added)
	move POISONPOWDER, POISON_EFFECT,                0, POISON,        85, 35 ; Buffed accuracy
	move STUN_SPORE,   PARALYZE_EFFECT,              0, GRASS,         85, 30 ; Buffed accuracy
	move SLEEP_POWDER, SLEEP_EFFECT,                 0, GRASS,         85, 15 ; Buffed accuracy
	move PETAL_DANCE,  THRASH_PETAL_DANCE_EFFECT,  120, GRASS,        100, 20 ; Buffed power
	move STRING_SHOT,  SPEED_DOWN1_EFFECT,           0, BUG,          100, 40
	move DRAGON_RAGE,  SPECIAL_DAMAGE_EFFECT,        1, DRAGON,       100, 10
	move FIRE_SPIN,    TRAPPING_EFFECT,             15, FIRE,          85, 15 ; Buffed accuracy (Burn side effect to be added)
	move THUNDERSHOCK, PARALYZE_SIDE_EFFECT1,       40, ELECTRIC,     100, 30
	move THUNDERBOLT,  PARALYZE_SIDE_EFFECT1,       95, ELECTRIC,     100, 15
	move THUNDER_WAVE, PARALYZE_EFFECT,              0, ELECTRIC,     100, 20
	move THUNDER,      FLINCH_SIDE_EFFECT1,        120, SOUND,         85, 10 ; Changed to Sound type, changed side effect to flinch, & buffed accuracy (A new Electric type move "Thunder Strike" will replace this move)
	move ROCK_THROW,   NO_ADDITIONAL_EFFECT,        55, ROCK,          90, 15 ; Buffed power & accuracy
	move EARTHQUAKE,   NO_ADDITIONAL_EFFECT,       100, GROUND,       100, 10 ; Unchanged (This is the best move in the game!)
	move FISSURE,      OHKO_EFFECT,                  1, GROUND,        30,  5
	move DIG,          CHARGE_EFFECT,               80, GROUND,       100, 10 ; Nerfed power
	move TOXIC,        POISON_EFFECT,                0, POISON,        90, 10 ; Buffed accuracy
	move CONFUSION,    CONFUSION_SIDE_EFFECT,       50, PSYCHIC_TYPE, 100, 25
	move PSYCHIC_M,    SPECIAL_DOWN_SIDE_EFFECT,    90, PSYCHIC_TYPE, 100, 10
	move HYPNOSIS,     SLEEP_EFFECT,                 0, PSYCHIC_TYPE,  65, 20 ; Buffed accuracy
	move MEDITATE,     ATTACK_UP1_EFFECT,            0, PSYCHIC_TYPE, 100, 40
	move AGILITY,      SPEED_UP2_EFFECT,             0, NORMAL,       100, 30 ; Changed to Normal type
	move QUICK_ATTACK, NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 30
	move RAGE,         RAGE_EFFECT,                 80, NORMAL,       100, 20 ; Buffed power
	move TELEPORT,     SWITCH_AND_TELEPORT_EFFECT,   0, PSYCHIC_TYPE, 100, 20
	move NIGHT_SHADE,  SPECIAL_DAMAGE_EFFECT,        0, GHOST,        100, 15
	move MIMIC,        MIMIC_EFFECT,                 0, NORMAL,       100, 10
	move SCREECH,      DEFENSE_DOWN2_EFFECT,         0, SOUND,         85, 40 ; Changed to Sound type
	move DOUBLE_TEAM,  EVASION_UP1_EFFECT,           0, NORMAL,       100, 15
	move RECOVER,      HEAL_EFFECT,                  0, NORMAL,       100, 20
	move HARDEN,       DEFENSE_UP1_EFFECT,           0, ROCK,         100, 30 ; Changed to Rock type
	move MINIMIZE,     EVASION_UP1_EFFECT,           0, NORMAL,       100, 20
	move SMOKESCREEN,  ACCURACY_DOWN1_EFFECT,        0, DARK,         100, 20 ; Changed to Dark type
	move CONFUSE_RAY,  CONFUSION_EFFECT,             0, GHOST,        100, 10
	move WITHDRAW,     DEFENSE_UP1_EFFECT,           0, WATER,        100, 40
	move DEFENSE_CURL, DEFENSE_UP1_EFFECT,           0, NORMAL,       100, 40
	move BARRIER,      DEFENSE_UP2_EFFECT,           0, PSYCHIC_TYPE, 100, 30
	move LIGHT_SCREEN, LIGHT_SCREEN_EFFECT,          0, PSYCHIC_TYPE, 100, 30
	move HAZE,         HAZE_EFFECT,                  0, DARK,         100, 30 ; Changed to Dark type
	move REFLECT,      REFLECT_EFFECT,               0, PSYCHIC_TYPE, 100, 20
	move FOCUS_ENERGY, FOCUS_ENERGY_EFFECT,          0, FIGHTING,     100, 30 ; Changed to Fighting type
	move BIDE,         BIDE_EFFECT,                  0, NORMAL,       100, 10
	move METRONOME,    METRONOME_EFFECT,             0, NORMAL,       100, 10
	move MIRROR_MOVE,  MIRROR_MOVE_EFFECT,           0, FLYING,       100, 20
	move SELFDESTRUCT, EXPLODE_EFFECT,             200, NORMAL,       100,  5 ; Buffed power
	move EGG_BOMB,     NO_ADDITIONAL_EFFECT,       100, GRASS,         95, 10 ; Changed to Grass type, & buffed accuracy, and made a high Crit. rate (What is this OP trash?)
	move LICK,         PARALYZE_SIDE_EFFECT2,       40, GHOST,        100, 30 ; Buffed power
	move SMOG,         POISON_SIDE_EFFECT2,         40, POISON,        95, 20 ; Buffed power & accuracy
	move SLUDGE,       POISON_SIDE_EFFECT2,         70, POISON,       100, 20 ; Buffed power
	move BONE_CLUB,    FLINCH_SIDE_EFFECT1,         70, GROUND,        90, 20 ; Buffed power & accuracy
	move FIRE_BLAST,   BURN_SIDE_EFFECT2,          120, FIRE,          85, 10 ; Buffed power points 
	move WATERFALL,    FLINCH_SIDE_EFFECT1,         80, WATER,        100, 15 ; Added flinch side effect
	move CLAMP,        TRAPPING_EFFECT,             35, WATER,         75, 10
	move SWIFT,        SWIFT_EFFECT,                60, NORMAL,       100, 20
	move SKULL_BASH,   CHARGE_EFFECT,              120, NORMAL,       100, 15 ; Buffed power (Defense boost on charge turn to be added)
	move SPIKE_CANNON, TWO_TO_FIVE_ATTACKS_EFFECT,  35, WATER,        100, 15 ; Changed to Water type, & buffed power
	move CONSTRICT,    SPEED_DOWN_SIDE_EFFECT,      10, NORMAL,       100, 35
	move AMNESIA,      SPECIAL_UP2_EFFECT,           0, PSYCHIC_TYPE, 100, 20
	move KINESIS,      ACCURACY_DOWN1_EFFECT,        0, PSYCHIC_TYPE,  95, 15 ; Buffed accuracy
	move SOFTBOILED,   HEAL_EFFECT,                  0, NORMAL,       100, 10
	move HI_JUMP_KICK, JUMP_KICK_EFFECT,           130, FIGHTING,      90, 20 ; Buffed power
	move GLARE,        PARALYZE_EFFECT,              0, DARK,         100, 30 ; Changed to Dark type, & buffed accuracy
	move DREAM_EATER,  DREAM_EATER_EFFECT,         100, PSYCHIC_TYPE, 100, 15
	move POISON_GAS,   POISON_EFFECT,                0, POISON,        85, 40 ; Buffed accuracy
	move BARRAGE,      TWO_TO_FIVE_ATTACKS_EFFECT,  35, GRASS,         85, 20 ; Changed to Grass type, & buffed power
	move LEECH_LIFE,   DRAIN_HP_EFFECT,             80, BUG,          100, 15 ; Buffed power
	move LOVELY_KISS,  SLEEP_EFFECT,                 0, FAIRY,         75, 10 ; Changed to Fairy type
	move SKY_ATTACK,   CHARGE_EFFECT,              140, FLYING,        90,  5 ; (New high crit. move)
	move TRANSFORM,    TRANSFORM_EFFECT,             0, NORMAL,       100, 10
	move BUBBLE,       SPEED_DOWN_SIDE_EFFECT,      20, WATER,        100, 30
	move DIZZY_PUNCH,  NO_ADDITIONAL_EFFECT,        70, FIGHTING,     100, 10 ; Changed to Fighting type
	move SPORE,        SLEEP_EFFECT,                 0, GRASS,        100, 15
	move FLASH,        ACCURACY_DOWN1_EFFECT,        0, NORMAL,        95, 20 ; Buffed accuracy
	move PSYWAVE,      SPECIAL_DAMAGE_EFFECT,        1, PSYCHIC_TYPE, 100, 15 ; Buffed accuracy (Buff to damage calculation to be added)
	move SPLASH,       SPLASH_EFFECT,                0, WATER,         10, 40 ; Nerfed accuracy (Move too strong, please nerf!)
	move ACID_ARMOR,   DEFENSE_UP2_EFFECT,           0, POISON,       100, 40
	move CRABHAMMER,   NO_ADDITIONAL_EFFECT,        90, WATER,         95, 10 ; Gave flinch side effect, & buffed power & accuracy
	move EXPLOSION,    EXPLODE_EFFECT,             250, NORMAL,       100,  5 ; Buffed power (Defense halving effect to be added)
	move FURY_SWIPES,  TWO_TO_FIVE_ATTACKS_EFFECT,  20, NORMAL,        85, 15 ; Buffed power & accuracy
	move BONEMERANG,   ATTACK_TWICE_EFFECT,         50, GROUND,        90, 10
	move REST,         HEAL_EFFECT,                  0, NORMAL,       100, 10 ; Changed to Normal type
	move ROCK_SLIDE,   FLINCH_SIDE_EFFECT2,         75, ROCK,          90, 10 ; Gave Flinch side effect 
	move HYPER_FANG,   FLINCH_SIDE_EFFECT1,         80, NORMAL,        90, 15
	move SHARPEN,      ATTACK_UP1_EFFECT,            0, NORMAL,       100, 30
	move CONVERSION,   CONVERSION_EFFECT,            0, NORMAL,       100, 30
	move TRI_ATTACK,   NO_ADDITIONAL_EFFECT,        80, NORMAL,       100, 10 ; (Tri Attack effect to be added)
	move SUPER_FANG,   SUPER_FANG_EFFECT,            1, NORMAL,        90, 10
	move SLASH,        NO_ADDITIONAL_EFFECT,        70, NORMAL,       100, 20
	move SUBSTITUTE,   SUBSTITUTE_EFFECT,            0, NORMAL,       100, 10
	move STRUGGLE,     RECOIL_EFFECT,               50, STRUGGLER,    100, 10 ; Changed to Struggler type
	assert_table_length NUM_ATTACKS
