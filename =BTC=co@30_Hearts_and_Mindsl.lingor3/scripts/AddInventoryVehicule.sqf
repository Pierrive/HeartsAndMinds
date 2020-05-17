private ["_posRepair","_nearestvehicle","_nearestvehicles","_count","_allitems"];

_posRepair = _this select 0;

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
player forceAddUniform "VSM_OGA_Camo";
player addVest "V_Safety_yellow_F";
player addBackpack "R3F_sac_vie_TAN";
player addHeadgear "R3F_Bandana_TAN";

sleep 0.5;

_nearestvehicle = (nearestObjects [_posRepair, ["Car","Armored","Air","Tank"], 7] select 0);
_nearestvehicles = nearestObjects [_posRepair, ["Car","Armored","Air","Tank"], 7];
_count = count _nearestvehicles;

sleep 0.5;

if (_count > 1) exitwith {hint "Trop de véhicules à proximité"; player setUnitLoadout (player getVariable ["Saved_Loadout",[]])};

if (_count == 0) exitwith {hint "Pas de véhicule ou Rapprochez-le"; player setUnitLoadout (player getVariable ["Saved_Loadout",[]])};

if (_count == 1) exitwith {
	["Open",true] call BIS_fnc_arsenal;

	waitUntil {isnull (uinamespace getvariable "RSCDisplayArsenal")};

	_allitems = backpackItems player;

	{
		_nearestvehicle addItemCargoGlobal [_x, 1];
	} foreach _allitems;

	sleep 0.5;

	player setUnitLoadout (player getVariable["Saved_Loadout",[]]);
};

player setUnitLoadout (player getVariable["Saved_Loadout",[]]);