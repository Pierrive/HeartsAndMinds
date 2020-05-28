//inventory vehicule
player addaction ["<t size='1' shadow='2' color='#a57100'>Ajouter Item Dans Vehicule</t>", {[Pierrive_inventory_repair] execVM "scripts\AddInventoryVehicule.sqf";}, [], 1, false, true, "","(_this == _target) and (alive _target) and ((getposatl player distance getposatl Pierrive_inventory_repair) < 10)"];
player addaction ["<t size='1' shadow='2' color='#a57100'>Repair Vehicle</t>", {[Pierrive_inventory_repair] execVM "scripts\repair.sqf";}, [], 1, false, true, "","(_this == _target) and (alive _target) and ((getposatl player distance getposatl Pierrive_inventory_repair) < 10)"];
player addaction ["<t size='1' shadow='2' color='#a57100'>Enlever tous les Items du Cargo</t>", {[Pierrive_inventory_repair] execVM "scripts\clearItemVehicule.sqf";}, [], 1, false, true, "","(_this == _target) and (alive _target) and ((getposatl player distance getposatl Pierrive_inventory_repair) < 10)"];

//== Add players to Zeus
{_x addCuratorEditableObjects [[player],false];} count allCurators;

if (!isNil("Zeus")) then {
	if ((player == Zeus) && (isNull(getAssignedCuratorLogic Zeus))) then {
		player addaction ["<t size='1' shadow='2' color='#a57100'>Reassign Zeus</t>", {[] remoteExec ["zeus_remote_call",2]}, [], 1, false, true, "","(_this == _target) and (alive _target)"];
	};
};