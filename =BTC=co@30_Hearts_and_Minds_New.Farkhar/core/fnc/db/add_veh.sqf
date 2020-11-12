
/* ----------------------------------------------------------------------------
Function: btc_fnc_db_add_veh

Description:
    Add vehicle to the wreck system.

Parameters:
    _veh - Vehicle to add in wreck system. [Object]
    _p_chem - Activate chemical propagation. [Boolean]

Returns:

Examples:
    (begin example)
        [cursorObject] call btc_fnc_db_add_veh;
    (end)

Author:
    Giallustio

---------------------------------------------------------------------------- */

params [
    ["_veh", objNull, [objNull]],
    ["_p_chem", btc_p_chem, [false]],
	["_veh_name", "", [""]]
];

if !(isServer) exitWith {
    _veh remoteExecCall ["btc_fnc_db_add_veh", 2];
};

if (_veh_name isEqualTo "") then {
	btc_vehicles pushBackUnique _veh;
} else {
	[_veh,""] remoteExec ["setVehicleVarName", 0];	
	missionNamespace setVariable [_veh_name, _veh, true]; 
    [_veh, _veh_name] remoteExecCall ["setVehicleVarName", 0, _veh_name];

	_veh_name_inArray = call compile _veh_name;
	btc_vehicles pushBackUnique _veh_name_inArray;
	if ((str _veh_name_inArray) in btc_vehicles) then {btc_vehicles deleteAt (btc_vehicles find (str _veh_name_inArray))};
};

missionNamespace setVariable ["ArrayVehNoRespawn", btc_vehicles, true];

_veh addMPEventHandler ["MPKilled", {
    if (isServer) then {_this call btc_fnc_eh_veh_killed};
}];
if ((isNumber (configfile >> "CfgVehicles" >> typeOf _veh >> "ace_fastroping_enabled")) && !(typeOf _veh isEqualTo "RHS_UH1Y_d")) then {
    [_veh] call ace_fastroping_fnc_equipFRIES
};

if (_p_chem) then {
    _veh addEventHandler ["GetIn", {
        [_this select 0, _this select 2] call btc_fnc_chem_propagate;
        _this
    }];
};
