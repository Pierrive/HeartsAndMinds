
/* ----------------------------------------------------------------------------
Function: btc_fnc_mil_class

Description:
    Fill me when you edit me !

Parameters:
    _factions - [Array]
    _en_AA - [Boolean]
    _en_tank - [Boolean]

Returns:

Examples:
    (begin example)
        _result = [] call btc_fnc_mil_class;
    (end)

Author:
    Vdauphin

---------------------------------------------------------------------------- */

params [
    ["_factions", [], [[]]],
    ["_en_AA", false, [false]],
    ["_en_tank", false, [false]]
];

private _enemy_side = [];
private _type_units = [];
private _type_divers = [];
private _divers = [];
private _type_crewmen = "";
private _type_boats = [];
private _type_motorized = [];
private _type_motorized_armed = [];
private _type_mg = [];
private _type_gl = [];
private _type_air_armed = [];

//Get all vehicles
private _cfgVehicles = configFile >> "CfgVehicles";
private _allclass = ("(configName _x) isKindOf 'AllVehicles'" configClasses _cfgVehicles) apply {configName _x};
_allclass = _allclass select {getNumber (_cfgVehicles >> _x >> "scope") isEqualTo 2};

//Check if faction existe
private _cfgFactionClasses = configFile >> "CfgFactionClasses";
_factions = _factions apply {
    if !isClass(_cfgFactionClasses >> _x) then {
        "IND_G_F"
    } else {
        _x
    };
};

_enemy_side = [east, west, independent, civilian] select getNumber (_cfgFactionClasses >> _factions select 0 >> "side");

//Prevent selecting same side as player side
if (_enemy_side isEqualTo btc_player_side) exitWith {
    [["IND_G_F"], _en_AA, _en_tank] call btc_fnc_mil_class;
};

{
    private _faction = _x;

    //Get all vehicles of the _faction selected
    private _allclass_f = _allclass select {(toUpper getText (_cfgVehicles >> _x >> "faction")) isEqualTo _faction};

    //Units
    _divers = _allclass_f select {[_x, ["AssaultRifle", "64 + 32"]] call btc_fnc_mil_ammoUsage};
    if (_divers isEqualTo []) then {
        _divers = if (_enemy_side isEqualTo east) then {
            ["O_diver_F", "O_diver_exp_F", "O_diver_TL_F"]
        } else {
            ["I_diver_F", "I_diver_exp_F", "I_diver_TL_F"]
        };
    };
    _type_divers append _divers;
    _type_units append ((_allclass_f select {_x isKindOf "Man"}) - _divers);

    //Vehicles
    _type_boats append (_allclass_f select {_x isKindOf "Ship"});
    if (_type_boats isEqualTo []) then {
        _type_boats append ["I_Boat_Armed_01_minigun_F", "I_Boat_Transport_01_F", "I_SDV_01_F", "I_G_Boat_Transport_01_F"];
    };
    _type_motorized append (
        if (_en_tank) then {
            _allclass_f select {(_x isKindOf "Tank") || (_x isKindOf "Car") || (_x isKindOf "Truck") || (_x isKindOf "Truck_F")}
        } else {
            _allclass_f select {(_x isKindOf "Car") || (_x isKindOf "Truck") || (_x isKindOf "Truck_F")}
        }
    );
    _type_motorized_armed append (([_allclass_f select {((_x isKindOf "Air") || (_x isKindOf "Helicopter") || (_x isKindOf "Tank") || (_x isKindOf "Car"))}] call btc_fnc_find_veh_with_turret) select 0);

    //Static
    _type_mg append (_allclass_f select {_x isKindOf "StaticMGWeapon"});
    if (_type_mg isEqualTo []) then {
        _type_mg = ["O_HMG_01_F", "O_HMG_01_high_F"];
    };
    _type_gl append (_allclass_f select {_x isKindOf "StaticGrenadeLauncher"});
    if (_type_gl isEqualTo []) then {
        _type_gl = ["O_GMG_01_F", "O_GMG_01_high_F"];
    };

	//Air
	_type_air_armed append (_allclass_f select {(_x isKindOf "Air") || (_x isKindOf "Helicopter")});
	if (_type_air_armed isEqualTo []) then {
        _type_air_armed = ["O_Plane_Fighter_02_F", "O_Heli_Light_02_dynamicLoadout_F"];
    };  
} forEach _factions;

//Final filter unwanted units type
if !(_en_AA) then {
    //Remove Anti-Air Units
    _type_units = _type_units select {!([_x, ["MissileLauncher", "256"]] call btc_fnc_mil_ammoUsage)};
};
_type_units = _type_units select {
    !(getText (_cfgVehicles >> _x >> "role") isEqualTo "Crewman") &&
    ((_x find "_Survivor_") isEqualTo -1) &&
    ((_x find "_Story") isEqualTo -1) &&
    ((_x find "_unarmed_") isEqualTo -1) &&
    !(getText (_cfgVehicles >> _x >> "vehicleClass") isEqualTo "MenVR")
};
_type_crewmen = _type_units select 0;
_type_motorized = _type_motorized select {!(getNumber (_cfgVehicles >> _x >> "isUav") isEqualTo 1)};
_type_motorized_armed = _type_motorized_armed select {!(getNumber (_cfgVehicles >> _x >> "isUav") isEqualTo 1)};

[_enemy_side, _type_units, _type_divers, _type_crewmen, _type_boats, _type_motorized, _type_motorized_armed, _type_mg, _type_gl, _type_air_armed]