[] call compile preprocessFileLineNumbers "core\fnc\city\init.sqf";

{[_x] spawn btc_fnc_task_create} forEach [0, 1];

if (btc_db_load && {profileNamespace getVariable [format ["btc_hm_%1_db", worldName], false]}) then {
    if (btc_version isEqualTo (profileNamespace getVariable [format ["btc_hm_%1_version", worldName], 1.13])) then {
        [] call compile preprocessFileLineNumbers "core\fnc\db\load.sqf";
    } else {
        [] call compile preprocessFileLineNumbers "core\fnc\db\load_old.sqf";
    };
} else {
    for "_i" from 1 to btc_hideout_n do {[] call btc_fnc_mil_create_hideout;};
    [] call compile preprocessFileLineNumbers "core\fnc\cache\init.sqf";

    private _date = date;
    _date set [3, btc_p_time];
    setDate _date;

    {
        [{!isNull _this}, {_this call btc_fnc_db_add_veh;}, _x] call CBA_fnc_waitUntilAndExecute;
    } forEach btc_vehicles;
};

[] call btc_fnc_db_autosave;
[] call btc_fnc_eh_server;
[btc_ied_list] call btc_fnc_ied_fired_near;

["Initialize"] call BIS_fnc_dynamicGroups;

//time
setTimeMultiplier btc_p_acctime;
[] spawn {
	private _startingdate = date;
	while {true} do
	{
		if (daytime >= 19 || daytime < 5) then {
			if (sunOrMoon <= 0.5 && (_startingdate select 3) > 18) then {
				setTimeMultiplier (btc_p_acctime + 28) 
			};
		} else {
			if (sunOrMoon >= 0.5 && (_startingdate select 3) > 4) then {
				setTimeMultiplier btc_p_acctime
			};
		};

		uiSleep 60;
	};
};

{[_x, 30, false] call btc_fnc_eh_veh_add_respawn;} forEach btc_helo;

if (btc_p_side_mission_cycle) then {
    [true] spawn btc_fnc_side_create;
};

[] spawn {
	while {true} do {
		_fonte = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
		_ambiance = _fonte + "core\sounds\militaryAmbiance.ogg";
		playSound3D [_ambiance, ambianceBase, false, getPosASL ambianceBase, 3, 1, 300];
		sleep 200;
	};
};

//Add pierrive
onPlayerDisconnected {
	if (count allPlayers < 2) then {
		[] spawn btc_fnc_db_save;
	};
};

base_defences = [];

for "_i" from 0 to 5 do {
	// Get marker prefixs
	private _endStringBaseDefence = Format ["defence_spawn_%1", _i];
	// Check if markers exist
	if (getMarkerColor _endStringBaseDefence != "") then { [_endStringBaseDefence, ["CUP_WV_B_CRAM","B_AAA_System_01_F","B_SAM_System_01_F","B_SAM_System_02_F"]] execVM "scripts\fn_createBaseDefence.sqf"; };
};

//nbSpawn
ambianceBase setVariable ["btc_nb_veh_create", 0, true];
ambianceBase setVariable ["btc_max_nb_veh_create", 5, true];

//marker unconsoious
_null = [] execVM "scripts\markerAce.sqf";

//spawn ammobox
_null = [MunitionHeli] execVM "scripts\ammoboxScript.sqf";

waitUntil {
  !isNil "ALiVE_SYS_DATA_SOURCE";
};

if (ALiVE_SYS_DATA_SOURCE isEqualTo "pns") then {
  2700 call ALiVE_fnc_AutoSave_PNS;
};