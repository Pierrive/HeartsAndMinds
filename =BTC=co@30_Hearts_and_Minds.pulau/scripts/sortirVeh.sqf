//AlPMaker
private _max = 10;
btc_All_Veh = (missionNamespace getVariable "ArrayVehNoRespawn");
btc_vehicles = [];

if ((count btc_All_Veh) > 25) then {
	{
		if ((typeName _x ) isEqualTo "STRING") then {
			_veh_name_New = call compile _x;
			btc_vehicles pushBackUnique _veh_name_New;
			btc_All_Veh deleteAt (btc_All_Veh find _x);
		} else {
			btc_vehicles pushBackUnique _x;
		};
	} foreach btc_All_Veh;
	
	missionNamespace setVariable ["ArrayVehNoRespawn", btc_vehicles, true];
	publicVariableServer "btc_vehicles";
};

btc_Out_Veh = (missionNamespace getVariable "ArrayVehNoRespawn") - [btc_Minigun_Boat, btc_MkV_Boat];

snext = false;
pselectVeh = "";

smenu =
{
   _pmenu = [["",true]];
   for "_i" from (_this select 0) to (_this select 1) do {
   _arr = [format['%1', btc_Out_Veh select _i], [12],  "", -5, [["expression", format ["pselectVeh = btc_Out_Veh select %1;", _i]]], "1", "1"];
   _pmenu set [_i + 2, _arr];
   
   };
   
   if (count btc_Out_Veh > (_this select 1)) then {
		_pmenu set [(_this select 1) + 2, ["Next", [15], "", -5, [["expression", "snext = true;"]], "1", "1"]];
   } else {
		_pmenu set [(_this select 1) + 2, ["", [-1], "", -5, [["expression", ""]], "1", "0"]];
   };
   
   _pmenu set [(_this select 1) + 3, ["Exit", [16], "", -5, [["expression", "pselectVeh = 'exit';"]], "1", "1"]];
   
   showCommandingMenu "#USER:_pmenu";
};

private _j = 0; 

if (_max > 9) then { _max = 10;};

while {pselectVeh isEqualTo ""} do
{
   [_j, (_j + _max) min (count btc_Out_Veh)] call smenu; 
   _j = _j + _max;
   WaitUntil {!(pselectVeh isEqualTo "") or snext};   
   snext = false;
};

if !(pselectVeh isEqualTo "exit") then {

    private _name = pselectVeh;
	
	if ((getpos _name) inArea "garageVeh") then {
		hint format ["Sortie du véhicule %1 en cours...", _name];
		[SpawnVehAll,["Sortie_Veh",200]] remoteExec ["say3d", 0, false]; 
		_name setPosATL [getPosATL SpawnVehAll select 0, getPosATL SpawnVehAll select 1, getPosATL SpawnVehAll select 2];
		_name setdir 190;
		[_name,false] remoteExec ["allowdammage", 0];
		[_name,true] remoteExec ["hideObjectGlobal", 0];
		[_name,false] remoteExec ["enableSimulationGlobal", 0];
		_name setdir 190;
		sleep 15;
		[_name,true] remoteExec ["allowdammage", 0];
		[_name,false] remoteExec ["hideObjectGlobal", 0];
		[_name,true] remoteExec ["enableSimulationGlobal", 0]; 
		hint format ["Sortie du véhicule %1 effectué", _name];
	} else {
		hint format ["Le Vehicule, %1, est déjà déplouyé, essayer un autres véhicules", _name];
	};
};