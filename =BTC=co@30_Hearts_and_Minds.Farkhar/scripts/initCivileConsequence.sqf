if (isServer) then {
	// set the civilian types that will act as next-of-kin
	GR_CIV_TYPES = ["LOP_Tak_Civ_Man_14", "LOP_Tak_Civ_Man_13", "LOP_Tak_Civ_Man_16", "LOP_Tak_Civ_Man_15", "LOP_AFR_Civ_Man_01", "LOP_AFR_Civ_Man_01_S", "LOP_AFR_Civ_Man_02", "LOP_AFR_Civ_Man_02_S"];

	// set the maximum distance from murder that next-of-kin will be spawned
	GR_MAX_KIN_DIST = 3000;

	// Chance that a player murdering a civilian will get an "apology" mission
	GR_MISSION_CHANCE = 60;

	// Delay in seconds after death until player is notified of body delivery mission
	GR_TASK_MIN_DELAY=20;
	GR_TASK_MID_DELAY=40;
	GR_TASK_MAX_DELAY=60;

	// Set custom faction names to determine blame when performing an autopsy
	GR_FACTIONNAME_EAST = "LOP_ISTS_OPF";
	GR_FACTIONNAME_WEST = "BLU_F";
	GR_FACTIONNAME_IND = "LOP_ISTS";

	// You can also add/remove custom event handlers to be called upon
	// certain events.
	// On civilian murder by player:
	[{params["_killer", "_nextofkin", "_body"]; btc_rep_malus_civ_killed call btc_fnc_rep_change;}] call GR_fnc_addCivDeathEventHandler; // args [_killer, _killed, _nextofkin]
	// (NOTE: _nextofkin will be nil if a body delivery mission wasn't generated.)
	//[yourCustomEvent_OnCivDeath] call GR_fnc_removeCivDeathEventHandler;

	// On body delivery:
	[{params["_killer", "_nextofkin", "_body"]; btc_rep_bonus_civ_hh call btc_fnc_rep_change; _killer addRating 9999}] call GR_fnc_addDeliverBodyEventHandler; // args [_killer, _nextofkin, _body]
	//[yourCustomEvent_OnDeliverBody] call GR_fnc_removeDeliverBodyEventHandler;

	// On successful concealment of a death:
	[{params["_killer", "_nextofkin", "_body"]; btc_rep_bonus_civ_hh call btc_fnc_rep_change; _killer addRating 9999}] call GR_fnc_addConcealDeathEventHandler; // args [_killer, _nextofkin, _grave]
	//[yourCustomEvent_OnConcealDeath] call GR_fnc_removeConcealDeathEventHandler;

	// On reveal of a concealed death via autopsy:
	//[yourCustomEvent_OnRevealDeath] call GR_fnc_addRevealDeathEventHandler; // args [_medic, _body, _killerSide]
	//[yourCustomEvent_OnRevealDeath] call GR_fnc_removeRevealDeathEventHandler;

	// NOTE: if your event handler uses _nextofkin or _body, make sure to turn off garbage collection with:
	// _nextofkin setVariable ["GR_WILLDELETE",false];
	// _body setVariable ["GR_WILLDELETE",false];
};