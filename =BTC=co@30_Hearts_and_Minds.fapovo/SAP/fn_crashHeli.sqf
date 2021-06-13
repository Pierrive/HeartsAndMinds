params [
	["_player", (selectRandom allplayers)]
];

if (isNull objectParent _player) exitWith {};

private _airVehicle = vehicle _player;

private _smoke = "test_EmptyObjectForSmoke" createVehicle [0,0,0];
_smoke attachTo [_airVehicle,[0,-0.5,-0.0]];

[4] remoteExec ["setCurrentChannel", 0, false];
_airVehicle vehicleChat "Oh Shit !! le moteur principale fume, je vais devoir me poser en urgence";
sleep 10;
if ("hitvrotor" in ((getAllHitPointsDamage _airVehicle) select 0)) then {
	_airVehicle setHitPointDamage ["HitVRotor", 1];
} else {
	[_airVehicle] spawn {
		private _hitPointName = getText ( configFile >> "CfgVehicles" >> typeOf _airVehicle >> "HitPoints" >> "HitEngine" >> "name"); 
		[_airVehicle , [_hitPointName, 0.1]] remoteExec ["setHit", _airVehicle];
		sleep 5;
		[_airVehicle , [_hitPointName, 0.3]] remoteExec ["setHit", _airVehicle];
		sleep 5;
		[_airVehicle , [_hitPointName, 0.5]] remoteExec ["setHit", _airVehicle];
		sleep 5;
		[_airVehicle , [_hitPointName, 0.7]] remoteExec ["setHit", _airVehicle];
		sleep 5;
		[_airVehicle , [_hitPointName, 0.9]] remoteExec ["setHit", _airVehicle];
		sleep 5;
		[_airVehicle , [_hitPointName, 1]] remoteExec ["setHit", _airVehicle];
	};
};
	
_airVehicle allowDamage false;
{[(_x select 0), false] remoteExec ["allowDamage", 0, false];} foreach (fullCrew _airVehicle);

sleep 5;
private _fire = "test_EmptyObjectForFireBig" createVehicle [0,0,0];
_fire attachTo [_airVehicle,[0,-0.5,-0.0]];
_airVehicle vehicleChat "Nous avons perdu le moteur principale !!!";
[_airVehicle , 0.05] remoteExec ["setfuel", _airVehicle];
sleep 10;
_airVehicle vehicleChat "Si nous survivons au crash, attendez que les moteurs soit complètement éteint";
waitUntil {isTouchingGround _airVehicle || (((getPos _airVehicle) select 2) < 1)};
sleep 20;
["Bo_Mk82_MI08", (getPos _airVehicle)] remoteExec ["createVehicle", 2];
_airVehicle setdamage 1;
sleep 5;
	
deleteVehicle _smoke;
deleteVehicle _fire;

[0] remoteExec ["setCurrentChannel", 0, false];
{[_x, true] remoteExec ["allowDamage", 0, false]} foreach allplayers;
