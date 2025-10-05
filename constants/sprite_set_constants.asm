; sprite set ids
; indexes for SpriteSets (see data/maps/sprite_sets.asm)
; values for MapSpriteSets and SplitMapSpriteSets (see data/maps/sprite_sets.asm)
	const_def 1
	const SPRITESET_PALLET_VIRIDIAN ; 01
	const SPRITESET_PEWTER_CITY     ; 02
	const SPRITESET_CERULEAN_CITY   ; 03
	const SPRITESET_LAVENDER_TOWN   ; 04
	const SPRITESET_VERMILION_CITY  ; 05
	const SPRITESET_CELADON_CITY    ; 06
	const SPRITESET_INDIGO_PLATEAU  ; 07
	const SPRITESET_SAFFRON_CITY    ; 08
	const SPRITESET_SILENCE_BRIDGE  ; 09
	const SPRITESET_CYCLING_ROAD    ; 0A
	const SPRITESET_FUCHSIA_CITY    ; 0B
	const SPRITESET_CINNABAR_ISLAND ; 0C
	const SPRITESET_ROUTE_5         ; 0D    ; New sprite set added by G-Dubs
	const SPRITESET_ROUTE_7         ; 0E    ; New sprite set added by G-Dubs
DEF NUM_SPRITE_SETS EQU const_value - 1

; split sprite set ids
; indexes for SplitMapSpriteSets (see data/maps/sprite_sets.asm)
; values for MapSpriteSets (see data/maps/sprite_sets.asm)
	const_next $f1
DEF FIRST_SPLIT_SET EQU const_value
	const SPLITSET_ROUTE_2  ; F1
	const SPLITSET_ROUTE_10 ; F2
	const SPLITSET_ROUTE_11 ; F3
	const SPLITSET_ROUTE_15 ; F4
	const SPLITSET_ROUTE_16 ; F5
	const SPLITSET_ROUTE_18 ; F6
	const SPLITSET_ROUTE_20 ; F7
DEF NUM_SPLIT_SETS EQU const_value - FIRST_SPLIT_SET

; split directions
DEF EAST_WEST   EQU 1
DEF NORTH_SOUTH EQU 2

; each sprite set has 9 walking sprites and 2 still sprites
DEF SPRITE_SET_LENGTH EQU 9 + 2
