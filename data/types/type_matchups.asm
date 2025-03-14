TypeEffects:
	;  attacker,     defender,     *=
	db WATER,        FIRE,         SUPER_EFFECTIVE
	db WATER,        ROCK,         SUPER_EFFECTIVE
	db WATER,        WATER,        NOT_VERY_EFFECTIVE
	db WATER,        GRASS,        NOT_VERY_EFFECTIVE
	db WATER,        GROUND,       SUPER_EFFECTIVE
	db WATER,        DRAGON,       NOT_VERY_EFFECTIVE     
	db WATER,        GLASS,        NO_EFFECT               ; Glass type match up added by G-Dubs
	db WATER,        STEEL,        NOT_VERY_EFFECTIVE      ; New Steel type match up added by G-Dubs         (Added to buff to Steel type, and to make it so that Steel type has some interaction to all types)
    db FIRE,         GRASS,        SUPER_EFFECTIVE
	db FIRE,         ICE,          SUPER_EFFECTIVE
	db FIRE,         FIRE,         NOT_VERY_EFFECTIVE
	db FIRE,         WATER,        NOT_VERY_EFFECTIVE
	db FIRE,         BUG,          SUPER_EFFECTIVE
	db FIRE,         ROCK,         NOT_VERY_EFFECTIVE
	db FIRE,         GROUND,       NOT_VERY_EFFECTIVE      ; New type matchup added by G-Dubs                (Added because I thought this was true when I was a kid)
	db FIRE,         DRAGON,       NOT_VERY_EFFECTIVE
	db FIRE,         STEEL,        SUPER_EFFECTIVE         ; Sound type match up added by G-Dubs
	db FIRE,         SOUND,        SUPER_EFFECTIVE         ; Sound type match up added by G-Dubs
	db FIRE,         GLASS,        SUPER_EFFECTIVE         ; Glass type match up added by G-Dubs
   ;db FIRE,         BIRD,         SUPER_EFFECTIVE         ; Bird type match up changed by G-Dubs            (To be changed if Flying is split into Bird and Flying types)
	db GRASS,        WATER,        SUPER_EFFECTIVE
    db GRASS,        GRASS,        NOT_VERY_EFFECTIVE
	db GRASS,        FIRE,         NOT_VERY_EFFECTIVE
	db GRASS,        GROUND,       SUPER_EFFECTIVE
	db GRASS,        BUG,          NOT_VERY_EFFECTIVE
	db GRASS,        POISON,       NOT_VERY_EFFECTIVE
	db GRASS,        ROCK,         SUPER_EFFECTIVE
	db GRASS,        FLYING,       NOT_VERY_EFFECTIVE
   ;db GRASS,        BIRD,         NOT_VERY_EFFECTIVE      ; Bird type match up changed by G-Dubs            (To be changed if Flying is split into Bird and Flying types)
    db GRASS,        DRAGON,       NOT_VERY_EFFECTIVE
	db GRASS,        STEEL,        NOT_VERY_EFFECTIVE      ; Steel type match up added by G-Dubs
	db GRASS,        GLASS,        NOT_VERY_EFFECTIVE      ; Glass type match up added by G-Dubs
    db ELECTRIC,     WATER,        SUPER_EFFECTIVE
	db ELECTRIC,     ELECTRIC,     NOT_VERY_EFFECTIVE
	db ELECTRIC,     GRASS,        NOT_VERY_EFFECTIVE
	db ELECTRIC,     GROUND,       NO_EFFECT
	db ELECTRIC,     FLYING,       SUPER_EFFECTIVE         
   ;db ELECTRIC,     BIRD,         SUPER_EFFECTIVE         ; Bird type match up changed by G-Dubs            (To be changed if Flying is split into Bird and Flying types)       
	db ELECTRIC,     ICE,          NOT_VERY_EFFECTIVE      ; New type match up added by G-Dubs               (Added to buff Ice type)
	db ELECTRIC,     DRAGON,       NOT_VERY_EFFECTIVE
	db ELECTRIC,     SOUND,        SUPER_EFFECTIVE         ; Sound type match up added by G-Dubs
	db ELECTRIC,     GLASS,        NOT_VERY_EFFECTIVE      ; Glass type match up added by G-Dubs
	db ELECTRIC,     STEEL,        SUPER_EFFECTIVE         ; New Steel type match up added by G-Dubs         (Added to nerf Steel type, and to make it so that Steel type has some interaction to all types)
	db GROUND,       FLYING,       NO_EFFECT
   ;db GROUND,       BIRD,         NO_EFFECT               ; Bird type match up changed by G-Dubs            (To be changed if Flying is split into Bird and Flying types)
	db GROUND,       FIRE,         SUPER_EFFECTIVE
	db GROUND,       ELECTRIC,     SUPER_EFFECTIVE
	db GROUND,       GRASS,        NOT_VERY_EFFECTIVE
	db GROUND,       BUG,          NOT_VERY_EFFECTIVE
	db GROUND,       ROCK,         SUPER_EFFECTIVE
	db GROUND,       POISON,       SUPER_EFFECTIVE
	db GROUND,       STEEL,        SUPER_EFFECTIVE         ; Steel type match up added by G-Dubs
	db GROUND,       FAIRY,        NOT_VERY_EFFECTIVE      ; New type match up added by G-Dubs               (Added to buff Fairy type, for some reason)
	db GROUND,       GLASS,        SUPER_EFFECTIVE         
	db ICE,          ICE,          NOT_VERY_EFFECTIVE	
	db ICE,          WATER,        NOT_VERY_EFFECTIVE
	db ICE,          GRASS,        SUPER_EFFECTIVE
	db ICE,          BUG,          SUPER_EFFECTIVE         ; New type match up added by G-Dubs               (Added to buff Ice type)    
	db ICE,          GROUND,       SUPER_EFFECTIVE
	db ICE,          FLYING,       SUPER_EFFECTIVE
   ;db ICE,          BIRD,         SUPER_EFFECTIVE         ; Bird type match up changed by G-Dubs            (To be changed if Flying is split into Bird and Flying types)
    db ICE,          DRAGON,       SUPER_EFFECTIVE
    db ICE,          FIRE,         NOT_VERY_EFFECTIVE      ; Modern type match up added by G-Dubs            (Added to be in line with modern type match ups, and to buff Ice type)
    db ICE,          STEEL,        NOT_VERY_EFFECTIVE      ; Steel type match up added by G-Dubs
	db ICE,          GLASS,        SUPER_EFFECTIVE         ; Glass type match up added by G-Dubs
    db PSYCHIC_TYPE, PSYCHIC_TYPE, NOT_VERY_EFFECTIVE
    db PSYCHIC_TYPE, FIGHTING,     SUPER_EFFECTIVE
	db PSYCHIC_TYPE, POISON,       SUPER_EFFECTIVE
	db PSYCHIC_TYPE, STEEL,        NOT_VERY_EFFECTIVE      ; Steel type match up added by G-Dubs
    db PSYCHIC_TYPE, DARK,         NO_EFFECT               ; Dark type match up added by G-Dubs
	db PSYCHIC_TYPE, GLASS,        NOT_VERY_EFFECTIVE      ; Glass type match up added by G-Dubs
    db NORMAL,       ROCK,         NOT_VERY_EFFECTIVE
	db NORMAL,       GHOST,        NO_EFFECT
	db NORMAL,       STEEL,        NOT_VERY_EFFECTIVE      ; Steel type match up added by G-Dubs
	db NORMAL,       GLASS,        NOT_VERY_EFFECTIVE      ; Glass type match up added by G-Dubs
    db GHOST,        GHOST,        SUPER_EFFECTIVE
    db GHOST,        NORMAL,       NO_EFFECT
	db GHOST,        PSYCHIC_TYPE, SUPER_EFFECTIVE         ; Modern type match up added by G-Dubs            (Famous Gen I bug fixed)
    db GHOST,        STEEL,        NOT_VERY_EFFECTIVE      ; Gen II - V Steel type match up added by G-Dubs  (Added to buff Steel type, and to make it so that Steel type has some interaction to all types)
	db GHOST,        DARK,         NOT_VERY_EFFECTIVE      ; Dark type match up added by G-Dubs
	db FIGHTING,     NORMAL,       SUPER_EFFECTIVE
	db FIGHTING,     POISON,       NOT_VERY_EFFECTIVE
	db FIGHTING,     FLYING,       NOT_VERY_EFFECTIVE
   ;db FIGHTING,     BIRD,         NOT_VERY_EFFECTIVE      ; Bird type match up changed by G-Dubs            (To be changed if Flying is split into Bird and Flying types)
	db FIGHTING,     PSYCHIC_TYPE, NOT_VERY_EFFECTIVE
	db FIGHTING,     BUG,          NOT_VERY_EFFECTIVE
	db FIGHTING,     ROCK,         SUPER_EFFECTIVE
	db FIGHTING,     ICE,          SUPER_EFFECTIVE
	db FIGHTING,     GHOST,        NO_EFFECT
	db FIGHTING,     STEEL,        SUPER_EFFECTIVE         ; Steel type match up added by G-Dubs
	db FIGHTING,     FAIRY,        NOT_VERY_EFFECTIVE      ; Fairy type match up added by G-Dubs
    db FIGHTING,     DARK,         SUPER_EFFECTIVE         ; Dark type match up added by G-Dubs
    db FIGHTING,     GLASS,        SUPER_EFFECTIVE         ; Glass type match up added by G-Dubs
    db POISON,       GRASS,        SUPER_EFFECTIVE
	db POISON,       POISON,       NOT_VERY_EFFECTIVE
	db POISON,       GROUND,       NOT_VERY_EFFECTIVE
	db POISON,       BUG,          SUPER_EFFECTIVE         ; Gen I type match up kept by G-Dubs              (Kept to buff Poison type)
	db POISON,       ROCK,         NOT_VERY_EFFECTIVE
	db POISON,       GHOST,        NOT_VERY_EFFECTIVE
	db POISON,       ICE,          NOT_VERY_EFFECTIVE      ; New type match up added by G-Dubs               (Added to buff Ice type)
    db POISON,       STEEL,        NO_EFFECT               ; Steel type match up added by G-Dubs
    db POISON,       FAIRY,        SUPER_EFFECTIVE         ; Fairy type match up added by G-Dubs
	db POISON,       GLASS,        NO_EFFECT               ; Glass type match up added by G-Dubs
	db FLYING,       ELECTRIC,     NOT_VERY_EFFECTIVE
	db FLYING,       FIGHTING,     SUPER_EFFECTIVE
	db FLYING,       BUG,          SUPER_EFFECTIVE
	db FLYING,       GRASS,        SUPER_EFFECTIVE
	db FLYING,       ROCK,         NOT_VERY_EFFECTIVE
	db FLYING,       STEEL, 	   NOT_VERY_EFFECTIVE      ; Steel type match up added by G-Dubs
   ;db FLYING,       ELECTRIC,     NOT_VERY_EFFECTIVE
   ;db FLYING,       STEEL, 	   NOT_VERY_EFFECTIVE
   ;db FLYING,       ROCK,         SUPER_EFFECTIVE         ; New Flying type match up changed by G-Dubs      (To be changed if Flying is split into Bird and Flying types)
   ;db FLYING,       BIRD,         NOT_VERY_EFFECTIVE      ; Bird type match up added by G-Dubs              (To be changed if Flying is split into Bird and Flying types)
   ;db BIRD,         FIGHTING,     SUPER_EFFECTIVE         ; Bird type match up added by G-Dubs              (To be changed if Flying is split into Bird and Flying types)
   ;db BIRD,         BUG,          SUPER_EFFECTIVE         ; Bird type match up added by G-Dubs              (To be changed if Flying is split into Bird and Flying types)
   ;db BIRD,         GRASS,        SUPER_EFFECTIVE         ; Bird type match up added by G-Dubs              (To be changed if Flying is split into Bird and Flying types)
   ;db BIRD,         ROCK,         NOT_VERY_EFFECTIVE      ; Bird type match up added by G-Dubs              (To be changed if Flying is split into Bird and Flying types)
   ;db BIRD,         STEEL, 	   NOT_VERY_EFFECTIVE      ; Bird type match up added by G-Dubs              (To be changed if Flying is split into Bird and Flying types)
   ;db BIRD,         GLASS, 	   NOT_VERY_EFFECTIVE      ; Bird type match up added by G-Dubs              (To be changed if Flying is split into Bird and Flying types)
    db BUG,          FIRE,         NOT_VERY_EFFECTIVE
	db BUG,          GRASS,        SUPER_EFFECTIVE
	db BUG,          FIGHTING,     NOT_VERY_EFFECTIVE
	db BUG,          FLYING,       NOT_VERY_EFFECTIVE
   ;db BUG,          BIRD,         NOT_VERY_EFFECTIVE      ; Bird type match up added by G-Dubs              (To be changed if Flying is split into Bird and Flying types)
	db BUG,          PSYCHIC_TYPE, SUPER_EFFECTIVE
	db BUG,          GHOST,        NOT_VERY_EFFECTIVE
	db BUG,          POISON,       SUPER_EFFECTIVE         ; Gen I type match up kept by G-Dubs              (Kept to buff Bug type)
    db BUG,          STEEL,        NOT_VERY_EFFECTIVE      ; Steel type match up added by G-Dubs 
	db BUG,          FAIRY,        NOT_VERY_EFFECTIVE      ; Fairy type match up added by G-Dubs
	db BUG,          DARK,         SUPER_EFFECTIVE         ; Dark type match up added by G-Dubs
	db BUG,          SOUND,        SUPER_EFFECTIVE         ; Sound type match up added by G-Dubs
    db BUG,          GLASS,        NOT_VERY_EFFECTIVE      ; Glass type match up added by G-Dubs
	db BUG,          ICE,          NOT_VERY_EFFECTIVE      ; New type match up added by G-Dubs               (Added to buff Ice type) 
    db ROCK,         FIRE,         SUPER_EFFECTIVE
	db ROCK,         FIGHTING,     NOT_VERY_EFFECTIVE
	db ROCK,         GROUND,       NOT_VERY_EFFECTIVE
	db ROCK,         FLYING,       SUPER_EFFECTIVE
   ;db ROCK,         BIRD,         SUPER_EFFECTIVE         ; Bird type match up added by G-Dubs              (To be changed if Flying is split into Bird and Flying types)
	db ROCK,         BUG,          SUPER_EFFECTIVE
	db ROCK,         ICE,          SUPER_EFFECTIVE
	db ROCK,         STEEL,        NOT_VERY_EFFECTIVE      ; Steel type match up added by G-Dubs
	db ROCK,         GLASS,        SUPER_EFFECTIVE         ; Glass type match up added by G-Dubs
    db DRAGON,       DRAGON,       SUPER_EFFECTIVE
	db DRAGON,       STEEL,        NOT_VERY_EFFECTIVE      ; Steel type match up added by G-Dubs
	db DRAGON,       FAIRY,        NO_EFFECT               ; Fairy type match up added by G-Dubs
	db DRAGON,       GLASS,        SUPER_EFFECTIVE         ; Glass match up added by G-Dubs
	db STEEL,        FIRE,         NOT_VERY_EFFECTIVE      ; Steel type match up added by G-Dubs
	db STEEL,        WATER,        NOT_VERY_EFFECTIVE      ; Steel type match up added by G-Dubs
	db STEEL,        ELECTRIC,     NOT_VERY_EFFECTIVE      ; Steel type match up added by G-Dubs
	db STEEL,        ICE,          SUPER_EFFECTIVE         ; Steel type match up added by G-Dubs
	db STEEL,        ROCK,         SUPER_EFFECTIVE         ; Steel type match up added by G-Dubs
    db STEEL,        STEEL,        NOT_VERY_EFFECTIVE      ; Steel type match up added by G-Dubs
    db STEEL,        FAIRY,        SUPER_EFFECTIVE         ; Steel & Fairy type match up added by G-Dubs
	db STEEL,        SOUND,        SUPER_EFFECTIVE         ; Steel & Sound type match up added by G-Dubs
	db STEEL,        GLASS,        SUPER_EFFECTIVE         ; Steel & Glass type match up added by G-Dubs
   ;db STEEL,        BIRD,         SUPER_EFFECTIVE         ; Steel & Bird type match up added by G-Dubs      (To be changed if Flying is split into Bird and Flying types)
	db DARK,         STEEL,        NOT_VERY_EFFECTIVE      ; Gen II - V Steel type match up added by G-Dubs  (Added to buff Steel type, and to make it so that Steel type has some interaction to all types)
    db DARK,         FAIRY,        NOT_VERY_EFFECTIVE      ; Dark & Fairy type match up added by G-Dubs
	db DARK,         FIGHTING,     NOT_VERY_EFFECTIVE      ; Dark type match up added by G-Dubs
	db DARK,         PSYCHIC_TYPE, SUPER_EFFECTIVE         ; Dark type match up added by G-Dubs
	db DARK,         GHOST,        SUPER_EFFECTIVE         ; Dark type match up added by G-Dubs
	db DARK,         DARK,         NOT_VERY_EFFECTIVE      ; Dark type match up added by G-Dubs
	db DARK,         GLASS,        NOT_VERY_EFFECTIVE      ; Dark & Glass type match up added by G-Dubs
   ;db DARK,         BIRD,         NOT_VERY_EFFECTIVE      ; Dark & Bird type match up added by G-Dubs       (To be changed if Flying is split into Bird and Flying types)
	db FAIRY,        STEEL,        NOT_VERY_EFFECTIVE      ; Fairy & Steel type match up added by G-Dubs
	db FAIRY,        FIRE,         NOT_VERY_EFFECTIVE      ; Fairy type match up added by G-Dubs
	db FAIRY,        FIGHTING,     SUPER_EFFECTIVE         ; Fairy type match up added by G-Dubs
	db FAIRY,        POISON,       NOT_VERY_EFFECTIVE      ; Fairy type match up added by G-Dubs
	db FAIRY,        DRAGON,       SUPER_EFFECTIVE         ; Fairy type match up added by G-Dubs
	db FAIRY,        DARK,         SUPER_EFFECTIVE         ; Fairy & Dark type match up added by G-Dubs
	db FAIRY,        SOUND,        NOT_VERY_EFFECTIVE      ; Fairy & Sound type match up added by G-Dubs
    db FAIRY,        GLASS,        NOT_VERY_EFFECTIVE      ; Fairy & Glass type match up added by G-Dubs
    db SOUND,        WATER,        SUPER_EFFECTIVE         ; Sound type match up added by G-Dubs
	db SOUND,        FLYING,       SUPER_EFFECTIVE         ; Sound type match up added by G-Dubs
   ;db SOUND,        BIRD,         SUPER_EFFECTIVE         ; Sound & Bird type match up added by G-Dubs      (To be changed if Flying is split into Bird and Flying types)
	db SOUND,        GROUND,       SUPER_EFFECTIVE         ; Sound type match up added by G-Dubs
	db SOUND,        FAIRY,        SUPER_EFFECTIVE         ; Sound & Fairy type match up added by G-Dubs
	db SOUND,        SOUND,        NOT_VERY_EFFECTIVE      ; Sound type match up added by G-Dubs
	db SOUND,        BUG,          NOT_VERY_EFFECTIVE      ; Sound type match up added by G-Dubs
	db SOUND,        STEEL,        SUPER_EFFECTIVE         ; Sound & Steel type match up added by G-Dubs
	db SOUND,        ELECTRIC,     NOT_VERY_EFFECTIVE      ; Sound type match up added by G-Dubs
	db SOUND,        PSYCHIC_TYPE, NOT_VERY_EFFECTIVE      ; Sound type match up added by G-Dubs
	db SOUND,        ROCK,         SUPER_EFFECTIVE         ; Sound type match up added by G-Dubs
	db SOUND,        DRAGON,       NOT_VERY_EFFECTIVE      ; Sound type match up added by G-Dubs
	db SOUND,        GHOST,        NO_EFFECT               ; Sound type match up added by G-Dubs
	db SOUND,        GLASS,        SUPER_EFFECTIVE         ; Sound & Glass match up added by G-Dubs
	db GLASS,        GLASS,        NOT_VERY_EFFECTIVE      ; Glass type match up added by G-Dubs
	db GLASS,        BUG,          SUPER_EFFECTIVE         ; Glass type match up added by G-Dubs
	db GLASS,        GRASS,        SUPER_EFFECTIVE         ; Glass type match up added by G-Dubs
	db GLASS,        FIRE,         SUPER_EFFECTIVE         ; Glass type match up added by G-Dubs
	db GLASS,        WATER,        SUPER_EFFECTIVE         ; Glass type match up added by G-Dubs
	db GLASS,        STEEL,        NOT_VERY_EFFECTIVE      ; Glass & Steel type match up added by G-Dubs
	db GLASS,        POISON,       SUPER_EFFECTIVE         ; Glass type match up added by G-Dubs
	db GLASS,        SOUND,        SUPER_EFFECTIVE         ; Glass & Sound type match up added by G-Dubs
	db GLASS,        ICE,          NOT_VERY_EFFECTIVE      ; Glass type match up added by G-Dubs
	db GLASS,        FLYING,       SUPER_EFFECTIVE         ; Glass type match up added by G-Dubs
   ;db GLASS,        BIRD,         SUPER_EFFECTIVE         ; Glass & Bird type match up added by G-Dubs      (To be changed if Flying is split into Bird and Flying types)
	db GLASS,        FAIRY,        SUPER_EFFECTIVE         ; Glass & Fairy type match up added by G-Dubs
	db GLASS,        FIGHTING,     NOT_VERY_EFFECTIVE      ; Glass type match up added by G-Dubs       
	db -1 ; end
