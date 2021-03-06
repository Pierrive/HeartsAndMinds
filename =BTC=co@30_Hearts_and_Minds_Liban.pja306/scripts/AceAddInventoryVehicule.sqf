private ["_posRepair","_nearestvehicle","_nearestvehicles","_count","_allitems"];

_posRepair = _this select 0;
loadStuf = false;

player setVariable["Saved_Loadout",getUnitLoadout player];

sleep 0.5;

removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;
player forceAddUniform "U_C_WorkerCoveralls";
player addBackpack "B_Bergen_mcamo_F";

sleep 0.5;

_nearestvehicle = (nearestObjects [_posRepair, ["Car","Armored","Air","Tank"], 7] select 0);
_nearestvehicles = nearestObjects [_posRepair, ["Car","Armored","Air","Tank"], 7];
_count = count _nearestvehicles;

sleep 0.5;

if (_count > 1) exitwith {hint "Trop de véhicules à proximité"; player setUnitLoadout (player getVariable ["Saved_Loadout",[]])};

if (_count == 0) exitwith {hint "Pas de véhicule ou Rapprochez-le"; player setUnitLoadout (player getVariable ["Saved_Loadout",[]])};

if (_count == 1) then {
	[player, player, true] call ace_arsenal_fnc_openBox;
	
	["ace_arsenal_displayClosed", {
		loadStuf = true;
	}] call CBA_fnc_addEventHandler;
	
	waitUntil {loadStuf};
};

fn_loadGargo = {
	private _nearestvehicle = (nearestObjects [_posRepair, ["Car","Armored","Air","Tank"], 7] select 0);
	
	hint "Chargement...";
	
	_allitems = backpackItems player;

	{
		_nearestvehicle addItemCargoGlobal [_x, 1];
		sleep 0.1;
	} foreach _allitems;
};

if (loadStuf) exitwith {
	[] call fn_loadGargo;

	sleep 0.5;

	player setUnitLoadout (player getVariable["Saved_Loadout",[]]);
};