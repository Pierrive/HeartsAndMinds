private ["_truck","_nearestvehicle","_count","_nearestvehicles","_num","_fonte","_repair","_kk"];

_truck = _this select 0;

_nearestvehicle = (nearestObjects [_truck, ["Car","Armored","Air","Tank"], 10] select 0);
_nearestvehicles = nearestObjects [_truck, ["Car","Armored","Air","Tank"], 10];
_count = count _nearestvehicles;
_fonte = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
_repair = _fonte + "sound\repair.ogg";
_kk = 0;

if (_count == 0) exitwith {hint "Aucun véhicule à proximité"};

if (_count > 1) exitwith {hint "Trop de véhicules à proximité"};

if (_count == 1) exitwith {
	if (_nearestvehicle isKindOf "Tank") then {
			hint "Start Tank Repair...";
			playSound3D [_repair, _truck, false, getPosASL _truck, 3, 1, 100];
			sleep 7;
			playSound3D [_repair, _truck, false, getPosASL _truck, 3, 1, 100];
			sleep 7;
			playSound3D [_repair, _truck, false, getPosASL _truck, 3, 1, 100];
			sleep 7;
			_nearestvehicle setDamage 0;
			_kk = 0;
			waituntil {_kk == 0};
			hint "Réparation terminée";
	};
		
	if (_nearestvehicle isKindOf "Car") then {
			hint "Start Car/Truck Repair...";
			playSound3D [_repair, _truck, false, getPosASL _truck, 3, 1, 100];
			sleep 7;
			playSound3D [_repair, _truck, false, getPosASL _truck, 3, 1, 100];
			sleep 7;
			_nearestvehicle setDamage 0;
			_kk = 0;
			waituntil {_kk == 0};
			hint "Réparation terminée";
	};
	
	if (_nearestvehicle isKindOf "Armored") then {
			hint "Start Armored Vehicle Repair...";
			playSound3D [_repair, _truck, false, getPosASL _truck, 3, 1, 100];
			sleep 7;
			playSound3D [_repair, _truck, false, getPosASL _truck, 3, 1, 100];
			sleep 7;
			playSound3D [_repair, _truck, false, getPosASL _truck, 3, 1, 100];
			sleep 7;
			playSound3D [_repair, _truck, false, getPosASL _truck, 3, 1, 100];
			sleep 7;
			_nearestvehicle setDamage 0;
			_kk = 0;
			waituntil {_kk == 0};
			hint "Réparation terminée";
	};
	
	if (_nearestvehicle isKindOf "Air") then {
			hint "Start Airplane/Helicpoter Repair...";
			playSound3D [_repair, _truck, false, getPosASL _truck, 3, 1, 100];
			sleep 7;
			playSound3D [_repair, _truck, false, getPosASL _truck, 3, 1, 100];
			sleep 7;
			playSound3D [_repair, _truck, false, getPosASL _truck, 3, 1, 100];
			sleep 7;
			playSound3D [_repair, _truck, false, getPosASL _truck, 3, 1, 100];
			sleep 7;
			playSound3D [_repair, _truck, false, getPosASL _truck, 3, 1, 100];
			sleep 7;
			_nearestvehicle setDamage 0;
			_kk = 0;
			waituntil {_kk == 0};
			hint "Réparation terminée";
	};
};