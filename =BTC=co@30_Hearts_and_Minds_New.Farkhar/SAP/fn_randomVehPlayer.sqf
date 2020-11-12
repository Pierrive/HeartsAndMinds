// Event Veh player

params [
    ["_spawnpos", [0,0,0]],
    ["_player", (selectRandom allplayers)],
	["_safeZone", ""]
];

private _randomEvent = random 100;

if ((_randomEvent >= 0) && (_randomEvent < 54)) then {
	if (debug_VLR) then {diag_log format ["Function randomVehPlayer (1): Type Evenement : Nothing et Random : %1", _randomEvent]};
};

if ((_randomEvent > 54) && (_randomEvent < 62)) then {
	if (debug_VLR) then {diag_log format ["Function randomVehPlayer (1): Type Evenement : AT enemy Veh light et Random : %1", _randomEvent]};

	private _grp = [vlr_class_units, 1, _spawnpos] call fnc_spawnGrpUnits;
	private _vehicle = [_grp, _spawnpos, vlr_class_CarArmed] call fnc_createVeh;
	waitUntil {missionNamespace getVariable "CheckVehReady"};
	missionNamespace setVariable ["CheckVehReady", false, true];
	[_grp, false, _player, _safeZone] spawn fnc_addWP;
};

if ((_randomEvent > 62) && (_randomEvent < 69)) then {
	if (debug_VLR) then {diag_log format ["Function randomVehPlayer (1): Type Evenement : AT enemy Veh Heavy et Random : %1", _randomEvent]};

	private _grp = [vlr_class_units, 1, _spawnpos] call fnc_spawnGrpUnits;
	private _vehicle = [_grp, _spawnpos, vlr_class_Tanks] call fnc_createVeh;
	waitUntil {missionNamespace getVariable "CheckVehReady"};
	missionNamespace setVariable ["CheckVehReady", false, true];
	[_grp, true, _player, _safeZone] spawn fnc_addWP;
};

if ((_randomEvent > 69) && (_randomEvent < 77)) then {
	if (debug_VLR) then {diag_log format ["Function randomVehPlayer (1): Type Evenement : Random Accident and Embush LandVehicle et Random : %1", _randomEvent]};

	if (((vehicle _player) isKindOf "LandVehicle") && ((speed (vehicle _player)) > 10)) then {
		[_player] spawn fnc_crashLandVehicle;
		waitUntil {(speed (vehicle _player)) < 3};
		private _grp = [vlr_class_units, 1, _spawnpos] call fnc_spawnGrpUnits;
		private _vehicle = [_grp, _spawnpos, (vlr_class_VehTransport + vlr_class_TransportAir)] call fnc_createVeh;
		waitUntil {missionNamespace getVariable "CheckVehReady"};
		missionNamespace setVariable ["CheckVehReady", false, true];
		[_grp, _vehicle, _player, _spawnpos, _safeZone] spawn fnc_addWPTransport;
	};	
};

if ((_randomEvent > 77) && (_randomEvent < 85)) then {
	if (debug_VLR) then {diag_log format ["Function randomVehPlayer (1): Type Evenement : Enemy Air et Random : %1", _randomEvent]};

	private _grp = [vlr_class_units, 1, _spawnpos] call fnc_spawnGrpUnits;
	private _vehicle = [_grp, _spawnpos, vlr_class_AirArmed] call fnc_createVeh;
	waitUntil {missionNamespace getVariable "CheckVehReady"};
	missionNamespace setVariable ["CheckVehReady", false, true];
	[_grp, false, _player, _safeZone] spawn fnc_addWP;
};

if ((_randomEvent > 85) && (_randomEvent < 100)) then {
	if (debug_VLR) then {diag_log format ["Function randomVehPlayer (1): Type Evenement : Embush Road Men et Random : %1", _randomEvent]};
	
	private _ArrayPosOnRoad = [_player] call fnc_CheckDirRoadP;
	if (count _ArrayPosOnRoad > 0) then {
		private _PosOnRoad = getPosATL (_ArrayPosOnRoad select 0);
		private _RealPosRoad = [((_PosOnRoad select 0) + (round (random 10))), ((_PosOnRoad select 1) + (round (random 10))), (_PosOnRoad select 2)];
		private _grp = [vlr_class_ATunits, 8, _RealPosRoad] call fnc_spawnGrpUnits;
		private _grpVeh = [vlr_class_ATunits, 1, _RealPosRoad] call fnc_spawnGrpUnits;
		private _vehicle = [_grpVeh, _RealPosRoad, vlr_class_CarArmed] call fnc_createVeh;
	};
}; 