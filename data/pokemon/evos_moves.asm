; Evos+moves data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, min level (1), species
;    * db EVOLVE_TRADE, min level (1), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

EvosMovesPointerTable:
	table_width 2
	dw RhydonEvosMoves
	dw KangaskhanEvosMoves
	dw NidoranMEvosMoves
	dw ClefairyEvosMoves
	dw SpearowEvosMoves
	dw VoltorbEvosMoves
	dw NidokingEvosMoves
	dw SlowbroEvosMoves
	dw IvysaurEvosMoves
	dw ExeggutorEvosMoves
	dw LickitungEvosMoves
	dw ExeggcuteEvosMoves
	dw GrimerEvosMoves
	dw GengarEvosMoves
	dw NidoranFEvosMoves
	dw NidoqueenEvosMoves
	dw CuboneEvosMoves
	dw RhyhornEvosMoves
	dw LaprasEvosMoves
	dw ArcanineEvosMoves
	dw MewEvosMoves
	dw GyaradosEvosMoves
	dw ShellderEvosMoves
	dw TentacoolEvosMoves
	dw GastlyEvosMoves
	dw ScytherEvosMoves
	dw StaryuEvosMoves
	dw BlastoiseEvosMoves
	dw PinsirEvosMoves
	dw TangelaEvosMoves
	dw MissingNo1FEvosMoves
	dw MissingNo20EvosMoves
	dw GrowlitheEvosMoves
	dw OnixEvosMoves
	dw FearowEvosMoves
	dw PidgeyEvosMoves
	dw SlowpokeEvosMoves
	dw KadabraEvosMoves
	dw GravelerEvosMoves
	dw ChanseyEvosMoves
	dw MachokeEvosMoves
	dw MrMimeEvosMoves
	dw HitmonleeEvosMoves
	dw HitmonchanEvosMoves
	dw ArbokEvosMoves
	dw ParasectEvosMoves
	dw PsyduckEvosMoves
	dw DrowzeeEvosMoves
	dw GolemEvosMoves
	dw MissingNo32EvosMoves
	dw MagmarEvosMoves
	dw MissingNo34EvosMoves
	dw ElectabuzzEvosMoves
	dw MagnetonEvosMoves
	dw KoffingEvosMoves
	dw MissingNo38EvosMoves
	dw MankeyEvosMoves
	dw SeelEvosMoves
	dw DiglettEvosMoves
	dw TaurosEvosMoves
	dw MissingNo3DEvosMoves
	dw MissingNo3EEvosMoves
	dw MissingNo3FEvosMoves
	dw FarfetchdEvosMoves
	dw VenonatEvosMoves
	dw DragoniteEvosMoves
	dw MissingNo43EvosMoves
	dw MissingNo44EvosMoves
	dw MissingNo45EvosMoves
	dw DoduoEvosMoves
	dw PoliwagEvosMoves
	dw JynxEvosMoves
	dw MoltresEvosMoves
	dw ArticunoEvosMoves
	dw ZapdosEvosMoves
	dw DittoEvosMoves
	dw MeowthEvosMoves
	dw KrabbyEvosMoves
	dw MissingNo4FEvosMoves
	dw MissingNo50EvosMoves
	dw MissingNo51EvosMoves
	dw VulpixEvosMoves
	dw NinetalesEvosMoves
	dw PikachuEvosMoves
	dw RaichuEvosMoves
	dw MissingNo56EvosMoves
	dw MissingNo57EvosMoves
	dw DratiniEvosMoves
	dw DragonairEvosMoves
	dw KabutoEvosMoves
	dw KabutopsEvosMoves
	dw HorseaEvosMoves
	dw SeadraEvosMoves
	dw MissingNo5EEvosMoves
	dw MissingNo5FEvosMoves
	dw SandshrewEvosMoves
	dw SandslashEvosMoves
	dw OmanyteEvosMoves
	dw OmastarEvosMoves
	dw JigglypuffEvosMoves
	dw WigglytuffEvosMoves
	dw EeveeEvosMoves
	dw FlareonEvosMoves
	dw JolteonEvosMoves
	dw VaporeonEvosMoves
	dw MachopEvosMoves
	dw ZubatEvosMoves
	dw EkansEvosMoves
	dw ParasEvosMoves
	dw PoliwhirlEvosMoves
	dw PoliwrathEvosMoves
	dw WeedleEvosMoves
	dw KakunaEvosMoves
	dw BeedrillEvosMoves
	dw MissingNo73EvosMoves
	dw DodrioEvosMoves
	dw PrimeapeEvosMoves
	dw DugtrioEvosMoves
	dw VenomothEvosMoves
	dw DewgongEvosMoves
	dw MissingNo79EvosMoves
	dw MissingNo7AEvosMoves
	dw CaterpieEvosMoves
	dw MetapodEvosMoves
	dw ButterfreeEvosMoves
	dw MachampEvosMoves
	dw MissingNo7FEvosMoves
	dw GolduckEvosMoves
	dw HypnoEvosMoves
	dw GolbatEvosMoves
	dw MewtwoEvosMoves
	dw SnorlaxEvosMoves
	dw MagikarpEvosMoves
	dw MissingNo86EvosMoves
	dw MissingNo87EvosMoves
	dw MukEvosMoves
	dw MissingNo8AEvosMoves
	dw KinglerEvosMoves
	dw CloysterEvosMoves
	dw MissingNo8CEvosMoves
	dw ElectrodeEvosMoves
	dw ClefableEvosMoves
	dw WeezingEvosMoves
	dw PersianEvosMoves
	dw MarowakEvosMoves
	dw MissingNo92EvosMoves
	dw HaunterEvosMoves
	dw AbraEvosMoves
	dw AlakazamEvosMoves
	dw PidgeottoEvosMoves
	dw PidgeotEvosMoves
	dw StarmieEvosMoves
	dw BulbasaurEvosMoves
	dw VenusaurEvosMoves
	dw TentacruelEvosMoves
	dw MissingNo9CEvosMoves
	dw GoldeenEvosMoves
	dw SeakingEvosMoves
	dw MissingNo9FEvosMoves
	dw MissingNoA0EvosMoves
	dw MissingNoA1EvosMoves
	dw MissingNoA2EvosMoves
	dw PonytaEvosMoves
	dw RapidashEvosMoves
	dw RattataEvosMoves
	dw RaticateEvosMoves
	dw NidorinoEvosMoves
	dw NidorinaEvosMoves
	dw GeodudeEvosMoves
	dw PorygonEvosMoves
	dw AerodactylEvosMoves
	dw MissingNoACEvosMoves
	dw MagnemiteEvosMoves
	dw MissingNoAEEvosMoves
	dw MissingNoAFEvosMoves
	dw CharmanderEvosMoves
	dw SquirtleEvosMoves
	dw CharmeleonEvosMoves
	dw WartortleEvosMoves
	dw CharizardEvosMoves
	dw MissingNoB5EvosMoves
	dw FossilKabutopsEvosMoves
	dw FossilAerodactylEvosMoves
	dw MonGhostEvosMoves
	dw OddishEvosMoves
	dw GloomEvosMoves
	dw VileplumeEvosMoves
	dw BellsproutEvosMoves
	dw WeepinbellEvosMoves
	dw VictreebelEvosMoves
	assert_table_length NUM_POKEMON_INDEXES

RhydonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 2, TACKLE
	db 5, HORN_ATTACK
	db 9, TAIL_WHIP
	db 13, STOMP
	db 19, FURY_ATTACK
	db 25, ROCK_THROW
	db 31, LEER
   ;db 34, ROCK_BLAST
	db 37, TAKE_DOWN
	db 43, THRASH
	db 48, HORN_DRILL
	db 54, ROCK_SLIDE
	db 65, EARTHQUAKE
	db 69, DOUBLE_EDGE
   ;db 71, STONE_EDGE
	db 75, FISSURE
	db 0

