private ["_Medic","_count","_nearestMens"];

_Medic = _this select 0;
_nearestMens = nearestObjects [_Medic, ["Man","CAManBase"], 10];
_nearestMens deleteAt (_nearestMens find MedicIA);
_count = count _nearestMens;

if (_count == 0) exitwith {hint "No Player Nearby"};

{
	if (_x isKindOf "Man" || _x isKindOf "CAManBase") then {
		if (_x getVariable ["ACE_isUnconscious", false]) then {
			_namePlayer = name _x;
			_textMedicUnconsious = format ["je vois que %1 est inconscient, ca va prendre plus de temps", _namePlayer];
			_textMedicUnconsious remoteExec ["hint", 0];
			sleep 5;
			_textMedic = format ["Soins en cours sur %1", _namePlayer];
			_textMedic remoteExec ["hint", 0];
			[_Medic, "AinvPknlMstpSlayWrflDnon_medic"] remoteExec ["playMove", _Medic];
			sleep 15;
			[objNull, _x] call ace_medical_fnc_treatmentAdvanced_fullHealLocal;
			_x setdammage 0;
			[_Medic, "AmovPercMstpSrasWrflDnon"] remoteExec ["playMove", _Medic];
			[_Medic, ""] remoteExec ["switchMove", 0];
			[_Medic, ""] remoteExec ["playMove", _Medic];
			"Soins effectue, il est en arret cardiaque, utilisez le defibrilateur" remoteExec ["hint", 0];
			sleep 5;
		} else {
			_namePlayer = name _x;
			_textMedic = format ["Soins en cours sur %1, ne bougez pas.", _namePlayer];
			_textMedic remoteExec ["hint", 0];
			[_Medic, "AinvPknlMstpSlayWrflDnon_medic"] remoteExec ["playMove", _Medic];
			sleep 9;
			[objNull, _x] call ace_medical_fnc_treatmentAdvanced_fullHealLocal;
			_x setdammage 0;
			[_Medic, "AmovPercMstpSrasWrflDnon"] remoteExec ["playMove", _Medic];
			[_Medic, ""] remoteExec ["switchMove", 0];
			[_Medic, ""] remoteExec ["playMove", _Medic];
			"Soins termines" remoteExec ["hint", 0];
			sleep 5;
		};
	};
} foreach _nearestMens;