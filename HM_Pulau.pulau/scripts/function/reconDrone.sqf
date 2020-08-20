if (!isServer) exitWith {};

private _i = 0;
private _markerArray = [];
private _allHCs = entities "HeadlessClient_F"; 
private _allHPs = allPlayers - _allHCs; 
private _onePlayer = selectRandom _allHPs; 
private _posPlayer = getpos _onePlayer;

if !(scanTrigger) exitWith {"Le ravitaillement du drone n'est pas terminé" remoteExec ["hint", 0];};

"Un drone est envoyé sur votre position, nous marquerons les ennemies avec un carré vert sur votre carte. ETA 1 min avant arrivée" remoteExec ["hint", 0];

scanTrigger = false;
publicvariable "scanTrigger";

_heliEmpty = createVehicle ["Land_HelipadEmpty_F", getMarkerPos "droneSpawn", [], 0, "CAN_COLLIDE"]; 

/* create uav and make it fly */
_uav = createVehicle ["B_UAV_05_F", _heliEmpty modelToWorld [0,100,100], [], 0, "FLY"];
createVehicleCrew _uav;
_uav flyInHeight 500;
{_x disableUAVConnectability [_uav, true]} foreach _allHPs;

/* add loiter waypoint */
_wp = group _uav addWaypoint [_posPlayer, 0];
_wp setWaypointType "MOVE";

waitUntil {_uav distance2D _posPlayer < 1000};

_markerScan = createMarker ["Scan", _posPlayer];
_markerScan setMarkerShape "ELLIPSE";
_markerScan setMarkerSize [750, 750];

{
	if ((side _x == east) && ((getPos _x) inArea _markerScan)) then {
		_posUnitEast = getpos _x;
		_i = _i + 1;
		_scanMark = Format ["scanMarker_%1", _i];
		_markerPosUnit = createMarker [_scanMark, _posUnitEast];
		_markerPosUnit setMarkerType "mil_box"; 
		_markerPosUnit setMarkerColor "ColorGreen";
		_markerArray pushback _markerPosUnit;
	};
} foreach allunits;

deleteMarker "Scan";

_wp2 = group _uav addWaypoint [_posPlayer, 0];
_wp2 setWaypointType "LOITER";
_wp2 setWaypointLoiterType "CIRCLE_L";
_wp2 setWaypointLoiterRadius 100;

sleep 50;
{deleteMarker _x} foreach _markerArray;

sleep 900;
"Le ravitaillement du drone est terminé" remoteExec ["hint", 0];
deleteVehicle _uav;
scanTrigger = true;
publicvariable "scanTrigger";