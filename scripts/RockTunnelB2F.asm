RockTunnelB2F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, RockTunnel3TrainerHeaders
	ld de, RockTunnelB2F_ScriptPointers
	ld a, [wRockTunnelB2FCurScript]
	call ExecuteCurMapScriptInTable
	ld [wRockTunnelB2FCurScript], a
	ret

RockTunnelB2F_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_ROCKTUNNELB2F_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_ROCKTUNNELB2F_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_ROCKTUNNELB2F_END_BATTLE

RockTunnelB2F_TextPointers:
	def_text_pointers
	

RockTunnel3TrainerHeaders:
	def_trainers

	db -1 ; end


