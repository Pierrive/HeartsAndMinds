params [
    ["_Medic", objNull],
	["_player", objNull]
];

private ["_count","_nearestMens"];

if (_Medic isEqualTo objNull) exitWith {};
if (_player isEqualTo objNull) exitWith {};

//reset Advanced Fatigue
missionNamespace setVariable ["ace_advanced_fatigue_ae1reserve",4000000];
missionNamespace setVariable ["ace_advanced_fatigue_ae2reserve",84000];
missionNamespace setVariable ["ace_advanced_fatigue_anreserve",2300];
missionNamespace setVariable ["ace_advanced_fatigue_anfatigue",0];
missionNamespace setVariable ["ace_advanced_fatigue_muscledamage",0];

//Check player unconsious near player
_nearestMens = nearestObjects [_Medic, ["Man","CAManBase"], 10];
_nearestMens deleteAt (_nearestMens find MedicIA);
_count = count _nearestMens;

if (_count == 0) exitwith {hint "No Player Nearby"};

{
	if (_x getVariable ["ACE_isUnconscious", false]) then {
		_namePlayer = name _x;
		_textMedicUnconsious = format ["je vois que %1 est inconscient, ca va prendre plus de temps", _namePlayer];
		_textMedicUnconsious remoteExec ["hint", 0];
		sleep 5;
		_textMedic = format ["Soins en cours sur %1", _namePlayer];
		_textMedic remoteExec ["hint", 0];
		[_Medic, "AinvPknlMstpSlayWrflDnon_medic"] remoteExec ["playMove", _Medic];
		sleep 10;
		[_x] call ace_medical_treatment_fnc_fullHealLocal;
		_x setdammage 0;
		[_Medic, "AmovPercMstpSrasWrflDnon"] remoteExec ["playMove", _Medic];
		[_Medic, ""] remoteExec ["switchMove", 0];
		[_Medic, ""] remoteExec ["playMove", _Medic];
		"Soins effectue, il est en arret cardiaque, utilisez le defibrilateur" remoteExec ["hint", 0];
		sleep 5;
	};
	sleep 0.1;
} foreach _nearestMens;

_namePlayer = name _player;
_textMedic = format ["Soins en cours sur %1, ne bougez pas.", _namePlayer];
_textMedic remoteExec ["hint", 0];
[_Medic, "AinvPknlMstpSlayWrflDnon_medic"] remoteExec ["playMove", _Medic];
sleep 9;
[_player] call ace_medical_treatment_fnc_fullHealLocal;
_player setdammage 0;
[_Medic, "AmovPercMstpSrasWrflDnon"] remoteExec ["playMove", _Medic];
[_Medic, ""] remoteExec ["switchMove", 0];
[_Medic, ""] remoteExec ["playMove", _Medic];
"Soins termines" remoteExec ["hint", 0];
sleep 5;
