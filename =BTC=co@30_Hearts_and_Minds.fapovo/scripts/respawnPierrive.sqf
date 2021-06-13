//inventory vehicule BOA
player addaction ["<t size='1' shadow='2' color='#13a500'>Ajouter Item Dans Vehicule</t>", {
	params ["_target", "_caller", "_actionId", "_arguments"];
	[Pierrive_inventory_repair, _caller] execVM "scripts\AddInventoryVeh.sqf";
}, [], 1, false, true, "","(_this == _target) and (alive _target) and ((getposatl player distance getposatl Pierrive_inventory_repair) < 10)"];

player addaction ["<t size='1' shadow='2' color='#13a500'>Repair And Rearm Vehicle</t>", {[Pierrive_inventory_repair] execVM "scripts\repair.sqf";}, [], 1, false, true, "","(_this == _target) and (alive _target) and ((getposatl player distance getposatl Pierrive_inventory_repair) < 10)"];
player addaction ["<t size='1' shadow='2' color='#13a500'>Enlever tous les Items du Cargo</t>", {[Pierrive_inventory_repair] execVM "scripts\clearItemVehicule.sqf";}, [], 1, false, true, "","(_this == _target) and (alive _target) and ((getposatl player distance getposatl Pierrive_inventory_repair) < 10)"];

//Porte Avion
player addaction ["<t size='1' shadow='2' color='#13a500'>Ajouter Item Dans Vehicule</t>", {[Pierrive_inventory_repair_1] execVM "scripts\AddInventoryVehicule.sqf";}, [], 1, false, true, "","(_this == _target) and (alive _target) and ((getposatl player distance getposatl Pierrive_inventory_repair_1) < 10)"];
player addaction ["<t size='1' shadow='2' color='#13a500'>Repair And Rearm Vehicle</t>", {[Pierrive_inventory_repair_1] execVM "scripts\repair.sqf";}, [], 1, false, true, "","(_this == _target) and (alive _target) and ((getposatl player distance getposatl Pierrive_inventory_repair_1) < 10)"];
player addaction ["<t size='1' shadow='2' color='#13a500'>Enlever tous les Items du Cargo</t>", {[Pierrive_inventory_repair_1] execVM "scripts\clearItemVehicule.sqf";}, [], 1, false, true, "","(_this == _target) and (alive _target) and ((getposatl player distance getposatl Pierrive_inventory_repair_1) < 10)"];

//Pylon
player addaction ["<t size='1' shadow='2' color='#9200a5'>Configurer Pylon Vehicule Aerien le plus proche</t>", {
	params ["_target", "_caller", "_actionId", "_arguments"];
	[_caller] execVM "scripts\configurePylonACE.sqf";
}, [], 1, false, true, "","(_this == _target) and (alive _target) and ((getposatl player distance getposatl Pierrive_inventory_repair_2) < 200)"];

player addAction [
	"Obtenir Position Grid Map",
	{

		params ["_target", "_caller", "_actionId", "_arguments"];
		
		_ArrayCoord = (getPosATL laserTarget _caller) call BIS_fnc_posToGrid;
		_gridPos = mapGridPosition (getPosATL laserTarget _caller);
		_Ncoord = _ArrayCoord select 0;
		_ECoord = _ArrayCoord select 1;
		hint format ["Coordonée Nord = %1 et Coordonée East = %2. Coordonée Globale = %3", _Ncoord, _ECoord, _gridPos];
	},
	nil,
	6,
	false,
	false,
	"",
	"_target isEqualTo _this AND 'Laserdesignator' in (assignedItems _this) AND !((getPosATL laserTarget _this) isEqualTo [0,0,0])",
	0,
	false,
	""
];

if (!isNil("Zeus")) then {
	if ((player == Zeus) && (isNull(getAssignedCuratorLogic Zeus))) then {
		player addaction ["<t size='1' shadow='2' color='#a57100'>Reassign Zeus</t>", {[] remoteExec ["zeus_remote_call",2]}, [], 1, false, true, "","(_this == _target) and (alive _target)"];
	};
};