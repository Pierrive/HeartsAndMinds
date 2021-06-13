params ["_unit"];

private _allVehNearPlayer = nearestObjects [_unit, ["Air"], 50];
private _VehNearPlayer = _allVehNearPlayer select 0;
if !(_VehNearPlayer isKindOf "Air") exitWith {hint "le vehicule près de toi n'est pas aerien"};
[_VehNearPlayer] call ace_pylons_fnc_showDialog;