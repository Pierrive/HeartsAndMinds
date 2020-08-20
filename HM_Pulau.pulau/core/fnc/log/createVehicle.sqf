
/* ----------------------------------------------------------------------------
Function: btc_fnc_log_createVehicle

Description:
    Creates an empty object of given classname type.

Parameters:
    _type - Vehicle className. [String]
    _pos -  Desired placement position. If the exact position is occupied, nearest empty position is used. [Array]
    _dir - Desired direction. [Number]
    _customization - Customized appearance [Array]
    _isMedicalVehicle - Set the ACE parameter is a medical vehicle. [Boolean]
    _isRepairVehicle - Set the ACE parameter is a repair vehicle. [Boolean]
    _fuelSource - Define the ACE cargo fuel source. [Array]
    _pylons - Set pylon loadout. [Array]
    _isContaminated - Set a vehicle contaminated. [Boolean]
    _supplyVehicle - Is supply vehicle and current supply count. [Boolean]

Returns:

Examples:
    (begin example)
        _veh = ["vehicle_class_name", getPos player] call btc_fnc_log_createVehicle;
    (end)

Author:
    Vdauphin

---------------------------------------------------------------------------- */

params [
    ["_type", "", [""]],
    ["_pos", [0, 0, 0], [[]]],
    ["_dir", 0, [0]],
    ["_customization", [false, false], [[]]],
    ["_isMedicalVehicle", false, [true]],
    ["_isRepairVehicle", false, [true]],
    ["_fuelSource", [], [[]]],
    ["_pylons", [], [[]]],
    ["_isContaminated", false, [false]],
    ["_supplyVehicle", [], [[]]]
];

private _veh  = createVehicle [_type, ASLToATL _pos, [], 0, "CAN_COLLIDE"];
_veh setDir _dir;
_veh setPosASL _pos;

[_veh, _customization, _isMedicalVehicle, _isRepairVehicle, _fuelSource, _pylons, _isContaminated, _supplyVehicle] call btc_fnc_setVehProperties;

_veh setVariable ["btc_dont_delete", true];

private _textureHMTT = ["B_Truck_01_fuel_F", "B_Truck_01_ammo_F", "B_Truck_01_flatbed_F", "B_Truck_01_Repair_F", "B_Truck_01_covered_F"];
private _textureMRAP = ["B_MRAP_01_gmg_F", "B_MRAP_01_hmg_F", "B_MRAP_01_F"];

if (typeOf _veh in  _textureHMTT) then {
	_veh setObjectTextureGlobal [0, "scripts\images\Truck_01_Texture_DA.paa"];
	_veh setObjectTextureGlobal [1, "scripts\images\Truck_01_Texture_DA.paa"];
};

if (typeOf _veh in  _textureMRAP) then {
	_veh setObjectTextureGlobal [0, "scripts\images\MRAP_01_Texture_DA.paa"]; 
	_veh setObjectTextureGlobal [1, "scripts\images\MRAP_02_Texture_DA.paa"];
};

if (getNumber(configFile >> "CfgVehicles" >> typeOf _veh >> "isUav") isEqualTo 1) then {
    createVehicleCrew _veh;
};

_veh call btc_fnc_db_add_veh;

_veh
