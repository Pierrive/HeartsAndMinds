
/* ----------------------------------------------------------------------------
Function: btc_fnc_log_createVehicleArsenal

Description:
    Creates an empty object of given classname type.

Parameters:
    _type - Vehicle className. [String]
    _pos -  Desired placement position. If the exact position is occupied, nearest empty position is used. [Array]
    _dir - Desired direction. [Number]

Returns:

Examples:
    (begin example)
        _veh = ["vehicle_class_name", getPos player] call btc_fnc_log_createVehicleArsenal;
    (end)

Author:
    Vdauphin

---------------------------------------------------------------------------- */

params [
    ["_type", "", [""]],
    ["_pos", [0, 0, 0], [[]]],
    ["_dir", 0, [0]]
];

_nbSpawnVeh = (ambianceBase getVariable "btc_nb_veh_create") + 1;
ambianceBase setVariable ["btc_nb_veh_create", _nbSpawnVeh, true];
if ((ambianceBase getVariable "btc_nb_veh_create") > 6) then {ambianceBase setVariable ["btc_nb_veh_create", 6, true];};

private _veh = _type createVehicle _pos;
_veh allowDamage false;
_veh setPos _pos;
_veh setDir _dir;

if ([_veh] call ace_medical_fnc_isMedicalVehicle) then {
    _veh setVariable ["ace_medical_medicclass", 1, true];
};

if ([_veh] call ace_repair_fnc_isRepairVehicle) then {
    _veh setVariable ["ACE_isRepairVehicle", _isRepairVehicle, true];
};

if(VVS_Checkbox) then
{
	clearWeaponCargoGlobal _veh;
	clearMagazineCargoGlobal _veh;
	clearItemCargoGlobal _veh;
};

_veh setVariable ["btc_dont_delete", true];
_veh allowDamage true;

if (getNumber(configFile >> "CfgVehicles" >> typeOf _veh >> "isUav") isEqualTo 1) then {
    createVehicleCrew _veh;
};

_veh addMPEventHandler ["MPKilled", {
    if (isServer) then {_this call btc_fnc_eh_veh_killed};
}];

if ((isNumber (configfile >> "CfgVehicles" >> typeOf _veh >> "ace_fastroping_enabled")) && !(typeOf _veh isEqualTo "RHS_UH1Y_d")) then {
    [_veh] call ace_fastroping_fnc_equipFRIES
};

_veh
