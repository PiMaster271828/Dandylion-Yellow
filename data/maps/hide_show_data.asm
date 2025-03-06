; default hidden/shown objects for each map

MapHSPointers:
; entries correspond to map ids.  See constants/map_constants.asm
	table_width 2
	dw PalletTownHS                 ; 00 - Pallet Town
	dw ViridianCityHS               ; 01 - Viridian City
	dw PewterCityHS                 ; 02 - Pewter City
	dw CeruleanCityHS               ; 03 - Cerulean City
	dw NoHS                         ; 04 - Lavender Town
	dw NoHS                         ; 05 - Vermilion City
	dw NoHS                         ; 06 - Celadon City
	dw NoHS                         ; 07 - Fuchsia City
	dw NoHS                         ; 08 - Cinnabar Island
	dw NoHS                         ; 09 - Indigo Plateau
	dw SaffronCityHS                ; 0A - Saffron City
	dw NoHS                         ; 0B - **Unused**
	dw NoHS                         ; 0C - Route 1
	dw Route2HS                     ; 0D - Route 2
	dw NoHS                         ; 0E - Route 3
	dw Route4HS                     ; 0F - Route 4
	dw NoHS                         ; 10 - Route 5
	dw NoHS                         ; 11 - Route 6
	dw NoHS                         ; 12 - Route 7
	dw NoHS                         ; 13 - Route 8
	dw Route9HS                     ; 14 - Route 9
	dw NoHS                         ; 15 - Route 10
	dw NoHS                         ; 16 - Route 11
	dw Route12HS                    ; 17 - Route 12
	dw NoHS                         ; 18 - Route 13
	dw NoHS                         ; 19 - Route 14
	dw Route15HS                    ; 1A - Route 15
	dw Route16HS                    ; 1B - Route 16
	dw NoHS                         ; 1C - Route 17
	dw NoHS                         ; 1D - Route 18
	dw NoHS                         ; 1E - Route 19
	dw NoHS                         ; 1F - Route 20
	dw NoHS                         ; 20 - Route 21
	dw Route22HS                    ; 21 - Route 22
	dw NoHS                         ; 22 - Route 23
	dw Route24HS                    ; 23 - Route 24
	dw Route25HS                    ; 24 - Route 25
	dw NoHS                         ; 25 - Reds House 1F
	dw NoHS                         ; 26 - Reds House 2F
	dw BluesHouseHS                 ; 27 - Blues House
	dw OaksLabHS                    ; 28 - Oaks Lab
	dw ViridianPokecenterHS         ; 29 - Viridian Pokecenter
	dw NoHS                         ; 2A - Viridian Mart
	dw NoHS                         ; 2B - Viridian School House
	dw NoHS                         ; 2C - Viridian Nickname House
	dw ViridianGymHS                ; 2D - Viridian Gym
	dw NoHS                         ; 2E - Digletts Cave (Route 2)
	dw NoHS                         ; 2F - Viridian Forest North Gate
	dw NoHS                         ; 30 - Route 2 Trade House
	dw NoHS                         ; 31 - Route 2 Gate
	dw NoHS                         ; 32 - Viridian Forest South Gate
	dw ViridianForestHS             ; 33 - Viridian Forest
	dw Museum1FHS                   ; 34 - Museum 1F
	dw NoHS                         ; 35 - Museum 2F
	dw NoHS                         ; 36 - Pewter Gym
	dw NoHS                         ; 37 - Pewter Nidoran House
	dw NoHS                         ; 38 - Pewter Mart
	dw NoHS                         ; 39 - Pewter Speech House
	dw NoHS                         ; 3A - Pewter Pokecenter
	dw MtMoon1FHS                   ; 3B - Mt. Moon 1F
	dw NoHS                         ; 3C - Mt. Moon B1F
	dw MtMoonB2FHS                  ; 3D - Mt. Moon B2F
	dw NoHS                         ; 3E - Cerulean Trashed House
	dw CeruleanMelaniesHouseHS      ; 3F - Cerulean Melanies House
	dw NoHS                         ; 40 - Cerulean Pokecenter
	dw NoHS	                        ; 41 - Cerulean Gym
	dw NoHS                         ; 42 - Bike Shop
	dw NoHS                         ; 43 - Cerulean Mart
	dw NoHS                         ; 44 - Mt. Moon Pokecenter
	dw NoHS                         ; 45 - Cerulean Trashed House (Copy)
	dw NoHS                         ; 46 - Route 5 Gate
	dw NoHS                         ; 47 - Underground Path (Route 5)
	dw NoHS                         ; 48 - Daycare
	dw NoHS                         ; 49 - Route 6 Gate
	dw NoHS                         ; 4A - Underground Path (Route 6)
	dw NoHS                         ; 4B - Underground Path (Route 6) (Copy)
	dw NoHS                         ; 4C - Route 7 Gate
	dw NoHS                         ; 4D - Underground Path (Route 7)
	dw NoHS                         ; 4E - Underground Path (Route 7) (Copy)
	dw NoHS                         ; 4F - Route 8 Gate
	dw NoHS                         ; 50 - Underground Path (Route 8)
	dw NoHS                         ; 51 - Rock Tunnel Pokecenter
	dw NoHS                         ; 52 - Rock Tunnel 1F
	dw PowerPlantHS                 ; 53 - Power Plant
	dw NoHS                         ; 54 - Route 11 Gate 1F
	dw NoHS                         ; 55 - Digletts Cave (Route 11)
	dw NoHS                         ; 56 - Route 11 Gate 2F
	dw NoHS                         ; 57 - Route 12 Gate 1F
	dw BillsHouseHS                 ; 58 - Bill's House
	dw NoHS                         ; 59 - Vermilion Pokecenter
	dw NoHS                         ; 5A - Pokemon Fan Club
	dw NoHS                         ; 5B - Vermilion Mart
	dw NoHS                         ; 5C - Vermilion Gym
	dw NoHS                         ; 5D - Vermilion Pidgey House
	dw NoHS                         ; 5E - Vermilion Dock
	dw NoHS                         ; 5F - SS Anne 1F
	dw SSAnne2FHS                   ; 60 - SS Anne 2F
	dw NoHS                         ; 61 - SS Anne 3F
	dw NoHS                         ; 62 - SS Anne B1F
	dw NoHS                         ; 63 - SS Anne Bow
	dw NoHS                         ; 64 - SS Anne Kitchen
	dw NoHS                         ; 65 - SS Anne Captain's Room
	dw SSAnne1FRoomsHS              ; 66 - SS Anne 1F Rooms
	dw SSAnne2FRoomsHS              ; 67 - SS Anne 2F Rooms
	dw SSAnneB1FRoomsHS             ; 68 - SS Anne B1F Rooms
	dw NoHS                         ; 69 - **Unused**
	dw NoHS                         ; 6A - **Unused**
	dw NoHS                         ; 6B - **Unused**
	dw VictoryRoad1FHS              ; 6C - Victory Road 1F
	dw NoHS                         ; 6D - **Unused**
	dw NoHS                         ; 6E - **Unused**
	dw NoHS                         ; 6F - **Unused**
	dw NoHS                         ; 70 - **Unused**
	dw NoHS                         ; 71 - Lance's Room
	dw NoHS                         ; 72 - **Unused**
	dw NoHS                         ; 73 - **Unused**
	dw NoHS                         ; 74 - **Unused**
	dw NoHS                         ; 75 - **Unused**
	dw NoHS                         ; 76 - Hall of Fame
	dw NoHS                         ; 77 - Underground Path North South
	dw ChampionsRoomHS              ; 78 - Champions Room
	dw NoHS                         ; 79 - Underground Path West East
	dw NoHS                         ; 7A - Celadon Mart 1F
	dw NoHS                         ; 7B - Celadon Mart 2F
	dw NoHS                         ; 7C - Celadon Mart 3F
	dw NoHS                         ; 7D - Celadon Mart 4F
	dw NoHS                         ; 7E - Celadon Mart Roof
	dw NoHS                         ; 7F - Celadon Mart Elevator
	dw NoHS                         ; 80 - Celadon Mansion 1F
	dw NoHS                         ; 81 - Celadon Mansion 2F
	dw NoHS                         ; 82 - Celadon Mansion 3F
	dw NoHS                         ; 83 - Celadon Mansion Roof
	dw CeladonMansionRoofHouseHS    ; 84 - Celadon Mansion Roof House
	dw NoHS                         ; 85 - Celadon Pokecenter
	dw NoHS                         ; 86 - Celadon Gym
	dw GameCornerHS                 ; 87 - Game Corner
	dw NoHS                         ; 88 - Celadon Mart 5F
	dw NoHS                         ; 89 - Game Corner Prize Room
	dw NoHS                         ; 8A - Celadon Diner
	dw NoHS                         ; 8B - Celadon Chief House
	dw NoHS                         ; 8C - Celadon Hotel
	dw NoHS                         ; 8D - Lavender Pokecenter
	dw NoHS                         ; 8E - Pokemon Tower 1F
	dw PokemonTower2FHS             ; 8F - Pokemon Tower 2F
	dw PokemonTower3FHS             ; 90 - Pokemon Tower 3F
	dw PokemonTower4FHS             ; 91 - Pokemon Tower 4F
	dw PokemonTower5FHS             ; 92 - Pokemon Tower 5F
	dw PokemonTower6FHS             ; 93 - Pokemon Tower 6F
	dw PokemonTower7FHS             ; 94 - Pokemon Tower 7F
	dw MrFujisHouseHS               ; 95 - Mr. Fujis House
	dw NoHS                         ; 96 - Lavender Mart
	dw NoHS                         ; 97 - Lavender Cubone House
	dw NoHS                         ; 98 = Fuchsia Mart
	dw NoHS                         ; 99 - Fuschia Bill's Grandpa's House
	dw NoHS                         ; 9A - Fuchsia Pokecenter
	dw WardensHouseHS               ; 9B - Warden's House
	dw NoHS                         ; 9C - Safari Zone Gate
	dw NoHS                         ; 9D - Fuchsia Gym
	dw NoHS                         ; 9E - Fuchsia Meeting Room
	dw SeafoamIslandsB1FHS          ; 9F - Seafoam Islands B1F
	dw SeafoamIslandsB2FHS          ; A0 - Seafoam Islands B2F
	dw SeafoamIslandsB3FHS          ; A1 - Seafoam Islands B3F
	dw SeafoamIslandsB4FHS          ; A2 - Seafoam Islands B4F
	dw NoHS                         ; A3 - Vermillion Old Rod House
	dw NoHS                         ; A4 - Fuchsia Good Rod House
	dw PokemonMansion1FHS           ; A5 - Pokemon Mansion 1F
	dw NoHS                         ; A6 - Cinnabar Gym
	dw NoHS                         ; A7 - Cinnabar Lab
	dw NoHS                         ; A8 - Cinnabar Lab Trade Room
	dw NoHS                         ; A9 - Cinnabar Lab Metronome Room
	dw NoHS                         ; AA - Cinnabar Lab Fossil Room
	dw NoHS                         ; AB - Cinnabar Pokecenter
	dw NoHS                         ; AC - Cinnabar Mart
	dw NoHS                         ; AD - Cinnabar Mart (Copy)
	dw NoHS                         ; AE - Indigo Plateau Lobby
	dw NoHS                         ; AF - Copycat's House 1F
	dw NoHS                         ; B0 - Copycat's House 2F
	dw FightingDojoHS               ; B1 - Fighting Dojo
	dw NoHS                         ; B2 - Saffron Gym
	dw NoHS                         ; B3 - Saffron Pidgey House
	dw NoHS                         ; B4 - Saffron Mart
	dw SilphCo1FHS                  ; B5 - Silph Co 1F
	dw NoHS                         ; B6 - Saffron Pokecenter
	dw NoHS                         ; B7 - Mr. Psychic's House
	dw NoHS                         ; B8 - Route 15 Gate 1F
	dw NoHS                         ; B9 - Route 15 Gate 2F
	dw NoHS                         ; BA - Route 16 Gate 1F
	dw NoHS                         ; BB - Route 16 Gate 2F
	dw NoHS                         ; BC - Route 16 Fly House
	dw NoHS                         ; BD - Route 12 Super Rod House
	dw NoHS                         ; BE - Route 18 Gate 1F
	dw NoHS                         ; BF - Route 18 Gate 2F
	dw SeafoamIslands1FHS           ; C0 - Seafoam Islands 1F
	dw NoHS                         ; C1 - Route 22 Gate
	dw VictoryRoad2FHS              ; C2 - Victory Road 2F
	dw NoHS                         ; C3 - Route 12 Gate 2F
	dw NoHS                         ; C4 - Vermilion  Trade House
	dw NoHS                         ; C5 - Diggletts Cave
	dw VictoryRoad3FHS              ; C6 - Victory Road 3F
	dw RocketHideoutB1FHS           ; C7 - Rocket Hideout B1F
	dw RocketHideoutB2FHS           ; C8 - Rocket Hideout B2F
	dw RocketHideoutB3FHS           ; C9 - Rocket Hideout B3F
	dw RocketHideoutB4FHS           ; CA - Rocket Hideout B4F
	dw NoHS                         ; CB - Rocket Hideout Elevator
	dw NoHS                         ; CC - **Unused**
	dw NoHS                         ; CD - **Unused**
	dw NoHS                         ; CE - **Unused**
	dw SilphCo2FHS                  ; CF - Silph Co 2F
	dw SilphCo3FHS                  ; D0 - Silph Co 3F
	dw SilphCo4FHS                  ; D1 - Silph Co 4F
	dw SilphCo5FHS                  ; D2 - Silph Co 5F
	dw SilphCo6FHS                  ; D3 - Silph Co 6F
	dw SilphCo7FHS                  ; D4 - Silph Co 7F
	dw SilphCo8FHS                  ; D5 - Silph Co 8F
	dw PokemonMansion2FHS           ; D6 - Pokemon Mansion 2F
	dw PokemonMansion3FHS           ; D7 - Pokemon Mansion 3F
	dw PokemonMansionB1FHS          ; D8 - Pokemon Mansion B1F
	dw SafariZoneEastHS             ; D9 - Safari Zone East
	dw SafariZoneNorthHS            ; DA - Safari Zone North
	dw SafariZoneWestHS             ; DB - Safari Zone West
	dw SafariZoneCenterHS           ; DC - Safari Zone Center
	dw NoHS                         ; DD - Safari Zone Center Rest House
	dw NoHS                         ; DE - Safari Zone Secret House
	dw NoHS                         ; DF - Safari Zone West Rest House
	dw NoHS                         ; E0 - Safari Zone East Rest House
	dw NoHS                         ; E1 - Safari Zone North Rest House
	dw CeruleanCave2FHS             ; E2 - Cerulean Cave 2F
	dw CeruleanCaveB1FHS            ; E3 - Cerulean Cave B1F
	dw CeruleanCaveHS               ; E4 - Cerulean Cave 1F
	dw NoHS                         ; E5 - Name Rater's House
	dw NoHS                         ; E6 - Cerulean Badge House
	dw NoHS                         ; E7 - **Unused**
	dw NoHS                         ; E8 - Rock Tunne B1F
	dw SilphCo9FHS                  ; E9 - Silph Co 9F
	dw SilphCo10FHS                 ; EA - Silph Co 10F
	dw SilphCo11FHS                 ; EB - Silph Co 11F
	dw NoHS                         ; EC - Silph Co Elevator
	dw NoHS                         ; ED - **Unused**
	dw NoHS                         ; EE - **Unused**
	dw NoHS                         ; EF - Trade Center
	dw NoHS                         ; F0 - Colosseum
	dw NoHS                         ; F1 - **Unused**
	dw NoHS                         ; F2 - **Unused**
	dw NoHS                         ; F3 - **Unused**
	dw UnusedMapF4HS                ; F4 - **Unused**
	dw NoHS                         ; F5 - Lorelei's Room
	dw NoHS                         ; F6 - Bruno's Room
	dw NoHS                         ; F7 - Agatha's Room
	dw NoHS                         ; F8 - Summer Beach House
	assert_table_length NUM_MAPS
	dw -1 ; end

