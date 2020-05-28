
/* ----------------------------------------------------------------------------
Function: btc_fnc_side_get_city

Description:
    Fill me when you edit me !

Parameters:

Returns:

Examples:
    (begin example)
        _result = [] call btc_fnc_side_get_city;
    (end)

Author:
    Giallustio

---------------------------------------------------------------------------- */
params [["_wp_ratios", btc_p_mil_wp_ratios, [[]]]];
_wp_ratios params ["_wp_house", "_wp_sentry"];

private _useful = btc_city_all select {(_x getVariable ["occupied", false]) && !((_x getVariable ["type", ""]) in ["NameLocal", "Hill", "NameMarine"])};
if (_useful isEqualTo []) exitWith {[] spawn btc_fnc_side_create;};

private _city = selectRandom _useful;
private _pos = getPos _city;

btc_side_aborted = false;
btc_side_done = false;
btc_side_failed = false;
btc_side_assigned = true;
publicVariable "btc_side_assigned";

btc_side_jip_data = [6, _pos, _city getVariable "name"];
btc_side_jip_data remoteExec ["btc_fnc_task_create", 0];

_city setVariable ["spawn_more", true];

private _groupSidePatrolArray = [_pos, 60, 3, _wp_sentry] call btc_fnc_mil_create_group;
private _groupSideHouseArray = [_pos, 8, 3, _wp_house] call btc_fnc_mil_create_group;
private _groupSidePatrol = _groupSidePatrolArray select 0;  
private _groupSideHouse = _groupSideHouseArray select 0;

waitUntil {sleep 5; (btc_side_aborted || btc_side_failed || !(_city getVariable ["occupied", false]))};

btc_side_assigned = false;
publicVariable "btc_side_assigned";

if (btc_side_aborted || btc_side_failed) exitWith {
    6 remoteExec ["btc_fnc_task_fail", 0];
};

80 call btc_fnc_rep_change;

6 remoteExec ["btc_fnc_task_set_done", 0];

[{{deleteVehicle _x} forEach units _groupSidePatrol; {deleteVehicle _x} forEach units _groupSideHouse;}, [], 120] call CBA_fnc_waitAndExecute;
