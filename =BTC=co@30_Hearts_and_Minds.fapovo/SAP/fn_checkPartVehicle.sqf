params [
	["_vehicle", objNull]
];

if (isNull _vehicle) exitWith {};

private _ArrayPartVeh = (getAllHitPointsDamage _vehicle) select 0;
private _allPartVehOk = [];
private _AllPartWheel = ["hitlfwheel", "hitlf2wheel", "hitrfwheel", "hitrf2wheel", "hitlbwheel", "hitlmwheel", "hitrbwheel", "hitrmwheel"];
{
	if (_x in _ArrayPartVeh) then {
		_classConfigHit = getText ( configFile >> "CfgVehicles" >> typeOf _vehicle >> "HitPoints" >> _x >> "name");
		_allPartVehOk pushBackUnique _classConfigHit;
	};
} foreach _AllPartWheel;

_allPartVehOk
