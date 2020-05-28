params [
	["_veh", objNull, [objNull]]
];

private _marker = _veh getVariable ["marker", ""];
	
_nbSpawnVeh = (ambianceBase getVariable "btc_nb_veh_create") - 1;
ambianceBase setVariable ["btc_nb_veh_create", _nbSpawnVeh, true];
if ((ambianceBase getVariable "btc_nb_veh_create") < 0) then {ambianceBase setVariable ["btc_nb_veh_create", 0, true]};
	
if (_marker != "") then {
	deleteMarker _marker;
	remoteExec ["", _marker];
};

deleteVehicle _veh;
_veh