KangaskhanEvosMoves:
; Evolutions
	db 0
; Learnset
	db 26, BITE
	db 31, TAIL_WHIP
	db 36, MEGA_PUNCH
	db 41, LEER
	db 46, DIZZY_PUNCH
	db 0

NidoranMEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0
; Learnset
	db 1, TACKLE
	db 2, LEER
	db 4, PECK
	db 8, HORN_ATTACK
	db 12, DOUBLE_KICK
	db 17, POISON_STING
	db 20, FOCUS_ENERGY
	db 24, FURY_ATTACK
	db 28, DIG
   ;db 32, POISON_JAB
   ;db 36, EARTH_POWER
	db 40, TOXIC
	db 44, HORN_DRILL
	db 0

ClefairyEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, CLEFABLE
	db 0
; Learnset
	db 13, SING
	db 18, DOUBLESLAP
	db 24, MINIMIZE
	db 31, METRONOME
	db 39, DEFENSE_CURL
	db 48, LIGHT_SCREEN
	db 0

SpearowEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, FEAROW
	db 0
; Learnset
	db 1, PECK
	db 4, GROWL
	db 9, LEER
	db 11, FURY_ATTACK 
	db 15, WING_ATTACK
	db 18, FOCUS_ENERGY
   ;db 20, FAINT_ATTACK
	db 22, MIRROR_MOVE
   ;db 25, AERIAL_ACE
	db 29, AGILITY
	db 32, TAKE_DOWN
	db 36, DRILL_PECK
	db 0

VoltorbEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0
; Learnset
	db 1, TACKLE
	db 4, THUNDERSHOCK
	db 6, SCREECH
	db 9, THUNDER_WAVE
	db 11, SONICBOOM
	db 13, REFLECT
   ;db 17, SPARK
	db 20, SWIFT
   ;db 22, SHOCK_WAVE
	db 26, SELFDESTRUCT
	db 29, AGILITY
	db 36, THUNDERBOLT
	db 43, LIGHT_SCREEN
	db 46, THUNDER
	db 50, EXPLOSION
	db 0

NidokingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 2, LEER
	db 4, PECK
	db 8, HORN_ATTACK
	db 12, DOUBLE_KICK
	db 19, POISON_STING
	db 23, THRASH
   ;db 35, POISON_TAIL
   ;db 47, MEGAHORN
	db 59, HORN_DRILL
	db 0

SlowbroEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 3, GROWL
	db 6, WATER_GUN
	db 9, MEDITATE
	db 12, CONFUSION
	db 15, REST
	db 18, DISABLE
	db 22, HEADBUTT
	db 27, PSYBEAM
   ;db 33, WHIRLPOOL
	db 37, WITHDRAW
	db 44, AMNESIA
	db 47, SPIKE_CANNON
	db 55, PSYCHIC_M
	db 0

IvysaurEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 32, VENUSAUR
	db 0
; Learnset
	db 7, LEECH_SEED
	db 13, VINE_WHIP
	db 22, POISONPOWDER
	db 30, RAZOR_LEAF
	db 38, GROWTH
	db 46, SLEEP_POWDER
	db 54, SOLARBEAM
	db 0

ExeggutorEvosMoves:
; Evolutions
	db 0
; Learnset
	db 28, STOMP
	db 0

LickitungEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, STOMP
	db 15, DISABLE
	db 23, DEFENSE_CURL
	db 31, SLAM
	db 39, SCREECH
	db 0

ExeggcuteEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LEAF_STONE, 1, EXEGGUTOR
	db 0
; Learnset
	db 25, REFLECT
	db 28, LEECH_SEED
	db 32, STUN_SPORE
	db 37, POISONPOWDER
	db 42, SOLARBEAM
	db 48, SLEEP_POWDER
	db 0

GrimerEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 38, MUK
	db 0
; Learnset
	db 30, POISON_GAS
	db 33, MINIMIZE
	db 37, SLUDGE
	db 42, HARDEN
	db 48, SCREECH
	db 55, ACID_ARMOR
	db 0

GengarEvosMoves:
; Evolutions
	db 0
; Learnset
	db 29, HYPNOSIS
	db 38, DREAM_EATER
	db 0

NidoranFEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0
; Learnset
	db 1, TACKLE
	db 2, GROWL
	db 4, TAIL_WHIP
	db 8, SCRATCH
	db 12, DOUBLE_KICK
	db 17, POISON_STING
    db 20, BITE 
   ;db 20, GNAW
	db 24, FURY_SWIPES
   ;db 28, SWEET_KISS 
   ;db 32, POISON_JAB
   ;db 36, EARTH_POWER
	db 40, TOXIC
   ;db 44, POISON_FANG
	db 0

NidoqueenEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 2, GROWL
	db 4, TAIL_WHIP
	db 8, SCRATCH
	db 12, DOUBLE_KICK
	db 19, POISON_STING
	db 23, BODY_SLAM
   ;db 35, POISON_TAIL
   ;db 47, CRUNCH
   ;db 59, POISON_FANG
	db 0

CuboneEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0
; Learnset
	db 10, BONE_CLUB
	db 13, TAIL_WHIP
	db 18, HEADBUTT
	db 25, LEER
	db 31, FOCUS_ENERGY
	db 38, THRASH
	db 43, BONEMERANG
	db 46, RAGE
	db 0

RhyhornEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 42, RHYDON
	db 0
; Learnset
	db 2, TACKLE
	db 5, HORN_ATTACK
	db 9, TAIL_WHIP
	db 13, STOMP
	db 19, FURY_ATTACK
	db 25, ROCK_THROW
	db 31, LEER
   ;db 34, ROCK_BLAST
	db 37, TAKE_DOWN
	db 43, HORN_DRILL
	db 49, ROCK_SLIDE
	db 55, EARTHQUAKE
	db 61, DOUBLE_EDGE
   ;db 64, STONE_EDGE
	db 0

LaprasEvosMoves:
; Evolutions
	db 0
; Learnset
	db 16, SING
	db 20, MIST
	db 25, BODY_SLAM
	db 31, CONFUSE_RAY
	db 38, ICE_BEAM
	db 46, HYDRO_PUMP
	db 0

ArcanineEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MewEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, TRANSFORM
	db 20, MEGA_PUNCH
	db 30, METRONOME
	db 40, PSYCHIC_M
	db 0

GyaradosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, BITE
	db 25, DRAGON_RAGE
	db 32, LEER
	db 41, HYDRO_PUMP
	db 52, HYPER_BEAM
	db 0

ShellderEvosMoves:
; Evolutions
	db EVOLVE_ITEM, WATER_STONE, 1, CLOYSTER
	db 0
; Learnset
	db 2, TACKLE
	db 5, WITHDRAW
	db 8, BUBBLE
	db 12, LEER
	db 16, SUPERSONIC
	db 20, WATER_GUN
   ;db 24, POWDER_SNOW
	db 28, CLAMP
	db 32, AURORA_BEAM
	db 36, ACID_ARMOR
	db 40, ICE_BEAM
	db 44, BARRAGE
	db 48, HYDRO_PUMP
	db 0

TentacoolEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0
; Learnset
	db 1, POISON_STING
	db 4, CONSTRICT
	db 7, BUBBLE
	db 10, SUPERSONIC
	db 13, WATER_GUN
	db 18, ACID 
	db 22, WRAP
	db 27, BUBBLEBEAM
   ;db 30, WHIRLPOOL  
	db 33, BARRIER
   ;db 36, POISON_JAB
	db 40, SCREECH
	db 42, ACID_ARMOR 
   ;db 44, SLUDGE_BOMB
	db 48, HYDRO_PUMP
   ;db 50, SLUDGE_WAVE
	db 0

GastlyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0
; Learnset
	db 27, HYPNOSIS
	db 35, DREAM_EATER
	db 0

ScytherEvosMoves:
; Evolutions
	db 0
; Learnset
	db 2, QUICK_ATTACK
	db 4, SCRATCH
	db 7, LEER
   ;db 11, BUG_BITE
	db 15, WING_ATTACK
   ;db 17, FAINT_ATTACK
	db 20, FOCUS_ENERGY
	db 22, DOUBLE_TEAM
	db 25, CUT
	db 29, SLASH
   ;db 32, AERIAL_ACE
	db 35, SWORDS_DANCE
	db 42, AGILITY
   ;db 47, BUG_BUZZ
   ;db 50, SPIN_SLASH
	db 0

StaryuEvosMoves:
; Evolutions
	db EVOLVE_ITEM, WATER_STONE, 1, STARMIE
	db 0
; Learnset
	db 1, TACKLE
	db 4, WITHDRAW
	db 8, WATER_GUN
	db 12, HARDEN
	db 16, MINIMIZE
	db 20, SWIFT
	db 24, CONFUSE_RAY
	db 28, BUBBLEBEAM
	db 32, LIGHT_SCREEN
	db 36, RECOVER
   ;db 40, ANCIENTPOWER
	db 44, REFLECT
	db 56, HYDRO_PUMP
	db 0

BlastoiseEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, BUBBLE
	db 15, WATER_GUN
	db 24, BITE
	db 31, WITHDRAW
	db 42, SKULL_BASH
	db 52, HYDRO_PUMP
	db 0

PinsirEvosMoves:
; Evolutions
	db 0
; Learnset
	db 21, BIND
	db 25, SEISMIC_TOSS
	db 30, GUILLOTINE
	db 36, FOCUS_ENERGY
	db 43, HARDEN
	db 49, SLASH
	db 54, SWORDS_DANCE
	db 0

TangelaEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, CONSTRICT
	db 6, ABSORB
	db 8, BIND
	db 13, STUN_SPORE
	db 16, POUND
	db 20, VINE_WHIP
	db 24, POISONPOWDER
	db 27, GROWTH
   ;db 29, ANCIENTPOWER
	db 32, MEGA_DRAIN
	db 36, WRAP
   ;db 39, NATURAL_GIFT
	db 45, SLEEP_POWDER
	db 48, SLAM
   ;db 55, GIGA_DRAIN
	db 0

MissingNo1FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo20EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

GrowlitheEvosMoves:
; Evolutions
	db EVOLVE_ITEM, FIRE_STONE, 1, ARCANINE
	db 0
; Learnset
	db 18, EMBER
	db 23, LEER
	db 30, TAKE_DOWN
	db 39, AGILITY
	db 50, FLAMETHROWER
	db 0

OnixEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE 
	db 4, SCREECH
	db 10, BIND
	db 14, HARDEN
	db 19, ROCK_THROW
	db 24, RAGE
	db 28, DIG
	db 32, RAGE
	db 36, SLAM
	db 40, ROCK_SLIDE
	db 44, EARTHQUAKE
   ;db 48, IRON_TAIL
	db 52, DOUBLE_EDGE
	db 0

FearowEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, PECK
	db 4, GROWL
	db 9, LEER
	db 11, FURY_ATTACK 
	db 15, WING_ATTACK
	db 18, FOCUS_ENERGY
   ;db 20, DUALWINGBEAT
   ;db 22, FAINT_ATTACK
	db 25, MIRROR_MOVE
   ;db 27, AERIAL_ACE
	db 34, AGILITY
   ;db 36, DRILL_RUN
	db 41, TAKE_DOWN
	db 43, DRILL_PECK
	db 45, SKY_ATTACK
	db 49, DOUBLE_EDGE
   ;db 55, DIVE_BOMB
	db 0

PidgeyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0
; Learnset
	db 5, SAND_ATTACK
	db 12, QUICK_ATTACK
	db 19, WHIRLWIND
	db 28, WING_ATTACK
	db 36, AGILITY
	db 44, MIRROR_MOVE
	db 0

SlowpokeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 37, SLOWBRO
	db 0
; Learnset
	db 1, TACKLE
	db 3, GROWL
	db 6, WATER_GUN
	db 9, MEDITATE
	db 12, CONFUSION
	db 15, REST
	db 18, DISABLE
	db 22, HEADBUTT
	db 27, PSYBEAM
   ;db 33, WHIRLPOOL
	db 40, AMNESIA
	db 48, PSYCHIC_M
	db 0

KadabraEvosMoves:
; Evolutions
	db EVOLVE_TRADE, 1, ALAKAZAM
	db 0
; Learnset
	db 16, CONFUSION
	db 20, DISABLE
	db 27, PSYBEAM
	db 31, RECOVER
	db 38, PSYCHIC_M
	db 42, REFLECT
	db 0

GravelerEvosMoves:
; Evolutions
	db EVOLVE_TRADE, 1, GOLEM
	db 0
; Learnset
	db 11, DEFENSE_CURL
	db 16, ROCK_THROW
	db 21, SELFDESTRUCT
	db 29, HARDEN
	db 36, EARTHQUAKE
	db 43, EXPLOSION
	db 0

ChanseyEvosMoves:
; Evolutions
	db 0
; Learnset
	db 12, DOUBLESLAP
	db 24, SING
	db 30, GROWL
	db 38, MINIMIZE
	db 44, DEFENSE_CURL
	db 48, LIGHT_SCREEN
	db 54, DOUBLE_EDGE
	db 0

MachokeEvosMoves:
; Evolutions
	db EVOLVE_TRADE, 1, MACHAMP
	db 0
; Learnset
	db 20, LOW_KICK
	db 25, LEER
	db 36, FOCUS_ENERGY
	db 44, SEISMIC_TOSS
	db 52, SUBMISSION
	db 0

MrMimeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, CONFUSION
	db 23, LIGHT_SCREEN
	db 31, DOUBLESLAP
	db 39, MEDITATE
	db 47, SUBSTITUTE
	db 0

HitmonleeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 33, ROLLING_KICK
	db 38, JUMP_KICK
	db 43, FOCUS_ENERGY
	db 48, HI_JUMP_KICK
	db 53, MEGA_KICK
	db 0

HitmonchanEvosMoves:
; Evolutions
	db 0
; Learnset
	db 33, FIRE_PUNCH
	db 38, ICE_PUNCH
	db 43, THUNDERPUNCH
	db 48, MEGA_PUNCH
	db 53, COUNTER
	db 0

ArbokEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, POISON_STING
	db 17, BITE
	db 27, GLARE
	db 36, SCREECH
	db 47, ACID
	db 0

ParasectEvosMoves:
; Evolutions
	db 0
; Learnset
	db 13, STUN_SPORE
	db 20, LEECH_LIFE
	db 30, SPORE
	db 39, SLASH
	db 48, GROWTH
	db 0

PsyduckEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0
; Learnset
	db 1, SCRATCH
	db 3, TAIL_WHIP
	db 6, WATER_GUN
	db 9, DISABLE
	db 12, MEDITATE
	db 15, CONFUSION
	db 18, HEADBUTT
	db 21, SCREECH
	db 24, BUBBLEBEAM
	db 27, PSYBEAM
	db 30, FURY_SWIPES
	db 33, DIZZY_PUNCH
	db 36, SLASH
   ;db 39, CROSS_CHOP
	db 42, PSYCHIC_M
	db 45, AMNESIA
	db 48, HYDRO_PUMP
	db 0

DrowzeeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 26, HYPNO
	db 0