NoHS:
	db $FF, $FF, $FF

MissableObjects:
; entries correspond to HS_* constants (see constants/hide_show_constants)
	table_width 3
; format: map id, object id, HIDE/SHOW

PalletTownHS:
	db PALLET_TOWN, PALLETTOWN_OAK, HIDE
ViridianCityHS:
	db VIRIDIAN_CITY, VIRIDIANCITY_OLD_MAN_SLEEPY, SHOW
	db VIRIDIAN_CITY, VIRIDIANCITY_OLD_MAN,        HIDE
	db VIRIDIAN_CITY, VIRIDIANCITY_OLD_MAN2,       HIDE
	db VIRIDIAN_CITY, VIRIDIANCITY_OFFICER_JENNY,  SHOW
PewterCityHS:
	db PEWTER_CITY, PEWTERCITY_SUPER_NERD1, SHOW
	db PEWTER_CITY, PEWTERCITY_YOUNGSTER,   SHOW
CeruleanCityHS:
	db CERULEAN_CITY, CERULEANCITY_RIVAL,       HIDE
	db CERULEAN_CITY, CERULEANCITY_ROCKET,      SHOW
	db CERULEAN_CITY, CERULEANCITY_GUARD1,      HIDE
	db CERULEAN_CITY, CERULEANCITY_SUPER_NERD3, SHOW
	db CERULEAN_CITY, CERULEANCITY_GUARD2,      SHOW
