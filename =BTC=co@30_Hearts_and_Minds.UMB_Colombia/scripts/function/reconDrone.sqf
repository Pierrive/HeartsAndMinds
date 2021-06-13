if (!isServer) exitWith {};

private _i = 0;
private _markerArray = [];
private _allHCs = entities "HeadlessClient_F"; 
private _allHPs = allPlayers - _allHCs; 
private _onePlayer = selectRandom _allHPs; 
private _posPlayer = getpos _onePlayer;
private _allunitInArea = [];

_markerScan = createMarker ["Scan", _posPlayer];
_markerScan setMarkerShape "ELLIPSE";
_markerScan setMarkerSize [750, 750];
_markerScan setMarkerAlpha 0;

{
	if ((side _x == btc_enemy_side) && ((getPos _x) inArea _markerScan)) then {
		_allunitInArea pushback _x
	};
} foreach allunits;

sleep 1;

deleteMarker "Scan";

if ((count _allunitInArea) > 20) exitWith {"Présence trop forte de tango sur Zone, le risque est trop grand pour le drone et l'utilisation du capteur est saturé" remoteExec ["hint", 0];};

if (((count _allunitInArea) < 20) && ((count _allunitInArea) > 10)) then {
	if !(missionNamespace getVariable "scanTrigger") exitWith {"Le ravitaillement du drone n'est pas terminé" remoteExec ["hint", 0];};
	
	"Un drone est envoyé sur votre position, nous marquerons les ennemies avec un carré vert sur votre carte. ETA 1 min avant arrivée" remoteExec ["hint", 0];
	
	missionNamespace setVariable ["scanTrigger", false, true];
	
	_heliEmpty = createVehicle ["Land_HelipadEmpty_F", getMarkerPos "droneSpawn", [], 0, "CAN_COLLIDE"]; 

	_uav = createVehicle ["B_UAV_05_F", _heliEmpty modelToWorld [0,100,100], [], 0, "FLY"];
	createVehicleCrew _uav;
	_uav flyInHeight 500;
	{_x disableUAVConnectability [_uav, true]} foreach _allHPs;

	_wp = group _uav addWaypoint [_posPlayer, 0];
	_wp setWaypointType "MOVE";

	waitUntil {_uav distance2D _posPlayer < 1000};

	{
		_posUnitEast = getpos _x;
		_i = _i + 1;
		_scanMark = Format ["scanMarker_%1", _i];
		_markerPosUnit = createMarker [_scanMark, _posUnitEast];
		_markerPosUnit setMarkerType "mil_box"; 
		_markerPosUnit setMarkerColor "ColorGreen";
		_markerArray pushback _markerPosUnit;
	} foreach _allunitInArea;

	_wp2 = group _uav addWaypoint [_posPlayer, 0];
	_wp2 setWaypointType "LOITER";
	_wp2 setWaypointLoiterType "CIRCLE_L";
	_wp2 setWaypointLoiterRadius 100;
	
	sleep 50;
	{deleteMarker _x} foreach _markerArray;
	
	sleep 900;
	"Le ravitaillement du drone est terminé" remoteExec ["hint", 0];
	deleteVehicle _uav;
	
	missionNamespace setVariable ["scanTrigger", true, true];
} else {
	if ((count _allunitInArea) < 11) then {
		if ((count btc_spect_emp) > 0) exitWith {"Le satellite permettant l'utilisation du capteur à pour objectif la mission EMP" remoteExec ["hint", 0];};
		if !(missionNamespace getVariable "scanTrigger") exitWith {"Le satellite est en cours de redéploiement" remoteExec ["hint", 0];};
		"Tous nos drone sont actuellement en opération. Toutefois, une liaison satellite est établie avec votre groupe pendant 10 min, vous pouvez utiliser le capteur." remoteExec ["hint", 0];
		{
			btc_spect_emp pushBack _x;
		} foreach _allunitInArea;
		publicVariable "btc_spect_emp";
		
		sleep 600;
		"Le satellite permettant l'utilisation du capteur n'est plus aligné sur vous. Vous ne pouvez plus utiliser le capteur" remoteExec ["hint", 0];
		{
			btc_spect_emp deleteAt (btc_spect_emp find _x);
		} foreach _allunitInArea;
		publicVariable "btc_spect_emp";

		sleep 10;
		missionNamespace setVariable ["scanTrigger", true, true];
	};
};