; Learnset
	db 12, DISABLE
	db 17, CONFUSION
	db 24, HEADBUTT
	db 29, POISON_GAS
	db 32, PSYCHIC_M
	db 37, MEDITATE
	db 0

GolemEvosMoves:
; Evolutions
	db 0
; Learnset
	db 11, DEFENSE_CURL
	db 16, ROCK_THROW
	db 21, SELFDESTRUCT
	db 29, HARDEN
	db 36, EARTHQUAKE
	db 43, EXPLOSION
	db 0

MissingNo32EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MagmarEvosMoves:
; Evolutions
	db 0
; Learnset
	db 36, LEER
	db 39, CONFUSE_RAY
	db 43, FIRE_PUNCH
	db 48, SMOKESCREEN
	db 52, SMOG
	db 55, FLAMETHROWER
	db 0

MissingNo34EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

ElectabuzzEvosMoves:
; Evolutions
	db 0
; Learnset
	db 34, THUNDERSHOCK
	db 37, SCREECH
	db 42, THUNDERPUNCH
	db 49, LIGHT_SCREEN
	db 54, THUNDER
	db 0

MagnetonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 21, SONICBOOM
	db 25, THUNDERSHOCK
	db 29, SUPERSONIC
	db 38, THUNDER_WAVE
	db 46, SWIFT
	db 54, SCREECH
	db 0

KoffingEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 35, WEEZING
	db 0
; Learnset
	db 4, TACKLE
	db 8, SMOG
	db 15, SMOKESCREEN
	db 25, SLUDGE
	db 28, HAZE 
	db 32, SELFDESTRUCT
	db 36, TOXIC
   ;db 40, SLUDGE_BOMB
	db 44, EXPLOSION
   ;db 50, SLUDGE_WAVE
	db 0

MissingNo38EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MankeyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0
; Learnset
	db 1, POUND 
	db 2, TAIL_WHIP 
	db 5, SCRATCH
	db 8, LEER
	db 9, LOW_KICK
   ;db 12, FAINT_ATTACK
	db 15, KARATE_CHOP
	db 17, SEISMIC_TOSS
	db 21, FURY_SWIPES
   ;db 22, CROSS_CHOP
	db 25, SLASH
	db 27, FOCUS_ENERGY
	db 33, JUMP_KICK
	db 36, RAGE
	db 39, THRASH
   ;db 40, RAGE_FIST
	db 42, SCREECH
	db 44, MEGA_PUNCH
	db 48, MEGA_KICK
	db 0

SeelEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0
; Learnset
	db 1, HEADBUTT
	db 5, GROWL,
   ;db 9, FIN_SLAP
   ;db 13, POWDER_SNOW
   ;db 17, SIGNAL_BEAM
	db 21, BUBBLEBEAM
   ;db 23, ICY_WIND
	db 27, HORN_ATTACK
	db 31, REST
	db 33, AURORA_BEAM
	db 39, BODY_SLAM
   ;db 41, WHIRLPOOL
	db 45, TAKE_DOWN
	db 51, ICE_BEAM
	db 0

DiglettEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0
; Learnset
	db 15, GROWL
	db 19, DIG
	db 24, SAND_ATTACK
	db 31, SLASH
	db 40, EARTHQUAKE
	db 0

TaurosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 3, TAIL_WHIP
	db 5, LEER
	db 8, HORN_ATTACK
	db 11, HEADBUTT
   ;db 15, TAIL_SLAP
   ;db 19, FAINT_ATTACK
	db 21, STOMP
	db 24, REST
	db 28, TAKE_DOWN
	db 35, RAGE
   ;db 38, EXTREMESPEED
	db 41, THRASH
	db 43, SKULL_BASH
	db 45, EARTHQUAKE
	db 48, MEGA_KICK 
	db 51, DOUBLE_EDGE
	db 55, HORN_DRILL
   ;db 58, HEAD_SMASH
   ;db 63, GIGA_IMPACT
	db 0

MissingNo3DEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo3EEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo3FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

FarfetchdEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, LEER
	db 15, FURY_ATTACK
	db 23, SWORDS_DANCE
	db 31, AGILITY
	db 39, SLASH
	db 0

VenonatEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0
; Learnset
	db 11, SUPERSONIC
	db 19, CONFUSION
	db 22, POISONPOWDER
	db 27, LEECH_LIFE
	db 30, STUN_SPORE
	db 35, PSYBEAM
	db 38, SLEEP_POWDER
	db 43, PSYCHIC_M
	db 0

DragoniteEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, THUNDER_WAVE
	db 20, AGILITY
	db 35, SLAM
	db 45, DRAGON_RAGE
	db 60, HYPER_BEAM
	db 0

MissingNo43EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo44EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo45EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

DoduoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 31, DODRIO
	db 0
; Learnset
	db 20, GROWL
	db 24, FURY_ATTACK
	db 30, DRILL_PECK
	db 36, RAGE
	db 40, TRI_ATTACK
	db 44, AGILITY
	db 0

PoliwagEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0
; Learnset
	db 16, HYPNOSIS
	db 19, WATER_GUN
	db 25, DOUBLESLAP
	db 31, BODY_SLAM
	db 38, AMNESIA
	db 45, HYDRO_PUMP
	db 0

JynxEvosMoves:
; Evolutions
	db 0
; Learnset
	db 18, LICK
	db 23, DOUBLESLAP
	db 31, ICE_PUNCH
	db 39, BODY_SLAM
	db 47, THRASH
	db 58, BLIZZARD
	db 0

MoltresEvosMoves:
; Evolutions
	db 0
; Learnset
	db 51, LEER
	db 55, AGILITY
	db 60, SKY_ATTACK
	db 0

ArticunoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 51, BLIZZARD
	db 55, AGILITY
	db 60, MIST
	db 0

ZapdosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 51, THUNDER
	db 55, AGILITY
	db 60, LIGHT_SCREEN
	db 0

DittoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MeowthEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0
; Learnset
	db 1, SCRATCH
	db 4, GROWL
   ;db 8, GNAW
	db 12, LICK
   ;db 15, COPYCAT
	db 20, PAY_DAY
	db 25, BITE
	db 28, MIMIC
   ;db 29, FAINT_ATTACK	
	db 32, SCREECH
	db 36, FURY_SWIPES
	db 40, SLASH
   ;db 44, MAKE_IT_RAIN
	db 0

KrabbyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, KINGLER
	db 0
; Learnset
	db 20, VICEGRIP
	db 25, GUILLOTINE
	db 30, STOMP
	db 35, CRABHAMMER
	db 40, HARDEN
	db 0

MissingNo4FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo50EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo51EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

VulpixEvosMoves:
; Evolutions
	db EVOLVE_ITEM, FIRE_STONE, 1, NINETALES
	db 0
; Learnset
	db 1, TACKLE
   ;db 2, KINDLE
	db 5, TAIL_WHIP 
   ;db 7, HOWL
	db 12, EMBER
	db 16, DISABLE
	db 20, QUICK_ATTACK
	db 24, ROAR
	db 28, CONFUSE_RAY
	db 35, FLAMETHROWER
	db 42, FIRE_SPIN
	db 54, FIRE_BLAST
	db 0

NinetalesEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
   ;db 2, KINDLE
	db 5, TAIL_WHIP 
   ;db 7, HOWL
	db 12, EMBER
	db 16, DISABLE
	db 20, QUICK_ATTACK
	db 24, ROAR
	db 28, CONFUSE_RAY
	db 35, NIGHT_SHADE
  /*db 42, MYSTICAL_FIRE
	db 54, SHADOW_BALL
	db 63, SACRED_FIRE*/
	db 0

PikachuEvosMoves:
; Evolutions
	db EVOLVE_ITEM, THUNDER_STONE, 1, RAICHU
	db 0
