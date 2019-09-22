
/* ----------------------------------------------------------------------------
Function: btc_fnc_mil_unit_create

Description:
    Fill me when you edit me !

Parameters:
    _unit - [Object]

Returns:

Examples:
    (begin example)
        _result = [] call btc_fnc_mil_unit_create;
    (end)

Author:
    Giallustio

---------------------------------------------------------------------------- */

params [
    ["_unit", objNull, [objNull]]
];

if (_unit getVariable ["btc_init", false]) exitWith {true};

_unit setVariable ["btc_init", true];

_unit call btc_fnc_mil_add_eh;

if (btc_p_set_skill) then {
    _unit call btc_fnc_mil_set_skill;
};

if (((typeOf _unit) isEqualTo "UK3CB_TKA_O_AA_ASST") || ((typeOf _unit) isEqualTo "UK3CB_TKA_O_NAVY_CREW")) then {
	removeAllWeapons _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;

	_unit addWeapon "rhs_weap_akm";
	_unit addPrimaryWeaponItem "rhs_acc_dtkakm";
	_unit addPrimaryWeaponItem "rhs_30Rnd_762x39mm";
	_unit addWeapon "rhs_weap_fim92";
	_unit addSecondaryWeaponItem "rhs_fim92_mag";

	_unit forceAddUniform "UK3CB_TKA_O_U_CombatUniform_01_ADPM";
	_unit addVest "UK3CB_TKA_O_V_6b23_ml_Oli_TKA_Brush";
	_unit addBackpack "UK3CB_TKA_O_B_RIF_Khk";
	_unit addHeadgear "UK3CB_TKA_O_H_6b27m_ADPM";
	_unit addItemToBackpack "rhs_fim92_mag";
	_unit addItemToBackpack "rhs_fim92_mag";
};

true