SaffronCityHS:
	db SAFFRON_CITY, SAFFRONCITY_ROCKET1,        SHOW
	db SAFFRON_CITY, SAFFRONCITY_ROCKET2,        SHOW
	db SAFFRON_CITY, SAFFRONCITY_ROCKET3,        SHOW
	db SAFFRON_CITY, SAFFRONCITY_ROCKET4,        SHOW
	db SAFFRON_CITY, SAFFRONCITY_ROCKET5,        SHOW
	db SAFFRON_CITY, SAFFRONCITY_ROCKET6,        SHOW
	db SAFFRON_CITY, SAFFRONCITY_ROCKET7,        SHOW
	db SAFFRON_CITY, SAFFRONCITY_SCIENTIST,      HIDE
	db SAFFRON_CITY, SAFFRONCITY_SILPH_WORKER_M, HIDE
	db SAFFRON_CITY, SAFFRONCITY_SILPH_WORKER_F, HIDE
	db SAFFRON_CITY, SAFFRONCITY_GENTLEMAN,      HIDE
	db SAFFRON_CITY, SAFFRONCITY_PIDGEOT,        HIDE
	db SAFFRON_CITY, SAFFRONCITY_ROCKER,         HIDE
	db SAFFRON_CITY, SAFFRONCITY_ROCKET8,        SHOW
	db SAFFRON_CITY, SAFFRONCITY_ROCKET9,        HIDE ; removed in yellow
