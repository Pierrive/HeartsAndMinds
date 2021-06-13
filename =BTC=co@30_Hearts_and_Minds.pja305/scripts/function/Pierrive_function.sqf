//Zeus synchro
zeus_remote_call = compileFinal preprocessFileLineNumbers "scripts\function\fn_zeus_syncro.sqf";
btc_fnc_drone = compile preprocessFileLineNumbers "scripts\function\reconDrone.sqf";
fnc_ask_reputation = compile preprocessFileLineNumbers "scripts\function\ask_reputation_scripts.sqf";

//Ajout dans autre fichier de compilation
//Dans : =BTC=co@30_Hearts_and_Minds.pulau\core\fnc\compile.sqf
//fichier ajouté dans core\fnc\db
//btc_fnc_db_saveVeh = compile preprocessFileLineNumbers "core\fnc\db\saveVeh.sqf";
//fnc_CheckSaveVeh = compile preprocessFileLineNumbers "scripts\function\fn_CheckSaveVeh.sqf";