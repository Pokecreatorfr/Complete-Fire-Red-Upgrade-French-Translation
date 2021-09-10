.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"

.global gMapScripts_Scriptprof
gMapScripts_Scriptprof:
	mapscript MAP_SCRIPT_ON_FRAME_TABLE LevelScripts_scriptprof_Scripts
	.byte MAP_SCRIPT_TERMIN

LevelScripts_scriptprof_Scripts:
	levelscript 0x4050, 1, LevelScripts_scriptprof_Script
    .hword LEVEL_SCRIPT_TERMIN

LevelScripts_scriptprof_Script:
	lockall
	pause 0x1E
	playsong 0x12E 0x0
	special 0x113
	applymovement CAMERA LevelScripts_scriptprof_Movecamera1
	waitmovement CAMERA
	special 0x114
	applymovement 0x1 LevelScripts_scriptprof_Movementprof1
	waitmovement 0x1
	textcolor 0x7
	msgbox gText_scriptprof_Messageprof1 0x3
	special 0x113
	applymovement CAMERA LevelScripts_scriptprof_Movecamera2
	applymovement 0x1 LevelScripts_scriptprof_Movementprof2
	waitmovement 0x1
	special 0x114
	msgbox gText_scriptprof_Messageprof2 0x3
	applymovement PLAYER LevelScripts_scriptprof_Movementplayer1
	applymovement 0x1 LevelScripts_scriptprof_Movementprof3
	waitmovement 0x1
	releaseall
	warp 0x4 0x2 0xFF 0x8 0x
	end

LevelScripts_scriptprof_Movecamera1:
	.byte walk_down , walk_down, walk_down, walk_down, walk_left, walk_left, walk_left, walk_left, walk_down, walk_down, walk_down, walk_down, end_m

LevelScripts_scriptprof_Movementprof1:
	.byte say_double_exclaim, end_m

LevelScripts_scriptprof_Movecamera2:
	.byte walk_up, walk_up, walk_up, walk_up, walk_right, walk_right, walk_right, walk_right, walk_up, walk_up, walk_up, walk_up, end_m

LevelScripts_scriptprof_Movementprof2:
	.byte walk_up, walk_up, walk_up, walk_up, walk_up, walk_up, walk_right, walk_right, walk_up, walk_right, walk_right, walk_up, end_m

LevelScripts_scriptprof_Movementprof3:
	.byte walk_down, walk_left, walk_down, walk_left, walk_left, walk_down, walk_down, walk_down, walk_down, walk_down, walk_down, walk_right, walk_right, walk_right, walk_up_very_slow, end_m

LevelScripts_scriptprof_Movementplayer1:
	.byte walk_down, walk_down, walk_left, walk_down, walk_left, walk_left, walk_down, walk_down, walk_down, walk_down, walk_down, walk_down, walk_right, walk_right, walk_right, walk_up_very_slow, end_m