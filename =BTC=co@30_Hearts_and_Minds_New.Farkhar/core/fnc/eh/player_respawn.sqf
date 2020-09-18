
/* ----------------------------------------------------------------------------
Function: btc_fnc_eh_player_respawn

Description:
    Change reputation when player respawn and set position for respawn.

Parameters:
    _pos - Respawn position. [Array]

Returns:

Examples:
    (begin example)
        _result = [] call btc_fnc_eh_player_respawn;
    (end)

Author:
    Giallustio

---------------------------------------------------------------------------- */

params [
    ["_pos", [0, 0, 0], [[]]]
];

player setPosASL _pos;
player addRating 9999;
player setCaptive false;
[player, [missionNamespace, "inventory_var"]] call BIS_fnc_loadInventory;

//Fonction Pierrive
[] execVM "scripts\respawnPierrive.sqf";

//TOW fonction
player setVariable ["SA_Tow_Actions_Loaded",false];

btc_rep_malus_player_respawn remoteExecCall ["btc_fnc_rep_change", 2];
