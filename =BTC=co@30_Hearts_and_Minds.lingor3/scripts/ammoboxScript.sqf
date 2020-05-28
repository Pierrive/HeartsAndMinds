private _statusBox = [];
private _posCargo = getPos (_this select 0);

while {true} do {
	_Cargo = ["B_CargoNet_01_ammo_F","CargoNet_01_box_F","B_supplyCrate_F"];
	_randomCargo = selectRandom _Cargo;
	private _CreeCargo = createVehicle [_randomCargo, _posCargo, [], 0, "NONE"];
	clearItemCargoGlobal _CreeCargo;
	[_CreeCargo, true] call ace_arsenal_fnc_initBox;
	[ "AmmoboxInit", [ _CreeCargo, true, {(_this distance _target) < 10} ] ] call BIS_fnc_arsenal;
	_statusBox pushBack _CreeCargo;
	waituntil {(getpos _CreeCargo) distance _posCargo > 200};
	if ((count _statusBox) > 3) then {_caisse = (_statusBox select 0); _caisse setdammage 1; sleep 30; deleteVehicle _caisse;};
	sleep 300;
	_statusBox deleteAt (_statusBox find _CreeCargo);
};
