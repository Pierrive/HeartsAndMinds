params [
    ["_group", grpNull],
    ["_vehicle", objNull],
    ["_player", (selectRandom allplayers)],
	["_spawnpos", [0,0,0]],
	["_safeZone", ""]
];

if (isNull _group) exitWith {};

if (debug_VLR) then {diag_log format ["Function addWPTransport (1): Véhicule : %1 And Véhicule terrestre : %2 And Véhicule Aérien : %3 ", _vehicle, (_vehicle isKindOf "LandVehicle"), (_vehicle isKindOf "Air")]};

while {(alive _vehicle) && (alive (driver _vehicle)) && ((_vehicle distance2D _player) > 500)} do {
	if ((getPos _player) inArea _safeZone) exitWith {};
	if (!((alive _vehicle) && (alive (driver _vehicle)))) exitWith {};
	
	while {(count (waypoints _group)) != 0} do {deleteWaypoint ((waypoints _group) select 0);};
	_WP = _group addWaypoint [getpos (vehicle _player), 100, 0];
	_WP setWaypointType "MOVE";
	_WP setWaypointSpeed "FULL";
	_WP setWaypointBehaviour "SAFE";
	_WP setWaypointCombatMode "YELLOW";
	sleep 10;
};

private _cargoGrp = createGroup [btc_enemy_side, true];
_freeCargoPositions = _vehicle emptyPositions "cargo";

if (debug_VLR) then {diag_log format ["Function addWPTransport (2): Cargo Groupe : %1 ", _cargoGrp]};
	
for "_i" from 1 to _freeCargoPositions do {
	(selectRandom vlr_class_units) createUnit [_spawnpos, _cargoGrp,"", 0.5, "private"];
};

_tempoArray = missionNamespace getVariable "AllGroupVLR";
_tempoArray pushBack _cargoGrp;
missionNamespace setVariable ["AllGroupVLR", _tempoArray, true];

if (debug_VLR) then {diag_log format ["Function addWPTransport (3): Total Groupe : %1 ", _tempoArray]};
	
if (_vehicle isKindOf "Air") then {
	{
		if !(backpack _x isEqualTo "") then {removeBackpack _x};
		_x addBackpack "B_Parachute";
		_x moveInCargo _vehicle;
	} foreach (units _cargoGrp);
	
	sleep 3;
	
	{_x action ["eject", vehicle _x]; unassignVehicle _x; [_x] ordergetin false; [_x] allowGetIn false;} forEach (units _cargoGrp);
	_cargoGrp leaveVehicle _vehicle;
	
	while {(count (waypoints _group)) != 0} do {deleteWaypoint ((waypoints _group) select 0);};
	
	_transport_waypoint_delete = _group addWaypoint [_spawnpos, 0];
	_transport_waypoint_delete setWaypointType "MOVE";
	_transport_waypoint_delete setWaypointCompletionRadius 100;
	_transport_waypoint_delete setWaypointStatements ["true", "{deleteVehicle _x;} forEach crew this + [this]"];
	
	while {({alive _x} count units _cargoGrp) > 0} do {
		if ((getPos _player) inArea _safeZone) exitWith {};
		while {(count (waypoints _cargoGrp)) != 0} do {deleteWaypoint ((waypoints _cargoGrp) select 0);};
		_cargo_WP = _cargoGrp addWaypoint [getpos (vehicle _player), 0];
		_cargo_WP setWaypointType "SAD";
		_cargo_WP setWaypointSpeed "NORMAL";
		_cargo_WP setWaypointBehaviour "AWARE";
		_cargo_WP setWaypointCombatMode "RED";
		_cargo_WP setWaypointCompletionRadius 30;
		sleep 60;
	};
};

if (_vehicle isKindOf "LandVehicle") then {
	{
		_x moveInCargo _vehicle;
	} foreach (units _cargoGrp);
	(driver _vehicle) stop true;
	_vehicle setFuel 0;
	
	sleep 3;

	{_x action ["eject", vehicle _x]; unassignVehicle _x; [_x] ordergetin false; [_x] allowGetIn false;} forEach (units _cargoGrp);
	_cargoGrp leaveVehicle _vehicle;
	
	while {(count (waypoints _group)) != 0} do {deleteWaypoint ((waypoints _group) select 0);};
	
	(driver _vehicle) stop false;
	_vehicle setFuel 1;
	_transport_waypoint_delete = _group addWaypoint [_spawnpos, 0];
	_transport_waypoint_delete setWaypointType "MOVE";
	_transport_waypoint_delete setWaypointCompletionRadius 100;
	_transport_waypoint_delete setWaypointStatements ["true", "{deleteVehicle _x;} forEach crew this + [this]"];
	
	while {({alive _x} count units _cargoGrp) > 0} do {
		if ((getPos _player) inArea _safeZone) exitWith {};
		while {(count (waypoints _cargoGrp)) != 0} do {deleteWaypoint ((waypoints _cargoGrp) select 0);};
		_cargo_WP = _cargoGrp addWaypoint [getpos (vehicle _player), 0];
		_cargo_WP setWaypointType "SAD";
		_cargo_WP setWaypointSpeed "NORMAL";
		_cargo_WP setWaypointBehaviour "AWARE";
		_cargo_WP setWaypointCombatMode "RED";
		_cargo_WP setWaypointCompletionRadius 30;
		sleep 60;
	};
};



