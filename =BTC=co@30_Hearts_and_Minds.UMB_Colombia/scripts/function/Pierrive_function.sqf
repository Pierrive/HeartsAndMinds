//Zeus synchro
zeus_remote_call = compileFinal preprocessFileLineNumbers "scripts\function\fn_zeus_syncro.sqf";
btc_fnc_drone = compile preprocessFileLineNumbers "scripts\function\reconDrone.sqf";
fnc_ask_reputation = compile preprocessFileLineNumbers "scripts\function\ask_reputation_scripts.sqf";

if (isServer) then {
	//Create C130 for Halo Jump
	_staticPlane = "Land_HelipadEmpty_F" createVehicle [0,0,0]; 
	_C130_halo = "RHS_C130J" createVehicle [0,0,0]; 
	_staticPlane setDir 0;
	_staticPlane setDir 0;
	_C130_halo allowDamage false; 
	_staticPlane setpos [(getPosASL _staticPlane) select 0, (getPosASL _staticPlane) select 1, (((getPosASL _staticPlane) select 2) + 3000)];
	_C130_halo attachTo [_staticPlane, [0, 0, 0]];
	missionNamespace setVariable ["Halo_Veh", _C130_halo, true];	
};

//Ajout dans autre fichier de compilation
//Dans : =BTC=co@30_Hearts_and_Minds.pulau\core\fnc\compile.sqf
//fichier ajouté dans core\fnc\db
//btc_fnc_db_saveVeh = compile preprocessFileLineNumbers "core\fnc\db\saveVeh.sqf";
//fnc_CheckSaveVeh = compile preprocessFileLineNumbers "scripts\function\fn_CheckSaveVeh.sqf";