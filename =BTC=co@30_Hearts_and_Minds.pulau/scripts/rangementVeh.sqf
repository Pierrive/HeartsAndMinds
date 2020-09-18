//[] execVM "scripts\rangementVeh.sqf";
private ["_Array_Var_btc_veh","_Array_Var_btc_helo","_nearestvehicles","_count"];

_Array_Var_btc_veh = missionNamespace getVariable "ArrayVehNoRespawn";
_Array_Var_btc_helo = missionNamespace getVariable "ArrayVehRespawn";

sleep 0.5;

_nearestvehicles = nearestObjects [btc_create_object_point, ["Car","Armored","Air","Tank"], 10];
_count = count _nearestvehicles;

sleep 0.5;

if (_count > 0) exitwith {
	{
		if ((_x in _Array_Var_btc_veh) || (_x in _Array_Var_btc_helo)) then {
			hint "Rangement Véhicule en cours ...";
			[btc_create_object_point,["Rentrer_Veh",200]] remoteExec ["say3d", 0, false];
			sleep 13;
			 hint "Vehicule Rangé";
			[_x, false] remoteExec ["allowdammage", 0]; 
			[_x, true] remoteExec ["hideObjectGlobal", 0]; 
			[_x, false] remoteExec ["enableSimulationGlobal", 0]; 
			_x setPosATL [getPosATL returnGarage select 0, getPosATL returnGarage select 1, getPosATL returnGarage select 2];
		} else {
			hint "Pas de place attribué pour votre véhicule, Rangement à faire sur le Porte-Avion"
		};
	} foreach _nearestvehicles;
};

if (_count == 0) exitwith {hint "Pas de véhicule ou Rapprochez-le"};