Route2HS:
	db ROUTE_2, ROUTE2_MOON_STONE, SHOW
	db ROUTE_2, ROUTE2_HP_UP,      SHOW
Route4HS:
	db ROUTE_4, ROUTE4_TM_WHIRLWIND, SHOW
Route9HS:
	db ROUTE_9, ROUTE9_TM_TELEPORT, SHOW
Route12HS:
	db ROUTE_12, ROUTE12_SNORLAX,    SHOW
	db ROUTE_12, ROUTE12_TM_PAY_DAY, SHOW
	db ROUTE_12, ROUTE12_IRON,       SHOW
Route15HS:
	db ROUTE_15, ROUTE15_TM_RAGE, SHOW
Route16HS:
	db ROUTE_16, ROUTE16_SNORLAX, SHOW
Route22HS:
	db ROUTE_22, ROUTE22_RIVAL1, HIDE
	db ROUTE_22, ROUTE22_RIVAL2, HIDE
Route24HS:
	db ROUTE_24, ROUTE24_COOLTRAINER_M1,  SHOW
	db ROUTE_24, ROUTE24_TM_THUNDER_WAVE, SHOW
Route25HS:
	db ROUTE_25, ROUTE25_TM_SEISMIC_TOSS, SHOW
BluesHouseHS:
	db BLUES_HOUSE, BLUESHOUSE_DAISY1,   SHOW
	db BLUES_HOUSE, BLUESHOUSE_DAISY2,   HIDE
	db BLUES_HOUSE, BLUESHOUSE_TOWN_MAP, SHOW
OaksLabHS:
	db OAKS_LAB, OAKSLAB_RIVAL,                SHOW
	db OAKS_LAB, OAKSLAB_EEVEE_POKE_BALL,      SHOW
	db OAKS_LAB, OAKSLAB_OAK1,                 HIDE
	db OAKS_LAB, OAKSLAB_POKEDEX1,             SHOW
	db OAKS_LAB, OAKSLAB_POKEDEX2,             SHOW
	db OAKS_LAB, OAKSLAB_OAK2,                 HIDE