; Learnset
	db 1, THUNDERSHOCK
	db 4, GROWL
	db 6, TAIL_WHIP
	db 8, THUNDER_WAVE
	db 11, QUICK_ATTACK
	db 13, DOUBLE_TEAM
	db 15, SWIFT
   ;db 20, SPARK
	db 23, SLAM
	db 26, THUNDERBOLT
   ;db 28, IRON_TAIL
   ;db 31, ZIPPY_ZAP
    db 33, AGILITY
	db 41, THUNDER
	db 50, LIGHT_SCREEN
   ;db 58, PIKA_PAPOW
	db 0

RaichuEvosMoves:
; Evolutions
   ;db EVOLVE_ITEM, THUNDER_STONE, 1, GOROCHU
	db 0
; Learnset
    db 1, THUNDERSHOCK
	db 4, GROWL
	db 6, TAIL_WHIP
	db 8, THUNDER_WAVE
	db 11, QUICK_ATTACK
	db 13, DOUBLE_TEAM
	db 15, SWIFT
   ;db 20, SPARK
	db 23, THUNDERPUNCH	
	db 26, THUNDERBOLT
	db 28, REFLECT
	db 31, MEGA_PUNCH
	db 33, AGILITY
	db 41, MEGA_KICK
	db 50, LIGHT_SCREEN
	db 58, THUNDER

MissingNo56EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo57EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

DratiniEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0
; Learnset
	db 10, THUNDER_WAVE
	db 20, AGILITY
	db 30, SLAM
	db 40, DRAGON_RAGE
	db 50, HYPER_BEAM
	db 0

DragonairEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0
; Learnset
	db 10, THUNDER_WAVE
	db 20, AGILITY
	db 35, SLAM
	db 45, DRAGON_RAGE
	db 55, HYPER_BEAM
	db 0

KabutoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0
; Learnset
	db 1, SCRATCH
	db 2, WITHDRAW
	db 4, ABSORB
	db 6, BIDE
	db 9, SAND_ATTACK
	db 11, HARDEN
	db 15, WATER_GUN
	db 20, LEER
	db 25, DEFENSE_CURL
   ;db 30, ANCIENTPOWER
	db 35, MEGA_DRAIN
	db 40, SLASH
	db 45, LEECH_LIFE
	db 50, CLAMP
	db 55, HYDRO_PUMP
	db 0

KabutopsEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SCRATCH
   ;db 2, METAL_CLAW
	db 4, ABSORB
	db 6, BIDE
	db 9, SAND_ATTACK
	db 11, HARDEN
	db 15, WATER_GUN
	db 20, LEER
	db 25, FURY_SWIPES
   ;db 30, ANCIENTPOWER
	db 35, MEGA_DRAIN
	db 40, WATERFALL
	db 49, LEECH_LIFE
	db 50, SLASH
	db 56, HYDRO_PUMP
	db 65, GUILLOTINE
	db 0

HorseaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 32, SEADRA
	db 0
; Learnset
	db 1, BUBBLE
	db 5, SMOKESCREEN
	db 9, LEER
   ;db 15, FIN_SLAP
	db 19, WATER_GUN
	db 24, BUBBLEBEAM
   ;db 27, OCTAZOOKA
	db 32, AGILITY
	db 37, SLUDGE
	db 45, HYDRO_PUMP
	db 0

SeadraEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, BUBBLE
	db 5, SMOKESCREEN
	db 9, LEER
   ;db 15, FIN_SLAP
	db 19, WATER_GUN
	db 24, BUBBLEBEAM
   ;db 27, OCTAZOOKA
	db 32, POISON_STING
	db 37, AGILITY
	db 41, SLUDGE
	db 45, DRAGON_RAGE
	db 52, HYDRO_PUMP
	db 57, HYPER_BEAM
	db 0

MissingNo5EEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo5FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

SandshrewEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0
; Learnset
	db 1, SCRATCH
	db 3, DEFENSE_CURL
	db 5, POISON_STING
	db 10, SAND_ATTACK
   ;db 15, METAL_CLAW
	db 19, SLASH
	db 24, SWIFT
	db 27, AGILITY
	db 31, DIG
	db 38, FURY_SWIPES
	db 42, SWORDS_DANCE
	db 45, EARTHQUAKE
	db 0

SandslashEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SCRATCH
	db 3, DEFENSE_CURL
	db 5, POISON_STING
	db 10, SAND_ATTACK
   ;db 15, METAL_CLAW
	db 19, SLASH
	db 22, PIN_MISSILE
	db 26, SWIFT
	db 31, AGILITY
	db 36, DIG
	db 41, FURY_SWIPES
	db 46, SWORDS_DANCE
	db 51, EARTHQUAKE
	db 0

OmanyteEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0
; Learnset
	db 1, CONSTRICT
	db 2, WITHDRAW
	db 4, BIND
	db 6, BIDE
	db 9, SAND_ATTACK
	db 11, HARDEN
	db 15, WATER_GUN
	db 20, LEER
   ;db 23, ROCK_BLAST
	db 25, DEFENSE_CURL
   ;db 30, ANCIENTPOWER
	db 35, HORN_ATTACK
	db 40, BUBBLEBEAM
	db 45, BITE
	db 50, WRAP
	db 55, HYDRO_PUMP
	db 0

OmastarEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, CONSTRICT
	db 2, WITHDRAW
	db 4, BIND
	db 6, BIDE
	db 9, SAND_ATTACK
	db 11, HARDEN
	db 15, WATER_GUN
	db 20, LEER
   ;db 23, ROCK_BLAST
	db 25, DEFENSE_CURL
   ;db 30, ANCIENTPOWER
	db 35, HORN_ATTACK
	db 40, PIN_MISSILE
	db 45, SPIKE_CANNON
	db 50, BUBBLEBEAM
	db 55, BITE
	db 60, HYDRO_PUMP
	db 65, HORN_DRILL
	db 0

JigglypuffEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, WIGGLYTUFF
	db 0
; Learnset
	db 9, POUND
	db 14, DISABLE
	db 19, DEFENSE_CURL
	db 24, DOUBLESLAP
	db 29, REST
	db 34, BODY_SLAM
	db 39, DOUBLE_EDGE
	db 0

WigglytuffEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

EeveeEvosMoves:
; Evolutions
	db EVOLVE_ITEM, FIRE_STONE, 1, FLAREON
	db EVOLVE_ITEM, THUNDER_STONE, 1, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, 1, VAPOREON
	db 0
; Learnset
	db 8, SAND_ATTACK
	db 16, GROWL
	db 23, QUICK_ATTACK
	db 30, BITE
	db 36, FOCUS_ENERGY
	db 42, TAKE_DOWN
	db 0

FlareonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, SAND_ATTACK
	db 16, EMBER
	db 23, QUICK_ATTACK
	db 30, BITE
	db 36, FIRE_SPIN
	db 42, SMOG
	db 47, LEER
	db 52, FLAMETHROWER
	db 0

JolteonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, SAND_ATTACK
	db 16, THUNDERSHOCK
	db 23, QUICK_ATTACK
	db 30, DOUBLE_KICK
	db 36, PIN_MISSILE
	db 42, THUNDER_WAVE
	db 47, AGILITY
	db 52, THUNDER
	db 0

VaporeonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, SAND_ATTACK
	db 16, WATER_GUN
	db 23, QUICK_ATTACK
	db 30, BITE
	db 36, AURORA_BEAM
	db 42, HAZE
	db 42, MIST
	db 47, ACID_ARMOR
	db 52, HYDRO_PUMP
	db 0

MachopEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, MACHOKE
	db 0
