// Event Air player

params [
    ["_spawnpos", [0,0,0]],
    ["_player", (selectRandom allplayers)],
	["_safeZone", ""],
	["_randomEvent", (random 100)]
];

if ((_randomEvent >= 0) && (_randomEvent < 64)) exitWith {
	if (debug_VLR) then {diag_log format ["Function randomAirPlayer (1): Type Evenement : Nothing et Random : %1", _randomEvent]};
};

if ((_randomEvent > 64) && (_randomEvent < 74)) then {
	if (debug_VLR) then {diag_log format ["Function randomAirPlayer (1): Type Evenement : AA enemy Veh et Random : %1", _randomEvent]};

	private _grp = [vlr_class_units, 1, _spawnpos] call fnc_spawnGrpUnits;
	private _vehicle = [_grp, _spawnpos, vlr_class_VehAA] call fnc_createVeh;
	waitUntil {missionNamespace getVariable "CheckVehReady"};
	missionNamespace setVariable ["CheckVehReady", false, true];
	[_grp, false, _player, _safeZone] spawn fnc_addWP;
};

if ((_randomEvent > 74) && (_randomEvent < 90)) then {
	if (debug_VLR) then {diag_log format ["Function randomAirPlayer (1): Type Evenement : AA enemy Men et Random : %1", _randomEvent]};

	private _grp = [vlr_class_AAunits, 3, _spawnpos] call fnc_spawnGrpUnits;
	[_grp, false, _player, _safeZone] spawn fnc_addWP;
};

if ((_randomEvent > 90) && (_randomEvent < 95)) then {
	if (debug_VLR) then {diag_log format ["Function randomAirPlayer (1): Type Evenement : Enemy Air et Random : %1", _randomEvent]};

	private _grp = [vlr_class_units, 1, _spawnpos] call fnc_spawnGrpUnits;
	private _vehicle = [_grp, _spawnpos, vlr_class_AirArmed] call fnc_createVeh;
	waitUntil {missionNamespace getVariable "CheckVehReady"};
	missionNamespace setVariable ["CheckVehReady", false, true];
	[_grp, false, _player, _safeZone] spawn fnc_addWP;
};

if ((_randomEvent > 95) && (_randomEvent < 100)) then {
	if (debug_VLR) then {diag_log format ["Function randomAirPlayer (1): Type Evenement : Random Accident and Embush Air et Random : %1", _randomEvent]};

	if (((vehicle _player) isKindOf "Air") && (((getPos (vehicle _player)) select 2) > 20)) then {
		[_player] spawn fnc_crashHeli;
		waitUntil {isTouchingGround (vehicle _player) || (((getPos (vehicle _player)) select 2) < 1)};
		private _grp = [vlr_class_units, 1, _spawnpos] call fnc_spawnGrpUnits;
		private _vehicle = [_grp, _spawnpos, (vlr_class_VehTransport + vlr_class_TransportAir)] call fnc_createVeh;
		waitUntil {missionNamespace getVariable "CheckVehReady"};
		missionNamespace setVariable ["CheckVehReady", false, true];
		[_grp, _vehicle, _player, _spawnpos, _safeZone] spawn fnc_addWPTransport;
	};	
};