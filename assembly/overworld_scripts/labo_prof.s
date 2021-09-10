.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"

.global gMapScripts_Scriptprofpart2
gMapScripts_Scriptprofpart2:
	mapscript MAP_SCRIPT_ON_FRAME_TABLE LevelScripts_Scriptprofpart2_Scripts
	.byte MAP_SCRIPT_TERMIN

LevelScripts_Scriptprofpart2_Scripts:
	levelscript 0x4050, 1, LevelScripts_Scriptprofpart2_Script
    .hword LEVEL_SCRIPT_TERMIN

LevelScripts_Scriptprofpart2_Script:
    lockall
    pause 0x1E
    special 0x113
    applymovement CAMERA LevelScripts_Scriptprofpart2_Movecamera3
    waitmovement CAMERA
    special 0x114
    pause 0x1E
    special 0x113
    applymovement CAMERA LevelScripts_Scriptprofpart2_Movecamera4
    waitmovement CAMERA
    special 0x114
    applymovement PLAYER LevelScripts_Scriptprofpart2_Movementplayer2
    waitmovement PLAYER
    pause 0x1E
    applymovement PLAYER LevelScripts_Scriptprofpart2_Movementplayer3  
    waitmovement PLAYER
    setvar VAR_HISTOIRE_PRINCIPALE 0x2
    releaseall
    end


LevelScripts_Scriptprofpart2_Movecamera3:
	.byte walk_up_onspot_vfast, walk_up_onspot_vfast, walk_up_onspot_vfast, walk_up_onspot_vfast, walk_up_onspot_vfast, walk_up_onspot_vfast, end_m

LevelScripts_Scriptprofpart2_Movecamera4:
	.byte walk_down_onspot_vfast, walk_down_onspot_vfast, walk_down_onspot_vfast, walk_down_onspot_vfast, walk_down_onspot_vfast, walk_down_onspot_vfast, end_m

LevelScripts_Scriptprofpart2_Movementplayer2:
	.byte say_smile, end_m

LevelScripts_Scriptprofpart2_Movementplayer3:
	.byte walk_up_onspot_vfast, walk_up_onspot_vfast, walk_up_onspot_vfast, walk_up_onspot_vfast, walk_up_onspot_vfast, walk_up_onspot_vfast, walk_left_slow, look_up, end_m