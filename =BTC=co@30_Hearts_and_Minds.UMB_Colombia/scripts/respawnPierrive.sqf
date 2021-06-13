//inventory vehicule BOA
player addaction ["<t size='1' shadow='2' color='#13a500'>Ajouter Item Dans Vehicule</t>", {
	params ["_target", "_caller", "_actionId", "_arguments"];
	[Pierrive_inventory_repair, _caller] execVM "scripts\AddInventoryVeh.sqf";
}, [], 1, false, true, "","(_this == _target) and (alive _target) and ((getposatl player distance getposatl Pierrive_inventory_repair) < 10)"];

player addaction ["<t size='1' shadow='2' color='#13a500'>Repair And Rearm Vehicle</t>", {[Pierrive_inventory_repair] execVM "scripts\repair.sqf";}, [], 1, false, true, "","(_this == _target) and (alive _target) and ((getposatl player distance getposatl Pierrive_inventory_repair) < 10)"];
player addaction ["<t size='1' shadow='2' color='#13a500'>Enlever tous les Items du Cargo</t>", {[Pierrive_inventory_repair] execVM "scripts\clearItemVehicule.sqf";}, [], 1, false, true, "","(_this == _target) and (alive _target) and ((getposatl player distance getposatl Pierrive_inventory_repair) < 10)"];

//Pylon
player addaction ["<t size='1' shadow='2' color='#9200a5'>Configurer Pylon Vehicule Aerien le plus proche</t>", {
	params ["_target", "_caller", "_actionId", "_arguments"];
	[_caller] execVM "scripts\configurePylonACE.sqf";
}, [], 1, false, true, "","(_this == _target) and (alive _target) and ((getposatl player distance getposatl Pierrive_inventory_repair_2) < 50)"];
