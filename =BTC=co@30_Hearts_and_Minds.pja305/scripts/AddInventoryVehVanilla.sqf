params ["_target", "_caller", "_actionId", "_arguments"];
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
player forceAddUniform "U_Rangemaster";
player addVest "V_Safety_yellow_F";
player addBackpack "B_Carryall_mcamo";
player addHeadgear "H_Cap_headphones";

sleep 0.5;

_nearestvehicle = (nearestObjects [_posRepair, ["Car","Armored","Air","Tank"], 7] select 0);
_nearestvehicles = nearestObjects [_posRepair, ["Car","Armored","Air","Tank"], 7];
_count = count _nearestvehicles;

sleep 0.5;

if (_count > 1) exitwith {hint "Trop de véhicules à proximité"; player setUnitLoadout (player getVariable ["Saved_Loadout",[]])};

if (_count == 0) exitwith {hint "Pas de véhicule ou Rapprochez-le"; player setUnitLoadout (player getVariable ["Saved_Loadout",[]])};

if (_count == 1) exitwith {
	['Open', [!(btc_p_arsenal_Restrict isEqualTo 1), _target]] call bis_fnc_arsenal;

	waitUntil {isnull (uinamespace getvariable "RSCDisplayArsenal")};

	private _allitems = backpackItems player;
	private _pWeap = primaryWeapon player;
	private _itemOnPrimary = primaryWeaponItems player;
	private _secondaryWeapon = secondaryWeapon player;
	
	if (count _allitems > 0) then {
		{
			_nearestvehicle addItemCargoGlobal [_x, 1];
		} foreach _allitems;
	};
	
	if !(_pWeap isEqualTo "") then {_nearestvehicle addWeaponCargoGlobal [_pWeap, 1]};
	if !(_secondaryWeapon isEqualTo "") then {_nearestvehicle addWeaponCargoGlobal [_secondaryWeapon, 1]};
	if !((_itemOnPrimary select 0) isequalto "") then {_nearestvehicle addItemCargoGlobal [(_itemOnPrimary select 0), 1]};
	if !((_itemOnPrimary select 1) isequalto "") then {_nearestvehicle addItemCargoGlobal [(_itemOnPrimary select 1), 1]};
	if !((_itemOnPrimary select 2) isequalto "") then {_nearestvehicle addItemCargoGlobal [(_itemOnPrimary select 2), 1]};
	if !((_itemOnPrimary select 3) isequalto "") then {_nearestvehicle addItemCargoGlobal [(_itemOnPrimary select 3), 1]};
	
	sleep 0.5;

	player setUnitLoadout (player getVariable["Saved_Loadout",[]]);
};