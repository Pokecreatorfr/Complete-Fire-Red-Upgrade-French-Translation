.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.global EventScript_script_descente_escaliers_premiere_fois1_Start
EventScript_script_descente_escaliers_premiere_fois1_Start:
	lock
	applymovement 0x1 EventScript_script_descente_escaliers_premiere_fois1_Mouvement1
	waitmovement 0x0
	msgbox gText_script_descente_escaliers_premiere_fois1_Msgmaman MSG_FACE
	applymovement 0x1 EventScript_script_descente_escaliers_premiere_fois1_Mouvement2
	waitmovement 0x0
	release
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