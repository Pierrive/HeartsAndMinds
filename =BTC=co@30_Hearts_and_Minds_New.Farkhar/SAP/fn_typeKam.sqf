params [
    ["_kam", objNull],
    ["_vanilla", true]
];

if (isNull _kam) exitWith {};

if (_vanilla) then {

	_uniformKam = selectRandom ["U_BG_Guerilla2_2", "U_BG_Guerrilla_6_1", "U_BG_Guerilla2_1", "U_BG_Guerilla1_1"];

	removeAllWeapons _kam;
	removeAllItems _kam;
	removeAllAssignedItems _kam;
	removeUniform _kam;
	removeVest _kam;
	removeBackpack _kam;
	removeHeadgear _kam;
	removeGoggles _kam;

	_kam forceAddUniform _uniformKam;

	_kam addWeapon "Binocular";
	_kam addHeadgear "H_ShemagOpen_khk";
	_kam addGoggles "G_Shades_Black";
	
} else {

	_uniformKam = selectRandom ["CUP_O_TKI_Khet_Partug_02", "CUP_O_TKI_Khet_Partug_07", "LOP_U_ISTS_Fatigue_04", "LOP_U_ISTS_Fatigue_03"];

	removeAllWeapons _kam;
	removeAllItems _kam;
	removeAllAssignedItems _kam;
	removeUniform _kam;
	removeVest _kam;
	removeBackpack _kam;
	removeHeadgear _kam;
	removeGoggles _kam;

	_kam forceAddUniform _uniformKam;

	_kam addWeapon "Binocular";
	_kam addHeadgear "H_ShemagOpen_khk";
	_kam addGoggles "G_Shades_Black";

};

