params [
    ["_group", grpNull],
    ["_hunter", false],
    ["_player", (selectRandom allplayers)],
	["_safeZone", ""]
];

if (isNull _group) exitWith {};

while {(count (waypoints _group)) != 0} do {deleteWaypoint ((waypoints _group) select 0);};

private _vehicle = vehicle leader _group;
private _pos = [_player, 50, 150, 2, 0, 0, 0, [_safeZone], []] call BIS_fnc_findSafePos;
	
if (_hunter) then {
	if ((getPos _player) inArea _safeZone) exitWith {};

	_hunterWP = _group addWaypoint [getpos (vehicle _player), 0, 0];
	_hunterWP waypointAttachVehicle (vehicle _player);
	_hunterWP setWaypointType "SAD";
	_hunterWP setWaypointSpeed "FULL";
	_hunterWP setWaypointBehaviour "COMBAT";
	_hunterWP setWaypointCombatMode "RED";
	
} else {
	if ((getPos _player) inArea _safeZone) exitWith {};
	
	if (_vehicle isKindOf "Air") then {
		[_group, _pos, 700, 5, "SAD", "SAFE", "RED", "UNCHANGED", "NO CHANGE", "", [3, 6, 9]] call CBA_fnc_taskPatrol
	} else {
		[_group, _pos, 300, 5, "SAD", "SAFE", "RED", "LIMITED", "STAG COLUMN", "", [3, 6, 9]] call CBA_fnc_taskPatrol
	};
};

sleep 10;

if (speed _vehicle < 2) then {
	while {(count (waypoints _group)) != 0} do {deleteWaypoint ((waypoints _group) select 0);};
	if (_hunter) then {
		while {(alive _vehicle) && (alive (driver _vehicle)) && !((getPos _player) inArea _safeZone)} do {
			private _anotherPos = [_player, 50, 150, 2, 0, 0, 0, [_safeZone], []] call BIS_fnc_findSafePos;
			(driver _vehicle) doMove _anotherPos;
			sleep 60;
			if (speed _vehicle < 2) exitWith {};
		};
	} else {
		(driver _vehicle) doMove _pos;
	};
};

sleep 10;

if (speed _vehicle < 2) then {
	doStop (driver _vehicle);
	if (_hunter) then {
		while {(alive _vehicle) && (alive (driver _vehicle)) && !((getPos _player) inArea _safeZone)} do {
			private _anotherPos = [_player, 50, 150, 2, 0, 0, 0, [_safeZone], []] call BIS_fnc_findSafePos;
			(driver _vehicle) moveTo _anotherPos;
			sleep 60;
			if (speed _vehicle < 2) exitWith {};
		};
	} else {
		(driver _vehicle) moveTo _pos;
	};
};