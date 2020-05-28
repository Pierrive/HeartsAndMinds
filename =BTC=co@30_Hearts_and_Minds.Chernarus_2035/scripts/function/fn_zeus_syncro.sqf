if (!isServer) exitWith {};

{
	if (!isNil("Zeus")) then {
		if (isNull(getAssignedCuratorLogic Zeus)) then {
			unassignCurator btc_curator;
			sleep 2;
			Zeus assignCurator btc_curator;
		};
	};
} forEach allPlayers;
