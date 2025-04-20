TrainerNamePointers:
; These are only used for trainers' defeat speeches.
; They were originally shortened variants of the trainer class names
; in the Japanese versions, but are now redundant with TrainerNames.
	table_width 2
	dw .YoungsterName
	dw .BugCatcherName
	dw .LassName
	dw wTrainerName
	dw .JrTrainerMName
	dw .JrTrainerFName
	dw .PokemaniacName
	dw .SuperNerdName
	dw wTrainerName
	dw wTrainerName
	dw .BurglarName
	dw .EngineerName
	dw .UnusedJugglerName
	dw wTrainerName
	dw .SwimmerName
	dw wTrainerName
	dw wTrainerName
	dw .BeautyName
	dw wTrainerName
	dw .RockerName
	dw .JugglerName
	dw wTrainerName
	dw wTrainerName
	dw .BlackbeltName
	dw wTrainerName
	dw .ProfOakName
	dw .ChiefName
	dw .ScientistName
	dw wTrainerName
	dw .RocketName
	dw .CooltrainerMName
	dw .CooltrainerFName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw .JessieJamesName      ; New trainer class added by Vlad
	dw .PokeFanMName         ; New trainer class added by G-Dubs
	dw .PokeFanFName         ; New trainer class added by G-Dubs
	dw .GuitaristName        ; New trainer class added by G-Dubs	
	dw .SoldierName          ; New trainer class added by G-Dubs
	dw .LadyName             ; New trainer class added by G-Dubs
	dw .WaiterName           ; New trainer class added by G-Dubs
	assert_table_length NUM_TRAINERS

.YoungsterName:     db "YOUNGSTER@"
.BugCatcherName:    db "BUG CATCHER@"
.LassName:          db "LASS@"
.JrTrainerMName:    db "JR.TRAINER♂@"
.JrTrainerFName:    db "JR.TRAINER♀@"
.PokemaniacName:    db "POKéMANIAC@"
.SuperNerdName:     db "SUPER NERD@"
.BurglarName:       db "BURGLAR@"
.EngineerName:      db "ENGINEER@"
.UnusedJugglerName: db "JUGGLER@"
.SwimmerName:       db "SWIMMER@"
.BeautyName:        db "BEAUTY@"
.RockerName:        db "ROCKER@"
.JugglerName:       db "JUGGLER@"
.BlackbeltName:     db "BLACKBELT@"
.ProfOakName:       db "PROF.OAK@"
.ChiefName:         db "CHIEF@"
.ScientistName:     db "SCIENTIST@"
.RocketName:        db "ROCKET@"
.CooltrainerMName:  db "COOLTRAINER♂@"
.CooltrainerFName:  db "COOLTRAINER♀@"
.JessieJamesName:   db "JESSIE×JAMES@"      ; New trainer class added by Vlad
.PokeFanMName:      db "POKéFAN♂@"          ; New trainer class added by G-Dubs
.PokeFanFName:      db "POKéFAN♀@"          ; New trainer class added by G-Dubs
.GuitaristName:     db "GUITARIST@"         ; New trainer class added by G-Dubs	
.SoldierName:       db "SOLDIER@"           ; New trainer class added by G-Dubs
.LadyName:          db "LADY@"              ; New trainer class added by G-Dubs
.WaiterName:        db "WAITER@"            ; New trainer class added by G-Dubs
