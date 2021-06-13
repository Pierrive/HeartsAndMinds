//[_unit,["House"],200] call Pierrive_fnc_RandomPosMaison;

params [
	["_grp", grpNull],
	["_player", (selectRandom allPlayers)],
	["_pos", [0,0,0]],
	["_hunter", false]
];

if (isNull _grp) exitWith {};

private _allBuildings = [];
private _allPositions = [];


if (_hunter) then {
	_nBuilding = nearestBuilding _player;
	
	if (((_player distance2D (getPos _nBuilding)) < 900) && ((_player distance2D (getPos _nBuilding)) > 200)) then {	
		_allBuildings pushBack _nBuilding;
	};
} else {
	_nBuilding = nearestBuilding _pos;
		
	if (((_player distance2D (getPos _nBuilding)) < 1400) && ((_player distance2D (getPos _nBuilding)) > 400)) then {	
		_allBuildings pushBack _nBuilding;
	};
};

if (debug_VLR) then {diag_log format ["Function CheckHousse (1): %1 and %2 and %3", _allBuildings, (getpos (_allBuildings select 0)), _hunter]};

if (count _allBuildings == 0) then {
	if (_hunter) then {
		_allBuildingsCheck = nearestObjects [_player, ["HOUSE"], 900, true];
		if (count _allBuildingsCheck > 0) then {
			{
				if (((_player distance2D (getPos _x)) < 900) && ((_player distance2D (getPos _x)) > 200)) then {
					_allBuildings pushBack _x;
				};
			} foreach _allBuildingsCheck;
		};
	} else {
		_allBuildingsCheck = nearestObjects [_pos, ["HOUSE"], 1000, true];
		if (count _allBuildingsCheck > 0) then {
			{
				if (((_player distance2D (getPos _x)) < 1400) && ((_player distance2D (getPos _x)) > 400)) then {
					_allBuildings pushBack _x;
				};
			} foreach _allBuildingsCheck;
		};	
	};
};

if (debug_VLR) then {diag_log format ["Function CheckHousse (2): %1 and %2", _allBuildings, (getpos (_allBuildings select 0))]};

if (count _allBuildings > 0) then {
	private _nearBuildingPlayer = [_allBuildings, [], { _player distance2D _x }, "ASCEND"] call BIS_fnc_sortBy;
	private _SelectBuilding = _nearBuildingPlayer select 0;
	private _PosBuilding = getPosATL _SelectBuilding;
	_allPositions append (_SelectBuilding buildingPos -1);
	private _numberPos = count _allPositions;
	_posSelect = 0;
	
	if (debug_VLR) then {diag_log format ["Function CheckHousse (3): %1 and %2", _allPositions, _nearBuildingPlayer]};

	{
		if (_numberPos == 0) then {
			_anotherPos = [_PosBuilding, 1, 20, 2, 0, 0, 0, [], []] call BIS_fnc_findSafePos;
			_x setPos _anotherPos;
		} else {
			_x setPos (_allPositions select _posSelect);
		};
	} forEach units _grp;
};

_allPositions

