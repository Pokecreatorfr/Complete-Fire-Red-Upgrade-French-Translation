.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"

@@@ RDC @@@@
.global EventScript_script_descente_escaliers_premiere_fois1_Start
EventScript_script_descente_escaliers_premiere_fois1_Start:
	lock
	applymovement 0x1 EventScript_script_descente_escaliers_premiere_fois1_Mouvement1
	waitmovement 0x0
	msgbox gText_script_descente_escaliers_premiere_fois1_Msgmaman MSG_FACE
	applymovement 0x1 EventScript_script_descente_escaliers_premiere_fois1_Mouvement2
	waitmovement 0x0
	release
	setvar VAR_HISTOIRE_PRINCIPALE 0x1
	end
EventScript_script_descente_escaliers_premiere_fois1_Mouvement1:
.byte 0x1
.byte 0x62
.byte 0x13
.byte 0x11
.byte 0x11
.byte 0x12
.byte 0x11
.byte 0x3
.byte 0xFE

EventScript_script_descente_escaliers_premiere_fois1_Mouvement2:
.byte 0x10
.byte 0xF
.byte 0x10
.byte 0x10
.byte 0xE
.byte 0x2
.byte 0xFE

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.global EventScript_script_descente_escaliers_premiere_fois2_Start
EventScript_script_descente_escaliers_premiere_fois2_Start:
	lock
	applymovement 0x1 EventScript_script_descente_escaliers_premiere_fois2_Mouvement1
	waitmovement 0x0
	msgbox gText_script_descente_escaliers_premiere_fois1_Msgmaman MSG_FACE
	applymovement 0x1 EventScript_script_descente_escaliers_premiere_fois2_Mouvement2
	waitmovement 0x0
	release
	setvar 0x4050 0x1
	end
EventScript_script_descente_escaliers_premiere_fois2_Mouvement1:
.byte 0x1
.byte 0x62
.byte 0x13
.byte 0x13
.byte 0x11
.byte 0xFE

EventScript_script_descente_escaliers_premiere_fois2_Mouvement2:
.byte 0x10
.byte 0xE
.byte 0xE
.byte 0x2
.byte 0xFE

@@@ Chambre Hero @@@
.global EventScript_scripttv_Start
EventScript_scripttv_Start:
	msgbox gText_scripttv_Msgtv MSG_SIGN
	end

.global EventScript_scriptwiiu_Start
EventScript_scriptwiiu_Start:
	msgbox gText_scriptwiiu_Msgwiiu MSG_SIGN
	end
.global EventScript_scriptpc_Start
EventScript_scriptpc_Start:
	special 0x187
	compare LASTRESULT 0x2
	if 0x1 _goto 0x81A7AE0
	lockall
	setvar 0x8004 0x20
	special 0x17D
	setvar 0x8004 0x1
	special 0xD6
	sound 0x4
	msgbox gText_scriptpc_Pcstring MSG_KEEPOPEN
	special 0xF9
	waitstate
	special 0x190
	releaseall
	end

	@---------------
EventScript_scriptpc_End:
	release
	end