ViridianPokecenterHS:
	db VIRIDIAN_POKECENTER, VIRIDIANPOKECENTER_JESSIE, HIDE
	db VIRIDIAN_POKECENTER, VIRIDIANPOKECENTER_JAMES,  HIDE
ViridianGymHS:
	db VIRIDIAN_GYM, VIRIDIANGYM_GIOVANNI, SHOW
	db VIRIDIAN_GYM, VIRIDIANGYM_REVIVE,   SHOW
Museum1FHS:
	db MUSEUM_1F, MUSEUM1F_OLD_AMBER, SHOW
CeruleanMelaniesHouseHS:
	db CERULEAN_MELANIES_HOUSE, CERULEANMELANIESHOUSE_BULBASAUR, SHOW
CeruleanCaveHS:
	db CERULEAN_CAVE_1F, CERULEANCAVE1F_RARE_CANDY, SHOW
	db CERULEAN_CAVE_1F, CERULEANCAVE1F_MAX_ELIXER, SHOW
	db CERULEAN_CAVE_1F, CERULEANCAVE1F_MAX_REVIVE, SHOW
	db CERULEAN_CAVE_1F, CERULEANCAVE1F_ULTRA_BALL, SHOW
PokemonTower2FHS:
	db POKEMON_TOWER_2F, POKEMONTOWER2F_RIVAL, SHOW
PokemonTower3FHS:
	db POKEMON_TOWER_3F, POKEMONTOWER3F_ESCAPE_ROPE, SHOW
PokemonTower4FHS:
	db POKEMON_TOWER_4F, POKEMONTOWER4F_ELIXER,    SHOW
	db POKEMON_TOWER_4F, POKEMONTOWER4F_AWAKENING, SHOW
	db POKEMON_TOWER_4F, POKEMONTOWER4F_HP_UP,     SHOW
PokemonTower5FHS:
	db POKEMON_TOWER_5F, POKEMONTOWER5F_NUGGET, SHOW
PokemonTower6FHS:
	db POKEMON_TOWER_6F, POKEMONTOWER6F_RARE_CANDY, SHOW
	db POKEMON_TOWER_6F, POKEMONTOWER6F_X_ACCURACY, SHOW
PokemonTower7FHS:
	db POKEMON_TOWER_7F, POKEMONTOWER7F_JESSIE,  HIDE
	db POKEMON_TOWER_7F, POKEMONTOWER7F_JAMES,   HIDE
	db POKEMON_TOWER_7F, POKEMONTOWER7F_MR_FUJI, SHOW
MrFujisHouseHS:
	db MR_FUJIS_HOUSE, MRFUJISHOUSE_MR_FUJI, HIDE
CeladonMansionRoofHouseHS:
	db CELADON_MANSION_ROOF_HOUSE, CELADONMANSION_ROOF_HOUSE_EEVEE_POKEBALL, SHOW
GameCornerHS:
	db GAME_CORNER, GAMECORNER_ROCKET, SHOW
WardensHouseHS:
	db WARDENS_HOUSE, WARDENSHOUSE_RARE_CANDY, SHOW
PokemonMansion1FHS:
	db POKEMON_MANSION_1F, POKEMONMANSION1F_ESCAPE_ROPE, SHOW
	db POKEMON_MANSION_1F, POKEMONMANSION1F_CARBOS,      SHOW
FightingDojoHS:
	db FIGHTING_DOJO, FIGHTINGDOJO_HITMONLEE_POKE_BALL,  SHOW
	db FIGHTING_DOJO, FIGHTINGDOJO_HITMONCHAN_POKE_BALL, SHOW
SilphCo1FHS:
	db SILPH_CO_1F, SILPHCO1F_LINK_RECEPTIONIST, HIDE
PowerPlantHS:
	db POWER_PLANT, POWERPLANT_VOLTORB1,   SHOW
	db POWER_PLANT, POWERPLANT_VOLTORB2,   SHOW
	db POWER_PLANT, POWERPLANT_VOLTORB3,   SHOW
	db POWER_PLANT, POWERPLANT_ELECTRODE1, SHOW
	db POWER_PLANT, POWERPLANT_VOLTORB4,   SHOW
	db POWER_PLANT, POWERPLANT_VOLTORB5,   SHOW
	db POWER_PLANT, POWERPLANT_ELECTRODE2, SHOW
	db POWER_PLANT, POWERPLANT_VOLTORB6,   SHOW
	db POWER_PLANT, POWERPLANT_ZAPDOS,     SHOW
	db POWER_PLANT, POWERPLANT_CARBOS,     SHOW
	db POWER_PLANT, POWERPLANT_HP_UP,      SHOW
	db POWER_PLANT, POWERPLANT_RARE_CANDY, SHOW
	db POWER_PLANT, POWERPLANT_TM_THUNDER, SHOW
	db POWER_PLANT, POWERPLANT_TM_REFLECT, SHOW
VictoryRoad2FHS:
	db VICTORY_ROAD_2F, VICTORYROAD2F_MOLTRES,       SHOW
	db VICTORY_ROAD_2F, VICTORYROAD2F_TM_SUBMISSION, SHOW
	db VICTORY_ROAD_2F, VICTORYROAD2F_FULL_HEAL,     SHOW
	db VICTORY_ROAD_2F, VICTORYROAD2F_TM_MEGA_KICK,  SHOW
	db VICTORY_ROAD_2F, VICTORYROAD2F_GUARD_SPEC,    SHOW
	db VICTORY_ROAD_2F, VICTORYROAD2F_BOULDER3,      SHOW
