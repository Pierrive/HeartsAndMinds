//inventory vehicule BOA
player addaction ["<t size='1' shadow='2' color='#13a500'>Ajouter Item Dans Vehicule</t>", {[Pierrive_inventory_repair] execVM "scripts\AddInventoryVehicule.sqf";}, [], 1, false, true, "","(_this == _target) and (alive _target) and ((getposatl player distance getposatl Pierrive_inventory_repair) < 10)"];
player addaction ["<t size='1' shadow='2' color='#13a500'>Repair And Rearm Vehicle</t>", {[Pierrive_inventory_repair] execVM "scripts\repair.sqf";}, [], 1, false, true, "","(_this == _target) and (alive _target) and ((getposatl player distance getposatl Pierrive_inventory_repair) < 10)"];
player addaction ["<t size='1' shadow='2' color='#13a500'>Enlever tous les Items du Cargo</t>", {[Pierrive_inventory_repair] execVM "scripts\clearItemVehicule.sqf";}, [], 1, false, true, "","(_this == _target) and (alive _target) and ((getposatl player distance getposatl Pierrive_inventory_repair) < 10)"];

//Porte Avion
player addaction ["<t size='1' shadow='2' color='#13a500'>Ajouter Item Dans Vehicule</t>", {[Pierrive_inventory_repair_1] execVM "scripts\AddInventoryVehicule.sqf";}, [], 1, false, true, "","(_this == _target) and (alive _target) and ((getposatl player distance getposatl Pierrive_inventory_repair_1) < 10)"];
player addaction ["<t size='1' shadow='2' color='#13a500'>Repair And Rearm Vehicle</t>", {[Pierrive_inventory_repair_1] execVM "scripts\repair.sqf";}, [], 1, false, true, "","(_this == _target) and (alive _target) and ((getposatl player distance getposatl Pierrive_inventory_repair_1) < 10)"];
player addaction ["<t size='1' shadow='2' color='#13a500'>Enlever tous les Items du Cargo</t>", {[Pierrive_inventory_repair_1] execVM "scripts\clearItemVehicule.sqf";}, [], 1, false, true, "","(_this == _target) and (alive _target) and ((getposatl player distance getposatl Pierrive_inventory_repair_1) < 10)"];
player addaction ["<t size='1' shadow='2' color='#9200a5'>Configurer Pylon Vehicule Aerien le plus proche</t>", {
	params ["_target", "_caller", "_actionId", "_arguments"];
	[_caller] execVM "scripts\configurePylonACE.sqf";
}, [], 1, false, true, "","(_this == _target) and (alive _target) and ((getposatl player distance getposatl Pierrive_inventory_repair_2) < 200)"];

player addAction [
	"Mettre marqueur sur position du désignateur",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		_NameMarker = format ["%1_%2", name _caller, round ((getPosATL laserTarget _caller) select 0)];
		_TextMarker = format ["  Marquage laser de %1", name _caller];
		_MarkerLaser = createMarker [_NameMarker, (getPosATL laserTarget _caller)];
		_MarkerLaser setMarkerType "mil_join";
		_MarkerLaser setMarkerAlpha 0.5;
		_MarkerLaser setMarkerColor "ColorRed";
		_MarkerLaser setMarkerText _TextMarker;
		_MarkerLaser setMarkerSize [(((getMarkerSize _MarkerLaser) select 0) / 2),(((getMarkerSize _MarkerLaser) select 1) / 2)];
		hint "Marquage Effectué, il sera supprimé dans 1min";
		[_MarkerLaser] spawn {sleep 60; deleteMarker (_this select 0)};
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

//TeleportationMedic / Hors de l'eau / Bateau
player addAction ["<t color='#cfcf4c' size='1.5'>Aller voir un Médecin</t>",{ 
	params ["_target", "_caller", "_actionId", "_arguments"]; 
	_caller setPosATL [getPosATL Tel_Medic select 0, getPosATL Tel_Medic select 1, getPosATL Tel_Medic select 2]; 
}, [], 1, false, true, "","(_this == _target) and (alive _target) and ((getposatl _target distance getposatl tel_OutMedic) < 3)"];

player addAction ["<t color='#cfcf4c' size='1.5'>Retourner sur le Pont</t>",{ 
	params ["_target", "_caller", "_actionId", "_arguments"]; 
	_caller setPosATL [getPosATL tel_OutMedic select 0, getPosATL tel_OutMedic select 1, getPosATL tel_OutMedic select 2]; 
}, [], 1, false, true, "","(_this == _target) and (alive _target) and ((getposatl _target distance getposatl Tel_Medic) < 3)"];

player addAction ["<t color='#cfcf4c' size='1.5'>Sortir de l'eau</t>",{ 
	params ["_target", "_caller", "_actionId", "_arguments"]; 
	_caller setPosATL [getPosATL tel_OutMedic select 0, getPosATL tel_OutMedic select 1, getPosATL tel_OutMedic select 2]; 
}, [], 1, false, true, "","(_this == _target) and (alive _target) and ((getPosASL _target select 2) < 1) and ((getpos _target) inArea 'no_civ')"];

player addAction ["<t color='#cfcf4c' size='1.5'>Aller prendre un bateau</t>",{ 
	params ["_target", "_caller", "_actionId", "_arguments"]; 
	_caller setPosATL [getPosATL tel_Boat select 0, getPosATL tel_Boat select 1, getPosATL tel_Boat select 2]; 
}, [], 1, false, true, "","(_this == _target) and (alive _target) and ((getposatl _target distance getposatl tel_OutMedic) < 3)"];

player addAction ["<t color='#cfcf4c' size='1.5'>Retourner sur le Pont</t>",{ 
	params ["_target", "_caller", "_actionId", "_arguments"]; 
	_caller setPosATL [getPosATL tel_OutMedic select 0, getPosATL tel_OutMedic select 1, getPosATL tel_OutMedic select 2]; 
}, [], 1, false, true, "","(_this == _target) and (alive _target) and ((getposatl _target distance getposatl tel_Boat) < 3)"];
