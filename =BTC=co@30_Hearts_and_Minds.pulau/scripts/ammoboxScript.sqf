if (isServer) then {
	private _statusBox = [];
	private _posCargo = getPos (_this select 0);

	while {true} do {
		_Cargo = ["B_CargoNet_01_ammo_F","CargoNet_01_box_F","B_supplyCrate_F"];
		_randomCargo = selectRandom _Cargo;
		private _CreeCargo = createVehicle [_randomCargo, _posCargo, [], 0, "NONE"];
		clearItemCargoGlobal _CreeCargo;
		[_CreeCargo, [localize "STR_BTC_HAM_ACTION_ARSENAL_OPEN_BIS", "['Open', [!(btc_p_arsenal_Restrict isEqualTo 1), _this select 0]] call bis_fnc_arsenal;"]] remoteExec ["addAction", 0,true];
		[_CreeCargo, [localize "STR_BTC_HAM_ACTION_ARSENAL_OPEN_ACE", {params ["_target", "_caller", "_actionId", "_arguments"]; [_target, player] call ace_arsenal_fnc_openBox;}]] remoteExec ["addAction", 0,true];
		if !(btc_p_arsenal_Restrict isEqualTo 0) then {[_CreeCargo, btc_p_arsenal_Type, btc_p_arsenal_Restrict, btc_custom_arsenal] call btc_fnc_arsenal_data;};
		[_CreeCargo, true, [0,1.5,0.8], 0] call ace_dragging_fnc_setCarryable;
		//_CreeCargo addAction [localize "STR_BTC_HAM_ACTION_ARSENAL_OPEN_BIS", "['Open', [!(btc_p_arsenal_Restrict isEqualTo 1), _this select 0]] call bis_fnc_arsenal;"];
		//_CreeCargo addAction [localize "STR_BTC_HAM_ACTION_ARSENAL_OPEN_ACE", "[_CreeCargo, player] call ace_arsenal_fnc_openBox;"];
		_statusBox pushBack _CreeCargo;
		waituntil {(getpos _CreeCargo) distance _posCargo > 200};
		if ((count _statusBox) > 3) then {_caisse = (_statusBox select 0); _caisse setdammage 1; sleep 30; deleteVehicle _caisse;};
		sleep 300;
		_statusBox deleteAt (_statusBox find _CreeCargo);
	};
};