BillsHouseHS:
	db BILLS_HOUSE, BILLSHOUSE_BILL_POKEMON, SHOW
	db BILLS_HOUSE, BILLSHOUSE_BILL1,        HIDE
	db BILLS_HOUSE, BILLSHOUSE_BILL2,        HIDE
ViridianForestHS:
	db VIRIDIAN_FOREST, VIRIDIANFOREST_POTION1,   SHOW
	db VIRIDIAN_FOREST, VIRIDIANFOREST_POTION2,   SHOW
	db VIRIDIAN_FOREST, VIRIDIANFOREST_POKE_BALL, SHOW
MtMoon1FHS:
	db MT_MOON_1F, MTMOON1F_POTION1,      SHOW
	db MT_MOON_1F, MTMOON1F_MOON_STONE,   SHOW
	db MT_MOON_1F, MTMOON1F_RARE_CANDY,   SHOW
	db MT_MOON_1F, MTMOON1F_ESCAPE_ROPE,  SHOW
	db MT_MOON_1F, MTMOON1F_POTION2,      SHOW
	db MT_MOON_1F, MTMOON1F_TM_WATER_GUN, SHOW
MtMoonB2FHS:
	db MT_MOON_B2F, MTMOONB2F_JESSIE,        HIDE
	db MT_MOON_B2F, MTMOONB2F_JAMES,         HIDE
	db MT_MOON_B2F, MTMOONB2F_DOME_FOSSIL,   SHOW
	db MT_MOON_B2F, MTMOONB2F_HELIX_FOSSIL,  SHOW
	db MT_MOON_B2F, MTMOONB2F_HP_UP,         SHOW
	db MT_MOON_B2F, MTMOONB2F_TM_MEGA_PUNCH, SHOW
SSAnne2FHS:
	db SS_ANNE_2F, SSANNE2F_RIVAL, HIDE
SSAnne1FRoomsHS:
	db SS_ANNE_1F_ROOMS, SSANNE1FROOMS_TM_BODY_SLAM, SHOW
SSAnne2FRoomsHS:
	db SS_ANNE_2F_ROOMS, SSANNE2FROOMS_MAX_ETHER,  SHOW
	db SS_ANNE_2F_ROOMS, SSANNE2FROOMS_RARE_CANDY, SHOW
SSAnneB1FRoomsHS:
	db SS_ANNE_B1F_ROOMS, SSANNEB1FROOMS_ETHER,      SHOW
	db SS_ANNE_B1F_ROOMS, SSANNEB1FROOMS_TM_REST,    SHOW
	db SS_ANNE_B1F_ROOMS, SSANNEB1FROOMS_MAX_POTION, SHOW
VictoryRoad3FHS:
	db VICTORY_ROAD_3F, VICTORYROAD3F_MAX_REVIVE,   SHOW
	db VICTORY_ROAD_3F, VICTORYROAD3F_TM_EXPLOSION, SHOW
	db VICTORY_ROAD_3F, VICTORYROAD3F_BOULDER4,     SHOW
RocketHideoutB1FHS:
	db ROCKET_HIDEOUT_B1F, ROCKETHIDEOUTB1F_ESCAPE_ROPE,  SHOW
	db ROCKET_HIDEOUT_B1F, ROCKETHIDEOUTB1F_HYPER_POTION, SHOW
RocketHideoutB2FHS:
	db ROCKET_HIDEOUT_B2F, ROCKETHIDEOUTB2F_MOON_STONE,    SHOW
	db ROCKET_HIDEOUT_B2F, ROCKETHIDEOUTB2F_NUGGET,        SHOW
	db ROCKET_HIDEOUT_B2F, ROCKETHIDEOUTB2F_TM_HORN_DRILL, SHOW
	db ROCKET_HIDEOUT_B2F, ROCKETHIDEOUTB2F_SUPER_POTION,  SHOW
RocketHideoutB3FHS:
	db ROCKET_HIDEOUT_B3F, ROCKETHIDEOUTB3F_TM_DOUBLE_EDGE, SHOW
	db ROCKET_HIDEOUT_B3F, ROCKETHIDEOUTB3F_RARE_CANDY,     SHOW
RocketHideoutB4FHS:
	db ROCKET_HIDEOUT_B4F, ROCKETHIDEOUTB4F_GIOVANNI,      SHOW
	db ROCKET_HIDEOUT_B4F, ROCKETHIDEOUTB4F_JAMES,         HIDE
	db ROCKET_HIDEOUT_B4F, ROCKETHIDEOUTB4F_JESSIE,        HIDE
	db ROCKET_HIDEOUT_B4F, ROCKETHIDEOUTB4F_HP_UP,         SHOW
	db ROCKET_HIDEOUT_B4F, ROCKETHIDEOUTB4F_TM_RAZOR_WIND, SHOW
	db ROCKET_HIDEOUT_B4F, ROCKETHIDEOUTB4F_IRON,          SHOW
	db ROCKET_HIDEOUT_B4F, ROCKETHIDEOUTB4F_SILPH_SCOPE,   HIDE
	db ROCKET_HIDEOUT_B4F, ROCKETHIDEOUTB4F_LIFT_KEY,      HIDE
