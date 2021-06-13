/*
this addAction ["<t color='#0B2D12' size='1.5'>Demander Une Reconnaissance Drone</t>",{
	params ["_target", "_caller", "_actionId", "_arguments"];
	[_target,_caller] execVM "scripts\SendReconDrone.sqf";  
}, [], 1, false, true, "","_this distance _target < 5"]; 
*/

params ["_target", "_caller"];

if !(missionNamespace getVariable "AvailableDroneReco") exitWith {hint "Le ravitaillement du drone de reconnaissance n'est pas terminé"};

if ("B_UavTerminal" in (assignedItems _caller)) then {
	checkItemPlayer = false;
} else {
	_caller linkItem "B_UavTerminal";
	checkItemPlayer = true;
};

//Stockage Marker Player
allPlayerMarkerLaser = [];

//Limite du nombre de drone.
missionNamespace setVariable [ "AvailableDroneReco", false, true];

//Force open users map
openMap [true, false];

//Display user instruction
hint "Faite un double click gauche sur le lieu où vous voulez une reconnaissance drone.";

//Make sure map is open, before...
waitUntil{ !isNull findDisplay 12 };

//Changement distance de vue
setViewDistance 5000;

Recon_Drone_click = findDisplay 12 displayCtrl 51 ctrlAddEventHandler [ "MouseButtonDblClick", {
	params[ "_map", "_button", "_mouseX", "_mouseY" ];
		
	//If left mouse button
	if ( _button isEqualTo 0 ) then {
		_pos = _map ctrlMapScreenToWorld [_mouseX, _mouseY];

		//Set _pos in missionNamespace
		missionNamespace setVariable [ "choosenRecon", _pos, true];
			
		playSound "BIS_WL_Selected_WEST";
			
		//Remove this event
		_map ctrlRemoveEventHandler[ "MouseButtonDblClick", Recon_Drone_click ];
	};
}];
	
//Wait for selection
waitUntil { !isNil "choosenRecon" };

//Remove hint
hint "";
	
//Close map
cutText ["Changement de l'interface drone... Patientez....","BLACK OUT"];
sleep 3;
openMap [false, false];

_heliEmpty = createVehicle ["Land_HelipadEmpty_F", (missionNamespace getVariable "choosenRecon"), [], 0, "CAN_COLLIDE"]; 	
_uav = createVehicle ["B_UAV_05_F", _heliEmpty modelToWorld [0,100,100], [], 0, "FLY"];
createVehicleCrew _uav;
_uav setPos [ getPos _uav select 0, getPos _uav select 1, 2000];
_uav flyInHeight 2000;
_uav allowDamage false;
_uav removeMagazinesTurret ["PylonMissile_Bomb_GBU12_x1",[0]];

//set loiter waypoint
_wp = group _uav addWaypoint [(missionNamespace getVariable "choosenRecon"), 0];
_wp setWaypointLoiterType "CIRCLE";
_wp setWaypointCombatMode "BLUE"; 
_wp setWaypointLoiterRadius 1000;
_wp setWaypointStatements ["true", "(vehicle this) flyinheight 1500"];

//switch on player
_caller connectTerminalToUAV _uav;
sleep 4;
cutText ["","BLACK IN"];
if (isUAVConnected _uav) then {_caller action ["SwitchToUAVGunner", getConnectedUAV _caller];};

//add Action place marker on laserTarget
private _callerPlayer = _caller;
_uav addAction [
	"Mettre marqueur sur position du désignateur",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		_playerDrone = _this select 3 select 0;
		
		if !((getPosASL laserTarget _target) isEqualTo [0,0,0]) then {
			_NameMarker = format ["%1_%2", name _playerDrone, round ((getPosATL laserTarget _target) select 0)];
			_TextMarker = format ["  Marquage laser de %1", name _playerDrone];
			_MarkerLaser = createMarker [_NameMarker, (getPosATL laserTarget _target)];
			_MarkerLaser setMarkerType "mil_join";
			_MarkerLaser setMarkerAlpha 0.5;
			_MarkerLaser setMarkerColor "ColorRed";
			_MarkerLaser setMarkerText _TextMarker;
			_MarkerLaser setMarkerSize [(((getMarkerSize _MarkerLaser) select 0) / 2),(((getMarkerSize _MarkerLaser) select 1) / 2)];
			"Marquage Effectué" remoteExec ["hint", _playerDrone, false];
			allPlayerMarkerLaser pushBack _MarkerLaser;
		} else {
			"Il faut que vous activiez votre Laser" remoteExec ["hint", _playerDrone, false];
		};
	},
	[_callerPlayer],
	6,
	false,
	false,
	"",
	"",
	0,
	false,
	""
];

sleep 2;

waitUntil {!((UAVControl _uav) IsEqualTo [_caller,"GUNNER"])};
hint "La session avec le drone est terminée, le drone sera de nouveau disponible dans 5 min";
setViewDistance -1;
deleteVehicle _uav;
if (checkItemPlayer) then {_caller linkItem "itemGPS"};

//Suprresion des marker Lasers
sleep 10;
hint "Si vous avez placé des marqueurs laser, ils seront supprimé dans 1min";
sleep 50;
if (count allPlayerMarkerLaser > 0) then {{deleteMarker _x} forEach allPlayerMarkerLaser};

sleep 240;
hint "Le ravitaillement du drone de reconnaissance est terminé";
missionNamespace setVariable [ "AvailableDroneReco", true, true];
missionNamespace setVariable [ "choosenRecon", nil, true];