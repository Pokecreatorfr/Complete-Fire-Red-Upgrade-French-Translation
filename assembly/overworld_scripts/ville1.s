.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"

@@@ RDC @@@@
.global gMapScripts_Scriptprof
gMapScripts_Scriptprof:
	mapscript MAP_SCRIPT_ON_FRAME_TABLE LevelScripts_scriptprof_Scripts
	.byte MAP_SCRIPT_TERMIN

LevelScripts_scriptprof_Scripts:
	levelscript 0x4050, 1, LevelScripts_scriptprof_Script
    .hword LEVEL_SCRIPT_TERMIN

LevelScripts_scriptprof_Start:
	compare 0x4050 0x1
	if 0x1 _call LevelScripts_scriptprof_Script
	end

LevelScripts_scriptprof_Script:
	lockall
	pause 0x1E
	playsong 0x12E 0x0
	special 0x113
	applymovement 0x7F LevelScripts_scriptprof_Movecamera1
	waitmovement 0x7F
	special 0x114
	applymovement 0x1 LevelScripts_scriptprof_Movementprof1
	waitmovement 0x1
	textcolor 0x7
	msgbox gText_scriptprof_Messageprof1 0x3
	special 0x113
	applymovement 0x7F LevelScripts_scriptprof_Movecamera2
	applymovement 0x1 LevelScripts_scriptprof_Movementprof2
	waitmovement 0x1
	special 0x114
	msgbox gText_scriptprof_Messageprof2 0x3
	applymovement 0xFF LevelScripts_scriptprof_Movementplayer1
	applymovement 0x1 LevelScripts_scriptprof_Movementprof3
	waitmovement 0x1
	fadescreen 0x0
	warp 0x4 0x2 0x0
	fadescreen 0x1
	special 0x113
	applymovement 0x7F LevelScripts_scriptprof_Movecamera3
	waitmovement 0x7F
	applymovement 0x1 LevelScripts_scriptprof_Movementprof1
	waitmovement 0x1
	msgbox gText_scriptprof_Messageprof3 0x3
	applymovement 0x7F LevelScripts_scriptprof_Movecamera4
	waitmovement 0x7F
	special 0x114
	applymovement 0xFF LevelScripts_scriptprof_Movementplayer2
	waitmovement 0xFF
	pause 0x100
	applymovement 0xFF LevelScripts_scriptprof_Movementplayer3
	waitmovement 0xFF
	releaseall
	end

LevelScripts_scriptprof_Movecamera1:
.byte 0x10
.byte 0x10
.byte 0x10
.byte 0x10
.byte 0x12
.byte 0x12
.byte 0x12
.byte 0x12
.byte 0x10
.byte 0x10
.byte 0x10
.byte 0x10
.byte 0xFE

LevelScripts_scriptprof_Movementprof1:
.byte 0x65
.byte 0xFE

LevelScripts_scriptprof_Movecamera2:
.byte 0x11
.byte 0x11
.byte 0x11
.byte 0x11
.byte 0x13
.byte 0x13
.byte 0x13
.byte 0x13
.byte 0x11
.byte 0x11
.byte 0x11
.byte 0x11
.byte 0xFE

LevelScripts_scriptprof_Movementprof2:
.byte 0x11
.byte 0x11
.byte 0x11
.byte 0x11
.byte 0x11
.byte 0x11
.byte 0x13
.byte 0x13
.byte 0x11
.byte 0x13
.byte 0x13
.byte 0x11
.byte 0xFE

LevelScripts_scriptprof_Movementprof3:
.byte 0x10
.byte 0x12
.byte 0x10
.byte 0x12
.byte 0x12
.byte 0x10
.byte 0x10
.byte 0x10
.byte 0x10
.byte 0x10
.byte 0x10
.byte 0x13
.byte 0x13
.byte 0x13
.byte 0x08
.byte 0xFE

LevelScripts_scriptprof_Movementplayer1:
.byte 0x10
.byte 0x10
.byte 0x12
.byte 0x10
.byte 0x12
.byte 0x12
.byte 0x10
.byte 0x10
.byte 0x10
.byte 0x10
.byte 0x10
.byte 0x10
.byte 0x13
.byte 0x13
.byte 0x13
.byte 0x08
.byte 0xFE

LevelScripts_scriptprof_Movecamera3:
.byte 0x2A
.byte 0x2A
.byte 0x2A
.byte 0x2A
.byte 0x2A
.byte 0x2A
.byte 0xFE

LevelScripts_scriptprof_Movecamera4:
.byte 0x29
.byte 0x29
.byte 0x29
.byte 0x29
.byte 0x29
.byte 0x29
.byte 0xFE

LevelScripts_scriptprof_Movementplayer2:
.byte 0x66
.byte 0xFE

LevelScripts_scriptprof_Movementplayer3:
.byte 0x2A
.byte 0x2A
.byte 0x2A
.byte 0x2A
.byte 0x2A
.byte 0x2A
.byte 0x0E
.byte 0x01
.byte 0xFE



