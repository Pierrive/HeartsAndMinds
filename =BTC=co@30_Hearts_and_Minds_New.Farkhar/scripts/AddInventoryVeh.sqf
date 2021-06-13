params ["_posRepair", "_caller"];
private ["_nearestvehicle","_nearestvehicles","_count","_allitems","_actionVanilla","_actionACE"];

_caller setVariable ["Saved_Loadout",getUnitLoadout _caller];

sleep 0.5;

removeAllWeapons _caller;
removeAllItems _caller;
removeAllAssignedItems _caller;
removeUniform _caller;
removeVest _caller;
removeBackpack _caller;
removeHeadgear _caller;
removeGoggles _caller;
_caller forceAddUniform "U_Rangemaster";
_caller addVest "V_Safety_yellow_F";
_caller addBackpack "B_Carryall_mcamo";
_caller addHeadgear "H_Cap_headphones";

sleep 0.5;

_nearestvehicle = (nearestObjects [_posRepair, ["Car","Armored","Air","Tank"], 7] select 0);
_nearestvehicles = nearestObjects [_posRepair, ["Car","Armored","Air","Tank"], 7];
_count = count _nearestvehicles;

sleep 0.5;

if (_count > 1) exitwith {hint "Trop de véhicules à proximité"; _caller setUnitLoadout (_caller getVariable ["Saved_Loadout",[]])};

if (_count == 0) exitwith {hint "Pas de véhicule ou Rapprochez-le"; _caller setUnitLoadout (_caller getVariable ["Saved_Loadout",[]])};

if (_count == 1) exitwith {
	missionNamespace setVariable ["ItemReady", false];
	
	_actionVanilla = _caller addAction ["<t size='1.5' shadow='2' color='#a50300'>Utiliser Arsenal Vanilla</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		
		['Open', [!(btc_p_arsenal_Restrict isEqualTo 1), _this select 0]] call bis_fnc_arsenal;
		
		waitUntil {isnull (uinamespace getvariable "RSCDisplayArsenal")};
		
		missionNamespace setVariable ["ItemReady", true];
		
	}, [], 6, false, true, "","(alive _target) and ((getposatl _target distance getposatl Pierrive_inventory_repair) < 10)"];
	
	_actionACE = _caller addAction ["<t size='1.5' shadow='2' color='#a50300'>Utiliser Arsenal ACE</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"]; 
		
		[_caller, _caller] call ace_arsenal_fnc_openBox;
		
		["ace_arsenal_displayClosed", {
			missionNamespace setVariable ["ItemReady", true];
		}] call CBA_fnc_addEventHandler;

	}, [], 6, false, true, "","(alive _target) and ((getposatl _target distance getposatl Pierrive_inventory_repair) < 10)"];

	if !(btc_p_arsenal_Restrict isEqualTo 0) then {
		[_caller, btc_p_arsenal_Type, btc_p_arsenal_Restrict, btc_custom_arsenal] call btc_fnc_arsenal_data;
	};

	waitUntil {missionNamespace getvariable "ItemReady"};

	_caller removeAction _actionACE;
	_caller removeAction _actionVanilla;

	private _allitems = backpackItems _caller;
	private _pWeap = primaryWeapon _caller;
	private _itemOnPrimary = primaryWeaponItems _caller;
	private _secondaryWeapon = secondaryWeapon _caller;
	
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

	_caller setUnitLoadout (_caller getVariable["Saved_Loadout",[]]);
};