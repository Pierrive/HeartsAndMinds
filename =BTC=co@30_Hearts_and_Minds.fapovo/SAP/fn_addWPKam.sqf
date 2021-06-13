params [
    ["_kamm", objNull],
    ["_vehicle", ""],
    ["_player", (selectRandom allplayers)],
	["_safeZone", ""]
];

if (isNull _kamm) exitWith {};

private _groupKam = group _kamm;
_kamm enableFatigue false;
_groupKam setBehaviour "AWARE";
_groupKam setCombatMode "RED";
_groupKam setSpeedMode "FULL";
_groupKam allowFleeing 0;

if (_vehicle isEqualTo "") then {
	expl1 = "DemoCharge_Remote_Ammo" createVehicle position _kamm;
	expl1 attachTo [_kamm, [-0.1, 0.1, 0.15], "Pelvis"];
	expl1 setVectorDirAndUp [ [0.5, 0.5, 0], [-0.5, 0.5, 0] ];
	expl2 = "DemoCharge_Remote_Ammo" createVehicle position _kamm;
	expl2 attachTo [_kamm, [0, 0.15, 0.15], "Pelvis"];
	expl2 setVectorDirAndUp [ [1, 0, 0], [0, 1, 0] ];
	expl3 = "DemoCharge_Remote_Ammo" createVehicle position _kamm;
	expl3 attachTo [_kamm, [0.1, 0.1, 0.15], "Pelvis"];
	expl3 setVectorDirAndUp [ [0.5, -0.5, 0], [0.5, 0.5, 0] ];
};

while {alive _kamm} do {
	if ((getPos _player) inArea _safeZone) exitWith {};
	
	(vehicle _kamm) doMove getPosATL _player;
	
	_check_p = [];
	_check_p = allPlayers inAreaArray [getPosATL (vehicle _kamm),10,10,0,false,-1];
	
	if (count _check_p > 0) then {
	
		if (alive (vehicle _kamm) && [_kamm] call ace_common_fnc_isAwake) then {
			playSound3d [getMissionPath "\core\sounds\allahu_akbar.ogg", _kamm, false, getPosASL (vehicle _kamm), 5, random [0.9, 1, 1.2], 100];
		};
	
		sleep (2 + random 2);
		_kamm setVelocity [random 3, random 3, 5+random 15];
		sleep 0.01;
		if (_vehicle isEqualTo "") then {
			_bombk = createVehicle ["GrenadeHand",(getPos _kamm), [], 0, "CAN_COLLIDE"];
			_bombk attachTo [_kamm, [0, 0, 0], "Pelvis"];
		} else {
			_bomb = "HelicopterExploSmall" createVehicle (getPosATL (vehicle _kamm));
			[getPosATL (vehicle _kamm)] remoteExec ["fnc_effectExplosion", 0, false];
		};
		sleep 6;
		if (_vehicle isEqualTo "") then {
			[getPosATL (vehicle _kamm)] remoteExec ["fnc_effectExplosion", 0, false];
			deleteVehicle expl1;
			deleteVehicle expl2;
			deleteVehicle expl3;
		};
		(vehicle _kamm) setDamage 1;
	};
	
	sleep (2 + random 3);
};