SilphCo2FHS:
	db SILPH_CO_2F, SILPHCO2F_SILPH_WORKER_F, SHOW
	db SILPH_CO_2F, SILPHCO2F_SCIENTIST1,     SHOW
	db SILPH_CO_2F, SILPHCO2F_SCIENTIST2,     SHOW
	db SILPH_CO_2F, SILPHCO2F_ROCKET1,        SHOW
	db SILPH_CO_2F, SILPHCO2F_ROCKET2,        SHOW
SilphCo3FHS:
	db SILPH_CO_3F, SILPHCO3F_ROCKET,       SHOW
	db SILPH_CO_3F, SILPHCO3F_SCIENTIST,    SHOW
	db SILPH_CO_3F, SILPHCO3F_HYPER_POTION, SHOW
SilphCo4FHS:
	db SILPH_CO_4F, SILPHCO4F_ROCKET1,     SHOW
	db SILPH_CO_4F, SILPHCO4F_SCIENTIST,   SHOW
	db SILPH_CO_4F, SILPHCO4F_ROCKET2,     SHOW
	db SILPH_CO_4F, SILPHCO4F_FULL_HEAL,   SHOW
	db SILPH_CO_4F, SILPHCO4F_MAX_REVIVE,  SHOW
	db SILPH_CO_4F, SILPHCO4F_ESCAPE_ROPE, SHOW
SilphCo5FHS:
	db SILPH_CO_5F, SILPHCO5F_ROCKET1,      SHOW
	db SILPH_CO_5F, SILPHCO5F_SCIENTIST,    SHOW
	db SILPH_CO_5F, SILPHCO5F_ROCKER,       SHOW
	db SILPH_CO_5F, SILPHCO5F_ROCKET2,      SHOW
	db SILPH_CO_5F, SILPHCO5F_TM_TAKE_DOWN, SHOW
	db SILPH_CO_5F, SILPHCO5F_PROTEIN,      SHOW
	db SILPH_CO_5F, SILPHCO5F_CARD_KEY,     SHOW
SilphCo6FHS:
	db SILPH_CO_6F, SILPHCO6F_ROCKET1,    SHOW
	db SILPH_CO_6F, SILPHCO6F_SCIENTIST,  SHOW
	db SILPH_CO_6F, SILPHCO6F_ROCKET2,    SHOW
	db SILPH_CO_6F, SILPHCO6F_HP_UP,      SHOW
	db SILPH_CO_6F, SILPHCO6F_X_ACCURACY, SHOW
SilphCo7FHS:
	db SILPH_CO_7F, SILPHCO7F_ROCKET1,         SHOW
	db SILPH_CO_7F, SILPHCO7F_SCIENTIST,       SHOW
	db SILPH_CO_7F, SILPHCO7F_ROCKET2,         SHOW
	db SILPH_CO_7F, SILPHCO7F_ROCKET3,         SHOW
	db SILPH_CO_7F, SILPHCO7F_RIVAL,           SHOW
	db SILPH_CO_7F, SILPHCO7F_CALCIUM,         SHOW
	db SILPH_CO_7F, SILPHCO7F_TM_SWORDS_DANCE, SHOW
	db SILPH_CO_7F, SILPHCO7F_UNUSED,          SHOW
SilphCo8FHS:
	db SILPH_CO_8F, SILPHCO8F_ROCKET1,   SHOW
	db SILPH_CO_8F, SILPHCO8F_SCIENTIST, SHOW
	db SILPH_CO_8F, SILPHCO8F_ROCKET2,   SHOW
SilphCo9FHS:
	db SILPH_CO_9F, SILPHCO9F_ROCKET1,   SHOW
	db SILPH_CO_9F, SILPHCO9F_SCIENTIST, SHOW
	db SILPH_CO_9F, SILPHCO9F_ROCKET2,   SHOW
SilphCo10FHS:
	db SILPH_CO_10F, SILPHCO10F_ROCKET,         SHOW
	db SILPH_CO_10F, SILPHCO10F_SCIENTIST,      SHOW
	db SILPH_CO_10F, SILPHCO10F_SILPH_WORKER_F, SHOW
	db SILPH_CO_10F, SILPHCO10F_TM_EARTHQUAKE,  SHOW
	db SILPH_CO_10F, SILPHCO10F_RARE_CANDY,     SHOW
	db SILPH_CO_10F, SILPHCO10F_CARBOS,         SHOW
SilphCo11FHS:
	db SILPH_CO_11F, SILPHCO11F_GIOVANNI, SHOW
	db SILPH_CO_11F, SILPHCO11F_JAMES,    SHOW
	db SILPH_CO_11F, SILPHCO11F_ROCKET,   SHOW
	db SILPH_CO_11F, SILPHCO11F_JESSIE,   SHOW
UnusedMapF4HS:
	db UNUSED_MAP_F4, $02, SHOW ; unused
PokemonMansion2FHS:
	db POKEMON_MANSION_2F, POKEMONMANSION2F_CALCIUM, SHOW
PokemonMansion3FHS:
	db POKEMON_MANSION_3F, POKEMONMANSION3F_MAX_POTION, SHOW
	db POKEMON_MANSION_3F, POKEMONMANSION3F_IRON,       SHOW
