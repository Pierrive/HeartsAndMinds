enableSaving [false, false];

[] call compile preprocessFileLineNumbers "core\def\mission.sqf";
[] call compile preprocessFileLineNumbers "define_mod.sqf";

if (isServer) then {
    [] call compile preprocessFileLineNumbers "core\init_server.sqf";
};

[] call compile preprocessFileLineNumbers "core\init_common.sqf";
[] call compile preprocessfilelinenumbers "scripts\function\Pierrive_function.sqf";

if (!isDedicated && hasInterface) then {
    [] call compile preprocessFileLineNumbers "core\init_player.sqf";
};

if (!isDedicated && !hasInterface) then {
    [] call compile preprocessFileLineNumbers "core\init_headless.sqf";
};

//Admin moi et menu joueur
[] execVM "core\fusionsmenu\admin\activate.sqf";

//Parachute
[] execVM "scripts\HaloChopper.sqf";

//FPS
[] execVM "scripts\FPSserver\SerCliFps.sqf";
[] execVM "scripts\FPSserver\Dfps.sqf";