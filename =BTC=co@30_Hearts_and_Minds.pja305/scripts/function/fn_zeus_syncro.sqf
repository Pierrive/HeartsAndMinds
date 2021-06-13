if (!isServer) exitWith {};

{
	if (serverCommandAvailable "#kick") then {
		if (!isNil("Zeus")) then {
			if (isNull(getAssignedCuratorLogic Zeus)) then {
				unassignCurator btc_curator;
				sleep 2;
				Zeus assignCurator btc_curator;
			};
		};
	} else {
		hint "Il faut que tu sois admin pour avoir le zeus";
	};
} forEach allPlayers;
