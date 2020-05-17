
/* ----------------------------------------------------------------------------
Function: btc_fnc_mil_create_patrol

Description:
    Fill me when you edit me !

Parameters:
    _random - [Number]
    _active_city - [Object]
    _area - [Number]

Returns:

Examples:
    (begin example)
        _result = [] call btc_fnc_mil_create_patrol;
    (end)

Author:
    Giallustio

---------------------------------------------------------------------------- */

params [
    ["_random", 0, [0]],
    ["_active_city", objNull, [objNull]],
    ["_area", btc_patrol_area, [0]]
];

if (isNil "btc_military_id") then {btc_military_id = 1;};

if (_random isEqualTo 0) then {
    _random = selectRandom [1, 2];
};

if (btc_debug_log) then {
    [format ["_random = %1 _active_city %2 _area %3 btc_patrol_active = %4", _random, _active_city, _area, count btc_patrol_active], __FILE__, [false]] call btc_fnc_debug_message;
};

sleep 5 + random 10;

//Remove if too far from player
if ([_active_city, grpNull, _area] call btc_fnc_patrol_playersInAreaCityGroup) exitWith {false};

//Find a city
private _cities = btc_city_all inAreaArray [getPosWorld _active_city, _area, _area];
private _usefuls = _cities select {!(_x getVariable ["active", false]) && _x getVariable ["occupied", false]};
if (_usefuls isEqualTo []) exitWith {false};

//Randomize position if city has a beach, so position could be in water
private _start_city = selectRandom _usefuls;
private _pos = [];
if (_start_city getVariable ["hasbeach", false]) then {
    _pos = [getPos _start_city, (_start_city getVariable ["RadiusX", 0]) + (_start_city getVariable ["RadiusY", 0]), btc_p_sea] call btc_fnc_randomize_pos;
} else {
    _pos = getPos _start_city;
};
private _pos_isWater = surfaceIsWater _pos;
if (_pos_isWater) then {
    _pos = [_pos select 0, _pos select 1, 0];
    _random = 2;
};

//force ennemie patrol
private _allPlayers = call BIS_fnc_listPlayers;

_car = 0;
_tank = 0;
_chopper = 0;
btc_patrol_plane = false;

{
	if ((vehicle _x) isKindOf "Car") then {_car = _car + 1};
	if ((vehicle _x) isKindOf "Tank") then {_tank = _tank + 1};
	if ((vehicle _x) isKindOf "Helicopter") then {_chopper = _chopper + 1};
	if ((vehicle _x) isKindOf "Plane") then {btc_patrol_plane = true};
} foreach _allPlayers;

private _ratioTank = _tank / (count _allPlayers);
private _ratioCar = _car / (count _allPlayers);
private _ratioChopper = _chopper / (count _allPlayers);
private _randomChopper = random 1;

if (_randomChopper > 0.25) then {
	if (_ratioTank > 0.7) then {_random = 2};
	if (_ratioCar > 0.5) then {_random = 2};
	if (_ratioChopper > 0.7) then {_random = 3};
} else {
	_random = 4;
};

//Creating units
private _group = createGroup [btc_enemy_side, true];
btc_patrol_active pushBack _group;
_group setVariable ["no_cache", true];
_group setVariable ["btc_patrol_id", btc_military_id, btc_debug];
btc_military_id = btc_military_id + 1;

if (btc_patrol_plane && ((count btc_patrol_plane_active) < 3)) then {
	[_pos,_start_city,_active_city,_area,_pos_isWater] spawn {
		params ["_pos","_start_city","_active_city","_area","_pos_isWater"];
		private _groupPlane = createGroup [btc_enemy_side, true];
		btc_patrol_plane_active pushBack _groupPlane;

	    _veh_type_plane = selectRandom ["UK3CB_TKA_O_L39_PYLON", "UK3CB_TKA_O_Antonov_AN2_Armed", "UK3CB_TKA_O_MIG29SM", "UK3CB_TKA_O_Su25SM"];
        _pos = [_pos, 0, 500, 13, false] call btc_fnc_findsafepos;
		private _plane = [_groupPlane, _pos, _veh_type_plane] call btc_fnc_mil_createVehicle;
		_plane setVariable ["btc_crews", _groupPlane];

		private _fuelEh = _plane addEventHandler ["Fuel", btc_fnc_patrol_eh];
		_plane setVariable ["btc_eh", [_fuelEh]];
		
		[_groupPlane, [_start_city, _active_city], _area, _pos_isWater] call btc_fnc_patrol_init;
		
		[[_groupPlane]] call btc_fnc_set_groupsOwner;
	};
};

