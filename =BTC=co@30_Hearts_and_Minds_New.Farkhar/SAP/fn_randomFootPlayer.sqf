// Event foot player

params [
    ["_spawnpos", [0,0,0]],
    ["_player", (selectRandom allplayers)],
	["_safeZone", ""]
];

private _randomEvent = random 100;

if ((_randomEvent >= 0) && (_randomEvent < 5)) then {
	if (debug_VLR) then {diag_log format ["Function randomFootPlayer (1): Type Evenement : Mortar Shoot et Random : %1", _randomEvent]};

	[_player, 1, _safeZone] spawn fnc_mortar;
};

if ((_randomEvent > 5) && (_randomEvent < 15)) then {
	if (debug_VLR) then {diag_log format ["Function randomFootPlayer (1): Type Evenement : Random troop Air et Random : %1", _randomEvent]};

	private _grp = [vlr_class_units, 1, _spawnpos] call fnc_spawnGrpUnits;
	private _vehicle = [_grp, _spawnpos, vlr_class_TransportAir] call fnc_createVeh;
	waitUntil {missionNamespace getVariable "CheckVehReady"};
	missionNamespace setVariable ["CheckVehReady", false, true];
	[_grp, _vehicle, _player, _spawnpos, _safeZone] spawn fnc_addWPTransport;
};

if ((_randomEvent > 15) && (_randomEvent < 22)) then {
	if (debug_VLR) then {diag_log format ["Function randomFootPlayer (1): Type Evenement : Kamikaze et Random : %1", _randomEvent]};

	_randomTypeKem = random 100;

	if (_randomTypeKem > 49) then {
		if (isClass (configfile >> "CfgVehicles" >> "CUP_C_TT650_CIV")) then {
			private _grp = [vlr_class_units, 1, _spawnpos] call fnc_spawnGrpUnits;
			private _unitKam = (units _grp) select 0;
			[_unitKam, false] call fnc_typeKam;
			private _vehicle = [_grp, _spawnpos, ["CUP_C_TT650_TK_CIV", "CUP_I_TT650_NAPA", "CUP_B_M1030_USA"]] call fnc_createVeh;
			waitUntil {missionNamespace getVariable "CheckVehReady"};
		missionNamespace setVariable ["CheckVehReady", false, true];
			[_unitKam, _vehicle, _player, _safeZone] spawn fnc_addWPKam;

		} else {
		
			private _grp = [vlr_class_units, 1, _spawnpos] call fnc_spawnGrpUnits;
			private _unitKam = (units _grp) select 0;
			[_unitKam, true] call fnc_typeKam;
			private _vehicle = [_grp, _spawnpos, ["C_Van_01_fuel_F", "C_Van_01_box_F", "C_Truck_02_fuel_F"]] call fnc_createVeh;
			waitUntil {missionNamespace getVariable "CheckVehReady"};
			missionNamespace setVariable ["CheckVehReady", false, true];
			[_unitKam, _vehicle, _player, _safeZone] spawn fnc_addWPKam;
		};
		
	} else {
	
		private _grp = [vlr_class_units, 1, _spawnpos] call fnc_spawnGrpUnits;
		private _unitKam = (units _grp) select 0;
		[_unitKam, false] call fnc_typeKam;	
		[_unitKam, _vehicle, _player, _safeZone] spawn fnc_addWPKam;
	};
};

if ((_randomEvent > 22) && (_randomEvent < 36)) exitWith {
	if (debug_VLR) then {diag_log format ["Function randomFootPlayer (1): Type Evenement : Nothing et Random : %1", _randomEvent]};
};

if ((_randomEvent > 36) && (_randomEvent < 63)) then {
	if (debug_VLR) then {diag_log format ["Function randomFootPlayer (1): Type Evenement : Embush building et Random : %1", _randomEvent]};

	private _grp = [vlr_class_units, 8, _spawnpos] call fnc_spawnGrpUnits;
	private _grpInBuilding = [_grp, _player, _spawnpos, false] call fnc_CheckHousse;
	[_grp, false, _player, _safeZone] spawn fnc_addWP;
};

if ((_randomEvent > 63) && (_randomEvent < 73)) then {
	if (debug_VLR) then {diag_log format ["Function randomFootPlayer (1): Type Evenement : Renfort troop Veh et Random : %1", _randomEvent]};

	private _grp = [vlr_class_units, 1, _spawnpos] call fnc_spawnGrpUnits;
	private _vehicle = [_grp, _spawnpos, (vlr_class_VehTransport)] call fnc_createVeh;
	waitUntil {missionNamespace getVariable "CheckVehReady"};
	missionNamespace setVariable ["CheckVehReady", false, true];
	[_grp, _vehicle, _player, _spawnpos, _safeZone] spawn fnc_addWPTransport;
};

if ((_randomEvent > 73) && (_randomEvent <= 100)) then {
	if (debug_VLR) then {diag_log format ["Function randomFootPlayer (1): Type Evenement : Hunter player et Random : %1", _randomEvent]};

	private _grp = [vlr_class_units, 8, _spawnpos] call fnc_spawnGrpUnits;
	private _grpInBuilding = [_grp, _player, _spawnpos, true] call fnc_CheckHousse;
	[_grp, true, _player, _safeZone] spawn fnc_addWP;
};