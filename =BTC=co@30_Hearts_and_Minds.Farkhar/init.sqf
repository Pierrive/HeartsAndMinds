enableSaving [false, false];

if (hasInterface) then {btc_intro_done = [] spawn btc_fnc_intro;};

[] call compile preprocessFileLineNumbers "core\def\mission.sqf";
[] call compile preprocessFileLineNumbers "define_mod.sqf";


if (isServer) then {
    [] call compile preprocessFileLineNumbers "core\init_server.sqf";
};

[] call compile preprocessFileLineNumbers "core\init_common.sqf";
[] call compileFinal preprocessfilelinenumbers "scripts\function\Pierrive_function.sqf";

if (!isDedicated && hasInterface) then {
    [] call compile preprocessFileLineNumbers "core\init_player.sqf";
};

if (!isDedicated && !hasInterface) then {
    [] call compile preprocessFileLineNumbers "core\init_headless.sqf";
};

//Parachute
[] execVM "scripts\HaloChopper.sqf";

//FPS
[] execVM "scripts\FPSserver\SerCliFps.sqf";
[] execVM "scripts\FPSserver\Dfps.sqf";

//Guilt & Remembrance
[] execVM "scripts\initCivileConsequence.sqf";

//Config Advanced TOWN
SA_TOW_RULES_OVERRIDE =
[ 
	["Air", "CAN_TOW", "Tank"],
	["Air", "CAN_TOW", "Car"],
	["Air", "CAN_TOW", "Air"],
	["Air", "CAN_TOW", "Ship"],
	["Air", "CAN_TOW", "Wreck"],
	["Tank", "CAN_TOW", "Tank"],
	["Tank", "CAN_TOW", "Car"],
	["Tank", "CAN_TOW", "Wreck"],
	["Tank", "CAN_TOW", "Ship"],
	["Tank", "CAN_TOW", "Air"],
	["Car", "CAN_TOW", "Tank"],
	["Car", "CAN_TOW", "Car"],
	["Car", "CAN_TOW", "Ship"],
	["Car", "CAN_TOW", "Wreck"],
	["Car", "CAN_TOW", "Air"],
	["Ship", "CAN_TOW", "Wreck"],
	["Ship", "CANT_TOW", "Tank"],
	["Ship", "CANT_TOW", "Air"],
	["Ship", "CANT_TOW", "Car"],
	["Ship", "CAN_TOW", "Ship"]	
];

ASL_SLING_RULES_OVERRIDE =
[
	["Air", "CAN_SLING", "Tank"],
	["Air", "CAN_SLING", "Car"],
	["Air", "CAN_SLING", "Air"],
	["Air", "CAN_SLING", "Ship"],
	["Air", "CAN_SLING", "Wreck"]
];

ASL_LOCKED_VEHICLES_ENABLED = true;
SA_TOW_LOCKED_VEHICLES_ENABLED = true;
ASL_SUPPORTED_VEHICLES_OVERRIDE = ["Air"];
ACE_maxWeightCarry = 5000;
ACE_maxWeightDrag = 10000;

