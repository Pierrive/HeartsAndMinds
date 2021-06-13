params [
	["_safeZone", ""]
];

private _headlessClients = entities "HeadlessClient_F";
private _humanPlayers = allPlayers - _headlessClients;
private _ArrayAllGrps = missionNamespace getVariable "AllGroupVLR";

if !(count _ArrayAllGrps > 0) exitWith {};

if (count _ArrayAllGrps > 0) then {
	{
		private _leaderGrp = leader _x;
		private _vehicleGrp = vehicle _leaderGrp;
		
		{
			if ((_x distance2D _leaderGrp) > 2000) then {
				if !(_leaderGrp isEqualTo _vehicleGrp) then {{ _vehicleGrp deleteVehicleCrew _x;} forEach crew _vehicleGrp; deleteVehicle _vehicleGrp};
				{deleteVehicle _x;} forEach units (group _leaderGrp);
				_ArrayAllGrps deleteAt (_ArrayAllGrps find (group _leaderGrp));
				missionNamespace setVariable ["AllGroupVLR", _ArrayAllGrps, true];
				if (debug_VLR) then {diag_log format ["Function deleteGroup (1): ArrayGroup : %1 and NB groupe : %2", _ArrayAllGrps, (count _ArrayAllGrps)]};
			};
			
			sleep 0.5;
		} foreach _humanPlayers;

		if !(_safeZone isEqualTo "") then {
			if ({alive _x} count _humanPlayers == {alive _x && _x inArea _safeZone} count _humanPlayers) then {				
				if !(_leaderGrp isEqualTo _vehicleGrp) then {{ _vehicleGrp deleteVehicleCrew _x;} forEach crew _vehicleGrp; deleteVehicle _vehicleGrp};
				{deleteVehicle _x} forEach units (group _leaderGrp);	
				missionNamespace setVariable ["AllGroupVLR", [], true];
				if (debug_VLR) then {diag_log format ["Function deleteGroup (2): All Delete ArrayGroup : %1 and NB groupe : %2", _ArrayAllGrps, (count _ArrayAllGrps)]};
			};
		};
		
		sleep 0.5;
	} forEach _ArrayAllGrps;
};