switch (_random) do {
    case 1 : {
        private _n_units = 4 + (round random 4);
        _pos = [_pos, 0, 50, 10, false] call btc_fnc_findsafepos;

        [_group, _pos, _n_units] call btc_fnc_mil_createUnits;
    };
    case 2 : {
        private _veh_type = "";
        if (_pos_isWater) then {
            _veh_type = selectRandom btc_type_boats;
        } else {
            _veh_type = selectRandom (btc_type_motorized + [selectRandom btc_civ_type_veh]);
            //Tweak position of spawn
            private _roads = _pos nearRoads 150;
            _roads = _roads select {isOnRoad _x};
            if (_roads isEqualTo []) then {
                _pos = [_pos, 0, 500, 13, false] call btc_fnc_findsafepos;
            } else {
                _pos = getPos selectRandom _roads;
            };
        };
        private _veh = [_group, _pos, _veh_type] call btc_fnc_mil_createVehicle;
        _veh setVariable ["btc_crews", _group];

        private _fuelEh = _veh addEventHandler ["Fuel", btc_fnc_patrol_eh];
        _veh setVariable ["btc_eh", [_fuelEh]];
    };
	case 3 : {
        private _veh_type_air = "";
		_luckSpawnAIr = random 1;
		
        if (_luckSpawnAIr < 0.70) then {
			if (_pos_isWater) then {
				_veh_type_air = selectRandom btc_type_boats;
			} else {
				if ((random 1) > 0.55) then {
					_veh_type_air = selectRandom btc_type_motorized_armed;
					//Tweak position of spawn
					private _roads = _pos nearRoads 150;
					_roads = _roads select {isOnRoad _x};
					if (_roads isEqualTo []) then {
						_pos = [_pos, 0, 500, 13, false] call btc_fnc_findsafepos;
					} else {
						_pos = getPos selectRandom _roads;
					};
					
					private _veh = [_group, _pos, _veh_type_air] call btc_fnc_mil_createVehicle;
					_veh setVariable ["btc_crews", _group];

					private _fuelEh = _veh addEventHandler ["Fuel", btc_fnc_patrol_eh];
					_veh setVariable ["btc_eh", [_fuelEh]];
					
				} else {
				    private _n_units = 4 + (round random 4);
					_pos = [_pos, 0, 50, 10, false] call btc_fnc_findsafepos;

					[_group, _pos, _n_units] call btc_fnc_mil_createUnits;
				};
			};
		} else {
            _veh_type_air = selectRandom btc_type_air;
            //Tweak position of spawn
            private _roads = _pos nearRoads 150;
            _roads = _roads select {isOnRoad _x};
            if (_roads isEqualTo []) then {
                _pos = [_pos, 0, 500, 13, false] call btc_fnc_findsafepos;
            } else {
                _pos = getPos selectRandom _roads;
            };
			
			private _veh = [_group, _pos, _veh_type_air] call btc_fnc_mil_createVehicle;
			_veh setVariable ["btc_crews", _group];

			private _fuelEh = _veh addEventHandler ["Fuel", btc_fnc_patrol_eh];
			_veh setVariable ["btc_eh", [_fuelEh]];
        };
    };
	case 4 : {
        _veh_type_air = selectRandom btc_type_air;

        private _roads = _pos nearRoads 150;
        _roads = _roads select {isOnRoad _x};
        if (_roads isEqualTo []) then {
            _pos = [_pos, 0, 500, 13, false] call btc_fnc_findsafepos;
        } else {
			_pos = getPos selectRandom _roads;
        };
			
		private _veh = [_group, _pos, _veh_type_air] call btc_fnc_mil_createVehicle;
		_veh setVariable ["btc_crews", _group];

		private _fuelEh = _veh addEventHandler ["Fuel", btc_fnc_patrol_eh];
		_veh setVariable ["btc_eh", [_fuelEh]];
    };
};

[_group, [_start_city, _active_city], _area, _pos_isWater] call btc_fnc_patrol_init;

[[_group]] call btc_fnc_set_groupsOwner;

true
