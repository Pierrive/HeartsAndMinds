params [
    ["_group", grpNull]
];

if (isNull _group) exitWith {};

private _HCs = entities "HeadlessClient_F";
if (_HCs isEqualTo []) exitWith {[]};

private _HC = owner (_HCs select 0);
_group apply {
    _x setGroupOwner _HC;
};

//[_group] call fnc_SAPgrpOwner;