; Learnset
	db 20, LOW_KICK
	db 25, LEER
	db 32, FOCUS_ENERGY
	db 39, SEISMIC_TOSS
	db 46, SUBMISSION
	db 0

ZubatEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0
; Learnset
	db 1, ABSORB
   ;db 3, GNAW
	db 5, SUPERSONIC
	db 9, GUST
	db 13, BITE
   ;db 17, POISON_FANG
	db 20, QUICK_ATTACK
	db 22, SUPER_FANG
	db 23, SWIFT
	db 26, CONFUSE_RAY
	db 30, WING_ATTACK
	db 34, LEECH_LIFE
	db 38, SCREECH
	db 42, MEGA_DRAIN
	db 46, HYPER_FANG
   ;db 50, CRUNCH
	db 54, HAZE
   ;db 60, GIGA_DRAIN
	db 0

EkansEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, ARBOK
	db 0
; Learnset
	db 10, POISON_STING
	db 17, BITE
	db 24, GLARE
	db 31, SCREECH
	db 38, ACID
	db 0

ParasEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 24, PARASECT
	db 0
; Learnset
	db 13, STUN_SPORE
	db 20, LEECH_LIFE
	db 27, SPORE
	db 34, SLASH
	db 41, GROWTH
	db 0

PoliwhirlEvosMoves:
; Evolutions
	db EVOLVE_ITEM, WATER_STONE, 1, POLIWRATH
	db 0
; Learnset
	db 16, HYPNOSIS
	db 19, WATER_GUN
	db 26, DOUBLESLAP
	db 33, BODY_SLAM
	db 41, AMNESIA
	db 49, HYDRO_PUMP
	db 0

PoliwrathEvosMoves:
; Evolutions
	db 0
; Learnset
	db 16, HYPNOSIS
	db 19, WATER_GUN
	db 0

WeedleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0
; Learnset
    db 1, POISON_STING
	db 2, STRING_SHOT
	db 9, HORN_ATTACK
	db 0

KakunaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 1, HARDEN
	db 7, HARDEN
	db 8, HARDEN
	db 9, HARDEN
	db 10, HARDEN
	db 0
; Learnset
	db 0

BeedrillEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, HORN_ATTACK
	db 2, POISON_STING
	db 10, FURY_ATTACK
	db 14, FOCUS_ENERGY
	db 17, TWINEEDLE
   ;db 20, POISON_TAIL
   ;db 23, FAINT_ATTACK
	db 26, DOUBLE_TEAM
   ;db 29, DRILL_RUN
	db 32, RAGE
	db 35, PIN_MISSILE
   ;db 38, AERIAL_ACE
   ;db 41, POISON_JAB
	db 44, AGILITY
   ;db 47, BUG_BUZZ
   ;db 50, HYPER_DRILL
	db 0

MissingNo73EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

DodrioEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, GROWL
	db 24, FURY_ATTACK
	db 30, DRILL_PECK
	db 39, RAGE
	db 45, TRI_ATTACK
	db 51, AGILITY
	db 0

PrimeapeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, POUND 
	db 5, SCRATCH
	db 8, LEER
	db 9, LOW_KICK
   ;db 12, FAINT_ATTACK
	db 15, KARATE_CHOP
	db 17, SEISMIC_TOSS
	db 21, FURY_SWIPES
   ;db 22, CROSS_CHOP
	db 25, SLASH
	db 27, FOCUS_ENERGY
	db 30, ROLLING_KICK
	db 35, JUMP_KICK
	db 39, RAGE
	db 40, THRASH
   ;db 44, RAGE_FIST
	db 48, SCREECH
	db 53, MEGA_PUNCH
	db 57, MEGA_KICK
	db 0

DugtrioEvosMoves:
; Evolutions
	db 0
; Learnset
	db 15, GROWL
	db 19, DIG
	db 24, SAND_ATTACK
	db 35, SLASH
	db 47, EARTHQUAKE
	db 0

VenomothEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 3, DISABLE
	db 5, POISON_STING
	db 7, SUPERSONIC
	db 9, LEECH_LIFE
	db 11, CONFUSION
   ;db 13, GNAW  
	db 15, POISONPOWDER
	db 17, ABSORB
   ;db 19, BUG_BITE
	db 21, STUN_SPORE
   ;db 23, POISON_FANG
	db 25, MEGA_DRAIN
    db 27, PSYBEAM
    db 29, SLEEP_POWDER
	db 31, GUST
	db 33, SCREECH
   ;db 35, SIGNAL_BEAM	
	db 37, AGILITY
	db 39, TOXIC
   ;db 41, GIGA_DRAIN
	db 43, LEECH_LIFE
  /*db 45, SLUDGE_BOMB
	db 47, BUG_BUZZ*/
    db 50, PSYCHIC_M
	db 0

DewgongEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, HEADBUTT
   ;db 3, TAIL_SLAP
	db 5, GROWL,
   ;db 9, FIN_SLAP
   ;db 13, POWDER_SNOW
   ;db 17, SIGNAL_BEAM
	db 21, BUBBLEBEAM
   ;db 23, ICY_WIND
	db 27, HORN_ATTACK
	db 31, REST
	db 33, AURORA_BEAM
	db 41, BODY_SLAM
   ;db 44, WHIRLPOOL
	db 49, TAKE_DOWN
	db 55, ICE_BEAM
   ;db 61, ALURINGVOICE
	db 65, BLIZZARD
	db 0

MissingNo79EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo7AEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

CaterpieEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 7, METAPOD
	db 0
; Learnset
    db 1, TACKLE
	db 2, STRING_SHOT
	db 9, STRUGGLE
	db 0

MetapodEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0
; Learnset
	db 1, HARDEN
	db 7, HARDEN
	db 8, HARDEN
	db 9, HARDEN
	db 10, HARDEN
	db 0

ButterfreeEvosMoves:
; Evolutions
	db 0
; Learnset
   ;db 1, BUG_BITE
	db 10, CONFUSION
	db 11, POISONPOWDER
	db 12, SUPERSONIC
	db 13, STUN_SPORE
	db 14, WHIRLWIND
	db 15, SLEEP_POWDER
	db 18, GUST
   ;db 20, SWEET_KISS
	db 23, LOVELY_KISS
   ;db 28, DRAINING_KISS
	db 34, PSYBEAM
   ;db 36, NATURAL_GIFT
	db 40, LEECH_LIFE
   ;db 44, MIRROR_COAT
   ;db 48, BUG_BUZZ
	db 0

MachampEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, LOW_KICK
	db 25, LEER
	db 36, FOCUS_ENERGY
	db 44, SEISMIC_TOSS
	db 52, SUBMISSION
	db 0

MissingNo7FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

GolduckEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SCRATCH
	db 3, TAIL_WHIP
	db 6, WATER_GUN
	db 9, DISABLE
	db 12, MEDITATE
	db 15, CONFUSION
	db 18, HEADBUTT
	db 21, SCREECH
	db 24, BUBBLEBEAM
	db 27, PSYBEAM
	db 30, FURY_SWIPES
	db 33, DIZZY_PUNCH
   ;db 36, PSY-KICK
   ;db 39, CROSS_CHOP
	db 42, SLASH
	db 45, PSYCHIC_M
	db 48, AMNESIA
	db 51, HYDRO_PUMP
	db 0

HypnoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 12, DISABLE
	db 17, CONFUSION
	db 24, HEADBUTT
	db 33, POISON_GAS
	db 37, PSYCHIC_M
	db 43, MEDITATE
	db 0

GolbatEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, ABSORB
   ;db 3, GNAW
	db 5, SUPERSONIC
	db 9, GUST
	db 13, BITE
   ;db 17, POISON_FANG
	db 20, QUICK_ATTACK
	db 22, HYPER_FANG
	db 25, SWIFT
	db 27, CONFUSE_RAY
	db 32, WING_ATTACK
	db 37, LEECH_LIFE
	db 42, SCREECH
	db 47, MEGA_DRAIN
	db 52, SUPER_FANG
   ;db 57, CRUNCH
	db 62, HAZE
   ;db 67, GIGA_DRAIN
	db 0

MewtwoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 63, BARRIER
	db 66, PSYCHIC_M
	db 70, RECOVER
	db 75, MIST
	db 81, AMNESIA
	db 0

SnorlaxEvosMoves:
; Evolutions
	db 0
; Learnset
	db 35, BODY_SLAM
	db 41, HARDEN
	db 48, DOUBLE_EDGE
	db 56, HYPER_BEAM
	db 0

MagikarpEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0
; Learnset
	db 15, TACKLE
	db 0

MissingNo86EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo87EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MukEvosMoves:
; Evolutions
	db 0
; Learnset
	db 30, POISON_GAS
	db 33, MINIMIZE
	db 37, SLUDGE
	db 45, HARDEN
	db 53, SCREECH
	db 60, ACID_ARMOR
	db 0

MissingNo8AEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

KinglerEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, VICEGRIP
	db 25, GUILLOTINE
	db 34, STOMP
	db 42, CRABHAMMER
	db 49, HARDEN
	db 0

CloysterEvosMoves:
; Evolutions
	db 0
; Learnset
	db 2, TACKLE
	db 5, WITHDRAW
	db 8, BUBBLE
	db 12, LEER
	db 16, SUPERSONIC
	db 20, WATER_GUN
	db 24, MIST
	db 28, CLAMP
	db 32, WATERFALL
	db 36, FURY_ATTACK
	db 40, ICE_BEAM
	db 44, PIN_MISSILE
	db 48, BLIZZARD
	db 50, SPIKE_CANNON
	db 0

MissingNo8CEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

ElectrodeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 4, THUNDERSHOCK
	db 6, SCREECH
	db 9, THUNDER_WAVE
	db 11, SONICBOOM
	db 13, REFLECT
   ;db 17, SPARK
	db 20, SWIFT
   ;db 22, SHOCK_WAVE
	db 26, SELFDESTRUCT
	db 29, AGILITY
	db 41, THUNDERBOLT
	db 47, LIGHT_SCREEN
	db 54, THUNDER
	db 58, EXPLOSION
	db 0

ClefableEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

WeezingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 4, TACKLE
	db 8, SMOG
	db 15, SMOKESCREEN
	db 25, SLUDGE
	db 28, HAZE 
	db 32, SELFDESTRUCT
	db 35, TOXIC
   ;db 43, SLUDGE_BOMB
	db 49, EXPLOSION
   ;db 56, SLUDGE_WAVE
	db 0

PersianEvosMoves:
; Evolutions
	db 0
; Learnset
	db 12, BITE
	db 17, PAY_DAY
	db 24, SCREECH
	db 37, FURY_SWIPES
	db 51, SLASH
	db 0

MarowakEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, BONE_CLUB
	db 13, TAIL_WHIP
	db 18, HEADBUTT
	db 25, LEER
	db 33, FOCUS_ENERGY
	db 41, THRASH
	db 48, BONEMERANG
	db 55, RAGE
	db 0

MissingNo92EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

HaunterEvosMoves:
; Evolutions
	db EVOLVE_TRADE, 1, GENGAR
	db 0
; Learnset
	db 29, HYPNOSIS
	db 38, DREAM_EATER
	db 0

AbraEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, KADABRA
	db 0
; Learnset
	db 0

AlakazamEvosMoves:
; Evolutions
	db 0
; Learnset
	db 16, CONFUSION
	db 20, DISABLE
	db 27, PSYBEAM
	db 31, RECOVER
	db 38, PSYCHIC_M
	db 42, REFLECT
	db 0

PidgeottoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0
; Learnset
	db 5, SAND_ATTACK
	db 12, QUICK_ATTACK
	db 21, WHIRLWIND
	db 31, WING_ATTACK
	db 40, AGILITY
	db 49, MIRROR_MOVE
	db 0

PidgeotEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, SAND_ATTACK
	db 12, QUICK_ATTACK
	db 21, WHIRLWIND
	db 31, WING_ATTACK
	db 44, AGILITY
	db 54, MIRROR_MOVE
	db 0

StarmieEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 4, WITHDRAW
	db 8, CONFUSION
	db 12, HARDEN
	db 16, MINIMIZE
	db 20, SWIFT
	db 24, CONFUSE_RAY
	db 28, PSYBEAM
	db 32, BUBBLEBEAM
	db 36, RECOVER
   ;db 40, ANCIENTPOWER
	db 44, PSYCHIC_M
	db 48, GROWTH
	db 52, LIGHT_SCREEN
	db 56, HYDRO_PUMP

BulbasaurEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, IVYSAUR
	db 0
; Learnset
	db 7, LEECH_SEED
	db 13, VINE_WHIP
	db 20, POISONPOWDER
	db 27, RAZOR_LEAF
	db 34, GROWTH
	db 41, SLEEP_POWDER
	db 48, SOLARBEAM
	db 0

VenusaurEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, LEECH_SEED
	db 13, VINE_WHIP
	db 22, POISONPOWDER
	db 30, RAZOR_LEAF
	db 43, GROWTH
	db 55, SLEEP_POWDER
	db 65, SOLARBEAM
	db 0

TentacruelEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, POISON_STING
	db 4, CONSTRICT
	db 7, BUBBLE
	db 10, SUPERSONIC
	db 13, WATER_GUN
	db 18, ACID 
	db 22, WRAP
	db 27, BUBBLEBEAM
   ;db 30, SPIN_SLASH
   ;db 33, WHIRLPOOL  
	db 35, BARRIER
   ;db 39, POISON_JAB
	db 41, SURF
	db 43, SCREECH
	db 45, ACID_ARMOR
   ;db 47, SLUDGE_BOMB
	db 50, HYDRO_PUMP
   ;db 55, SLUDGE_WAVE
	db 0

MissingNo9CEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

GoldeenEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 33, SEAKING
	db 0
; Learnset
	db 1, SPLASH
	db 5, PECK
   ;db 9, FIN_SLAP
    db 11, TAIL_WHIP
	db 15, HORN_ATTACK
	db 19, SUPERSONIC
	db 24, FURY_ATTACK
	db 30, AGILITY
   ;db 33, DRILL_RUN
	db 37, WATERFALL
	db 40, DRILL_PECK
	db 45, HORN_DRILL
	db 0

SeakingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, SPLASH
	db 5, PECK
	db 9, TAIL_WHIP
   ;db 11, FIN_SLAP
	db 15, HORN_ATTACK
	db 19, SUPERSONIC
	db 24, FURY_ATTACK
	db 30, AGILITY
   ;db 37, DRILL_RUN
	db 40, WATERFALL
	db 45, DRILL_PECK
	db 51, HORN_DRILL
	db 0

MissingNo9FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNoA0EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNoA1EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNoA2EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

PonytaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0
; Learnset
	db 1, TACKLE
	db 2, GROWL
   ;db 4, KINDLE
	db 5, TAIL_WHIP 
	db 9, QUICK_ATTACK
	db 13, EMBER
	db 17, DOUBLE_KICK
	db 21, STOMP
	db 25, AGILITY
	db 30, TAKE_DOWN
   ;db 32, HIHORSEPOWER
   ;db 35, WILD_CHARGE
   ;db 37, BLAZE_KICK
	db 40, FIRE_SPIN
   ;db 43, BOUNCE
	db 48, MEGA_KICK
	db 50, DOUBLE_EDGE
	db 55, FIRE_BLAST
	db 0

RapidashEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 2, GROWL
   ;db 4, KINDLE
	db 5, TAIL_WHIP 
	db 7, PECK
	db 9, QUICK_ATTACK
	db 13, EMBER
	db 15, HORN_ATTACK
	db 17, DOUBLE_KICK
	db 21, STOMP
	db 25, AGILITY
	db 28, FURY_ATTACK
	db 30, TAKE_DOWN
   ;db 32, HIHORSEPOWER
   ;db 35, WILD_CHARGE
   ;db 37, BLAZE_KICK
   ;db 40, POISON_JAB
	db 43, FIRE_SPIN
   ;db 45, DRILL_RUN
   ;db 47, BOUNCE
	db 50, JUMP_KICK
	db 55, MEGA_KICK
   ;db 59, MEGAHORN
	db 62, DOUBLE_EDGE
	db 66, HORN_DRILL
	db 70, FIRE_BLAST
	db 0

RattataEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, RATICATE
	db 0
; Learnset
	db 7, QUICK_ATTACK
	db 14, HYPER_FANG
	db 23, FOCUS_ENERGY
	db 34, SUPER_FANG
	db 0

RaticateEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, QUICK_ATTACK
	db 14, HYPER_FANG
	db 27, FOCUS_ENERGY
	db 41, SUPER_FANG
	db 0

NidorinoEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, NIDOKING
	db 0
; Learnset
	db 1, TACKLE
	db 2, LEER
	db 4, PECK
	db 8, HORN_ATTACK
	db 12, DOUBLE_KICK
	db 19, POISON_STING
	db 22, FOCUS_ENERGY
	db 27, FURY_ATTACK
	db 31, TAKE_DOWN
   ;db 35, POISON_JAB
   ;db 39, EARTH_POWER
	db 43, TOXIC
	db 47, HORN_DRILL
	db 0

NidorinaEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, NIDOQUEEN
	db 0
; Learnset
	db 1, TACKLE
	db 2, GROWL
	db 4, TAIL_WHIP
	db 8, SCRATCH
	db 12, DOUBLE_KICK
	db 19, POISON_STING
	db 22, BITE
	db 27, FURY_SWIPES
   ;db 31, SWEET_KISS 
   ;db 35, POISON_JAB
   ;db 39, EARTH_POWER
	db 43, TOXIC
   ;db 47, POISON_FANG
	db 0

GeodudeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0
; Learnset
	db 1, TACKLE
	db 6, DEFENSE_CURL
	db 11, ROCK_THROW
	db 16, HARDEN
	db 21, SELFDESTRUCT
	db 26, ROCK_SLIDE
	db 31, EARTHQUAKE
	db 36, EXPLOSION
	db 41, DOUBLE_EDGE
	db 0

PorygonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 23, PSYBEAM
	db 28, RECOVER
	db 35, AGILITY
	db 42, TRI_ATTACK
	db 0

AerodactylEvosMoves:
; Evolutions
	db 0
; Learnset
	db 33, SUPERSONIC
	db 38, BITE
	db 45, TAKE_DOWN
	db 54, HYPER_BEAM
	db 0

MissingNoACEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MagnemiteEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0
; Learnset
	db 21, SONICBOOM
	db 25, THUNDERSHOCK
	db 29, SUPERSONIC
	db 35, THUNDER_WAVE
	db 41, SWIFT
	db 47, SCREECH
	db 0

MissingNoAEEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNoAFEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

CharmanderEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0
; Learnset
	db 9, EMBER
	db 15, LEER
	db 22, RAGE
	db 30, SLASH
	db 38, FLAMETHROWER
	db 46, FIRE_SPIN
	db 0

SquirtleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0
; Learnset
	db 8, BUBBLE
	db 15, WATER_GUN
	db 22, BITE
	db 28, WITHDRAW
	db 35, SKULL_BASH
	db 42, HYDRO_PUMP
	db 0

CharmeleonEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0
; Learnset
	db 9, EMBER
	db 15, LEER
	db 24, RAGE
	db 33, SLASH
	db 42, FLAMETHROWER
	db 56, FIRE_SPIN
	db 0

WartortleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0
; Learnset
	db 8, BUBBLE
	db 15, WATER_GUN
	db 24, BITE
	db 31, WITHDRAW
	db 39, SKULL_BASH
	db 47, HYDRO_PUMP
	db 0

CharizardEvosMoves:
; Evolutions
	db 0
; Learnset
	db 9, EMBER
	db 15, LEER
	db 24, RAGE
	db 36, SLASH
	db 46, FLAMETHROWER
	db 55, FIRE_SPIN
	db 0

MissingNoB5EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

FossilKabutopsEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

FossilAerodactylEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MonGhostEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

OddishEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 21, GLOOM
	db 0
; Learnset
	db 1, TACKLE
	db 4, ABSORB
	db 8, POISONPOWDER
	db 12, STUN_SPORE 
	db 16, SLEEP_POWDER   
	db 20, ACID
	db 24, RAZOR_LEAF
   ;db 28, NATURAL_GIFT
	db 32, MEGA_DRAIN
   ;db 36, BOUNCE        ; This is a reference to Mariah's Oddish, from the anime, who wants to float around like Hoppip.
	db 40, PETAL_DANCE
   ;db 44, GIGA_DRAIN 
	db 48, SOLARBEAM
	db 0

GloomEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LEAF_STONE, 1, VILEPLUME
	db 0
; Learnset
	db 1, TACKLE
	db 4, ABSORB
	db 8, POISONPOWDER
	db 12, STUN_SPORE 
	db 16, SLEEP_POWDER 
	db 20, ACID
	db 22, GROWTH
	db 26, RAZOR_LEAF
   ;db 32, NATURAL_GIFT
	db 38, MEGA_DRAIN
	db 44, PETAL_DANCE
   ;db 50, GIGA_DRAIN
	db 56, SOLARBEAM
	db 0

VileplumeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 1, TACKLE
	db 4, ABSORB
	db 8, POISONPOWDER
	db 12, STUN_SPORE 
	db 16, SLEEP_POWDER 
	db 20, ACID
	db 25, DOUBLESLAP
	db 30, LEECH_SEED 
	db 35, ACID_ARMOR
	db 40, MEGA_DRAIN
   ;db 45, SLUDGE_BOMB
	db 50, PETAL_DANCE
   ;db 55, GIGA_DRAIN
	db 60, SOLARBEAM
	db 0

BellsproutEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0
; Learnset
	db 2, VINE_WHIP
	db 7, GROWTH 
	db 13, WRAP
	db 15, POISONPOWDER
	db 18, STUN_SPORE
	db 21, SLEEP_POWDER
	db 26, ACID
	db 33, RAZOR_LEAF
   ;db 39, POISON_JAB
	db 42, SLAM
   ;db 45, SLUDGE_BOMB
	db 0

WeepinbellEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LEAF_STONE, 1, VICTREEBEL
	db 0
; Learnset
	db 2, VINE_WHIP
	db 7, GROWTH 
	db 13, WRAP
	db 15, POISONPOWDER
	db 18, STUN_SPORE
	db 23, SLEEP_POWDER
	db 29, ACID
	db 32, RAZOR_LEAF
   ;db 44, POISON_JAB
	db 47, SLAM
   ;db 50, SLUDGE_BOMB
	db 0

VictreebelEvosMoves:
; Evolutions
	db 0
; Learnset
	db 2, VINE_WHIP
	db 7, GROWTH 
	db 13, WRAP
	db 15, POISONPOWDER
	db 18, STUN_SPORE
	db 23, SLEEP_POWDER
	db 29, BITE
   ;db 32, POISON_FANG
	db 44, MEGA_DRAIN
   ;db 47, CRUNCH
   ;db 50, GIGA_DRAIN
	db 0
