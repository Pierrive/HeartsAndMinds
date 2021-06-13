params [
	["_player", (selectRandom allplayers)]
];

if (isNull objectParent _player) exitWith {};

private _landVehicle = vehicle _player;
private _allPartVeh = [_landVehicle] call fnc_checkPartVehicle;
private _partDamage = [];

//Change chanel allplayers
[4] remoteExec ["setCurrentChannel", 0, false];

if (count _allPartVeh > 0) then {
	_posBombs = getpos (vehicle _player);
	_jdam_bomb_position = "Land_HelipadEmpty_F" createVehicle _posBombs;
	_exploseMortar = createSoundSource ["MyExploseMortarSound", _posBombs, [], 0];
	[_posBombs,_size_rad,_jdam_bomb_position] remoteExec ["fnc_effectBomb", 0, false];
	while {((count _partDamage) < 2) || ((count _allPartVeh) > 0) || ((damage _landVehicle) < 0.5)} do {
		_randomPart = round (random (count _allPartVeh));
		_partVehSelect = _allPartVeh select _randomPart;
		_partDamage pushBackUnique _partVehSelect;
		[_landVehicle , [_partVehSelect, 1]] remoteExec ["setHit", _landVehicle];
		_allPartVeh deleteAt _randomPart;
	};
} else {
	[_landVehicle,_player] spawn {
		_landVehicle = _this select 0;
		_player = _this select 1;
		_posBombs = getpos (vehicle _player);
		_jdam_bomb_position = "Land_HelipadEmpty_F" createVehicle _posBombs;
		_hitPointName = getText ( configFile >> "CfgVehicles" >> typeOf _landVehicle >> "HitPoints" >> "HitEngine" >> "name"); 
		_exploseMortar = createSoundSource ["MyExploseMortarSound", _posBombs, [], 0];
		[_posBombs,_size_rad,_jdam_bomb_position] remoteExec ["fnc_effectBomb", 0, false];
		[_landVehicle , [_hitPointName, 0.1]] remoteExec ["setHit", _landVehicle];
		sleep 5;
		[_landVehicle , [_hitPointName, 0.3]] remoteExec ["setHit", _landVehicle];
		sleep 5;
		[_landVehicle , [_hitPointName, 0.5]] remoteExec ["setHit", _landVehicle];
		sleep 5;
		[_landVehicle , [_hitPointName, 0.7]] remoteExec ["setHit", _landVehicle];
		sleep 5;
		[_landVehicle , [_hitPointName, 0.9]] remoteExec ["setHit", _landVehicle];
		sleep 5;
		[_landVehicle , [_hitPointName, 1]] remoteExec ["setHit", _landVehicle];
	};
};

_landVehicle vehicleChat "ATTENTION, un EEI a endommagé le véhicule, je vais devoir m'arréter";
_landVehicle allowDamage false;
{[(_x select 0), false] remoteExec ["allowDamage", 0, false]} foreach (fullCrew _landVehicle);
sleep 2;
_landVehicle vehicleChat "Attendez que je sois complètement arréter avant de sortir";
sleep 10;
[_landVehicle , 0.2] remoteExec ["setfuel", _landVehicle];

waitUntil {(speed _landVehicle) < 5};

[0] remoteExec ["setCurrentChannel", 0, false];
{[_x, true] remoteExec ["allowDamage", 0, false];} foreach allplayers;