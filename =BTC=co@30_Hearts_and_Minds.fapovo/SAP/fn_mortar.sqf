 //[[bombe,1],"scripts\fakeBomb.sqf"] remoteExec ["execVM"];
//_null = [bombeTrg_11_object,1,false,2] execvm "scripts\pierrive\fakeBomb.sqf"

params [
    ["_player", (selectRandom allplayers)],
    ["_size_rad", 1],
	["_safeZone", ""]
];

if (!isServer) exitWith {};

private _randomShoot = floor (random 4);
private _posBombs = [_player, 50, 200, 0, 0, 0, 0, [_safeZone, [(getPos _player), 20]], []] call BIS_fnc_findSafePos;
private _posBombs2 = [_player, 50, 200, 0, 0, 0, 0, [_safeZone, [(getPos _player), 20]], []] call BIS_fnc_findSafePos;
private _posBombs3 = [_player, 50, 200, 0, 0, 0, 0, [_safeZone, [(getPos _player), 20]], []] call BIS_fnc_findSafePos;

private _jdam_bomb_position = "Land_HelipadEmpty_F" createVehicle _posBombs;
private _jdam_bomb_position2 = "Land_HelipadEmpty_F" createVehicle _posBombs2;
private _jdam_bomb_position3 = "Land_HelipadEmpty_F" createVehicle _posBombs3;

[_player,_randomShoot] spawn {
	private ["_player","_randomShoot"];
	_player = _this select 0;
	_randomShoot = _this select 1;
	_fireMortar = createSoundSource ["MyFireMortarSound", [(((getPosATL _player) select 0) + 200),(((getPosATL _player) select 1) + 200),(((getPosATL _player) select 2) + 5)], [], 0];
	sleep 5;
	if (_randomShoot > 1) then {sleep 7};
	if (_randomShoot > 2) then {sleep 8};
	deleteVehicle _fireMortar;
};

sleep 5;
_alerteSmoke1 = "SmokeshellRed" createVehicle _posBombs;
if (_randomShoot > 1) then {
	sleep 7;
	_alerteSmoke2 = "SmokeshellRed" createVehicle _posBombs2
};

if (_randomShoot > 2) then {
	sleep 7;
	_alerteSmoke3 = "SmokeshellRed" createVehicle _posBombs3
};
sleep 6;

[_posBombs,_size_rad,_jdam_bomb_position] spawn {
	params [
		["_posBombs", [0,0,0]],
		["_size_rad", 1],
		["_jdam_bomb_position", [0,0,0]]
	];
	
	_fallMortar = createSoundSource ["MyFallMortarSound", _posBombs, [], 0];
	sleep 5;
	deleteVehicle _fallMortar;
	[_posBombs,_size_rad,_jdam_bomb_position] remoteExec ["fnc_effectBomb", 0, false];
	_exploseMortar = createSoundSource ["MyExploseMortarSound", _posBombs, [], 0];
	[_posBombs] remoteExec ["fnc_effectExplosion", 0, false];
	_jdam_bomb_crater = "Land_WW2_Krater_Sand" createVehicle _posBombs;
	sleep 4;
	deleteVehicle _exploseMortar;
};

if (_randomShoot > 1) then {
	sleep 8;
	[_posBombs2,_size_rad,_jdam_bomb_position2] spawn {
		params [
			["_posBombs2", [0,0,0]],
			["_size_rad", 1],
			["_jdam_bomb_position2", [0,0,0]]
		];
		
		_fallMortar = createSoundSource ["MyFallMortarSound", _posBombs2, [], 0];
		sleep 5;
		deleteVehicle _fallMortar;
		[_posBombs2,_size_rad,_jdam_bomb_position2] remoteExec ["fnc_effectBomb", 0, false];
		_exploseMortar = createSoundSource ["MyExploseMortarSound", _posBombs2, [], 0];
		[_posBombs2] remoteExec ["fnc_effectExplosion", 0, false];
		_jdam_bomb_crater = "Land_WW2_Krater_Sand" createVehicle _posBombs2;
		sleep 4;
		deleteVehicle _exploseMortar;
	};
};

if (_randomShoot > 2) then {
	sleep 8;
	[_posBombs3,_size_rad,_jdam_bomb_position3] spawn {
		params [
			["_posBombs3", [0,0,0]],
			["_size_rad", 1],
			["_jdam_bomb_position2", [0,0,0]]
		];
		
		_fallMortar = createSoundSource ["MyFallMortarSound", _posBombs3, [], 0];
		sleep 5;
		deleteVehicle _fallMortar;
		[_posBombs3,_size_rad,_jdam_bomb_position2] remoteExec ["fnc_effectBomb", 0, false];
		_exploseMortar = createSoundSource ["MyExploseMortarSound", _posBombs3, [], 0];
		[_posBombs3] remoteExec ["fnc_effectExplosion", 0, false];
		_jdam_bomb_crater = "Land_WW2_Krater_Sand" createVehicle _posBombs3;
		sleep 4;
		deleteVehicle _exploseMortar;
	};
};

sleep 20;
deleteVehicle _jdam_bomb_position;
deleteVehicle _jdam_bomb_position2;
deleteVehicle _jdam_bomb_position3;