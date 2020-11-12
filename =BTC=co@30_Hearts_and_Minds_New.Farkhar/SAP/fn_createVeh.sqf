params [
    ["_grp", grpNull],
	["_spawnpos", [0,0,0]],
	["_className", ""]
];

private _newvehicle = objNull;

private _newvehicle = (selectRandom _className) createVehicle _spawnpos;
_newvehicle allowdamage false;

if ((_newvehicle isKindof "Car") || (_newvehicle isKindof "Motorcycle") || (_newvehicle isKindof "Tank")) then {
	private _nearAllRoads = _newvehicle nearRoads 500;
	if ( (count _nearAllRoads) > 0) then {
		_nearRoads = [_nearAllRoads, [], {_newvehicle distance2D _x}, "ASCEND"] call BIS_fnc_sortBy;
		_road = _nearRoads select 0;
		_newvehicle setPosATL (getPosATL _road);
	} else {
		_newvehicle setPosATL [(_spawnpos select 0), (_spawnpos select 1), 1];
	};
} else {
	if (_newvehicle isKindof "Air") then {
		if !(isEngineOn _newvehicle) then {
			[_newvehicle, _spawnpos] spawn {
				_newvehicle = _this select 0;
				_spawnpos = _this select 1;
				_newvehicle allowDamage false;
				_newvehicle engineOn true;
				sleep 20;
				_newvehicle setPosATL [(_spawnpos select 0), (_spawnpos select 1), 500];
				_newvehicle allowDamage true;
			};
		} else {
			_newvehicle setPosATL [(_spawnpos select 0), (_spawnpos select 1), 500];
		};
	} else {
		_newvehicle setPosATL [(_spawnpos select 0), (_spawnpos select 1), 1];
	};
};

clearWeaponCargoGlobal _newvehicle;
clearMagazineCargoGlobal _newvehicle;
clearItemCargoGlobal _newvehicle;
clearBackpackCargoGlobal _newvehicle;

if (({alive _x} count units _grp) > 0) then {{_x moveInAny _newvehicle} foreach units _grp};
createVehicleCrew _newvehicle;
(crew _newvehicle) joinSilent _grp;

if !(_newvehicle isKindof "Air") then {
	_newvehicle setVectorUp surfaceNormal position _newvehicle;
	_newvehicle forceFlagTexture vlr_flag_texture;
};

_newvehicle engineOn true;
_newvehicle allowdamage true;
_newvehicle setdamage 0;

missionNamespace setVariable ["CheckVehReady", true, true];
if (debug_VLR) then {diag_log format ["Function createVeh (1): Type véhicule : %1", _newvehicle]};

_newvehicle