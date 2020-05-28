private ["_posRepair","_nearestvehicle","_nearestvehicles","_count"];

_posRepair = _this select 0;

sleep 0.5;

_nearestvehicle = (nearestObjects [_posRepair, ["Car","Armored","Air","Tank"], 7] select 0);
_nearestvehicles = nearestObjects [_posRepair, ["Car","Armored","Air","Tank"], 7];
_count = count _nearestvehicles;

sleep 0.5;

if (_count > 1) exitwith {hint "Trop de véhicules à proximité"};

if (_count == 0) exitwith {hint "Pas de véhicule ou Rapprochez-le"};

if (_count == 1) exitwith {
	clearWeaponCargoGlobal _nearestvehicle;
	clearMagazineCargoGlobal _nearestvehicle;
	clearItemCargoGlobal _nearestvehicle;
	clearBackpackCargoGlobal _nearestvehicle;
};