PokemonMansionB1FHS:
	db POKEMON_MANSION_B1F, POKEMONMANSIONB1F_RARE_CANDY,   SHOW
	db POKEMON_MANSION_B1F, POKEMONMANSIONB1F_FULL_RESTORE, SHOW
	db POKEMON_MANSION_B1F, POKEMONMANSIONB1F_TM_BLIZZARD,  SHOW
	db POKEMON_MANSION_B1F, POKEMONMANSIONB1F_TM_SOLARBEAM, SHOW
	db POKEMON_MANSION_B1F, POKEMONMANSIONB1F_SECRET_KEY,   SHOW
SafariZoneEastHS:
	db SAFARI_ZONE_EAST, SAFARIZONEEAST_FULL_RESTORE, SHOW
	db SAFARI_ZONE_EAST, SAFARIZONEEAST_MAX_RESTORE,  SHOW
	db SAFARI_ZONE_EAST, SAFARIZONEEAST_CARBOS,       SHOW
	db SAFARI_ZONE_EAST, SAFARIZONEEAST_TM_EGG_BOMB,  SHOW
SafariZoneNorthHS:
	db SAFARI_ZONE_NORTH, SAFARIZONENORTH_PROTEIN,       SHOW
	db SAFARI_ZONE_NORTH, SAFARIZONENORTH_TM_SKULL_BASH, SHOW
SafariZoneWestHS:
	db SAFARI_ZONE_WEST, SAFARIZONEWEST_MAX_POTION,     SHOW
	db SAFARI_ZONE_WEST, SAFARIZONEWEST_TM_DOUBLE_TEAM, SHOW
	db SAFARI_ZONE_WEST, SAFARIZONEWEST_MAX_REVIVE,     SHOW
	db SAFARI_ZONE_WEST, SAFARIZONEWEST_GOLD_TEETH,     SHOW
SafariZoneCenterHS:
	db SAFARI_ZONE_CENTER, SAFARIZONECENTER_NUGGET, SHOW
CeruleanCave2FHS:
	db CERULEAN_CAVE_2F, CERULEANCAVE2F_RARE_CANDY,   SHOW
	db CERULEAN_CAVE_2F, CERULEANCAVE2F_ULTRA_BALL,   SHOW
	db CERULEAN_CAVE_2F, CERULEANCAVE2F_MAX_REVIVE,   SHOW
	db CERULEAN_CAVE_2F, CERULEANCAVE2F_FULL_RESTORE, SHOW
CeruleanCaveB1FHS:
	db CERULEAN_CAVE_B1F, CERULEANCAVEB1F_MEWTWO,      SHOW
	db CERULEAN_CAVE_B1F, CERULEANCAVEB1F_ULTRA_BALL1, SHOW
	db CERULEAN_CAVE_B1F, CERULEANCAVEB1F_ULTRA_BALL2, SHOW
	db CERULEAN_CAVE_B1F, CERULEANCAVEB1F_MAX_REVIVE,  SHOW
	db CERULEAN_CAVE_B1F, CERULEANCAVEB1F_MAX_ELIXER,  SHOW
VictoryRoad1FHS:
	db VICTORY_ROAD_1F, VICTORYROAD1F_TM_SKY_ATTACK, SHOW
	db VICTORY_ROAD_1F, VICTORYROAD1F_RARE_CANDY,    SHOW
ChampionsRoomHS:
	db CHAMPIONS_ROOM, CHAMPIONSROOM_OAK, HIDE
SeafoamIslands1FHS:
	db SEAFOAM_ISLANDS_1F, SEAFOAMISLANDS1F_BOULDER1, SHOW
	db SEAFOAM_ISLANDS_1F, SEAFOAMISLANDS1F_BOULDER2, SHOW
SeafoamIslandsB1FHS:
	db SEAFOAM_ISLANDS_B1F, SEAFOAMISLANDSB1F_BOULDER1, HIDE
	db SEAFOAM_ISLANDS_B1F, SEAFOAMISLANDSB1F_BOULDER2, HIDE
SeafoamIslandsB2FHS:
	db SEAFOAM_ISLANDS_B2F, SEAFOAMISLANDSB2F_BOULDER1, HIDE
	db SEAFOAM_ISLANDS_B2F, SEAFOAMISLANDSB2F_BOULDER2, HIDE
SeafoamIslandsB3FHS:
	db SEAFOAM_ISLANDS_B3F, SEAFOAMISLANDSB3F_BOULDER2, SHOW
	db SEAFOAM_ISLANDS_B3F, SEAFOAMISLANDSB3F_BOULDER3, SHOW
	db SEAFOAM_ISLANDS_B3F, SEAFOAMISLANDSB3F_BOULDER5, HIDE
	db SEAFOAM_ISLANDS_B3F, SEAFOAMISLANDSB3F_BOULDER6, HIDE
SeafoamIslandsB4FHS:
	db SEAFOAM_ISLANDS_B4F, SEAFOAMISLANDSB4F_BOULDER1, HIDE
	db SEAFOAM_ISLANDS_B4F, SEAFOAMISLANDSB4F_BOULDER2, HIDE
	db SEAFOAM_ISLANDS_B4F, SEAFOAMISLANDSB4F_ARTICUNO, SHOW
BluesHouseHSCopy: ; unreferenced
	db BLUES_HOUSE, BLUESHOUSE_DAISY1,   SHOW
	db BLUES_HOUSE, BLUESHOUSE_DAISY2,   HIDE
	db BLUES_HOUSE, BLUESHOUSE_TOWN_MAP, SHOW
	db $FF, $01, SHOW ; end
	assert_table_length NUM_HS_OBJECTS + 1
