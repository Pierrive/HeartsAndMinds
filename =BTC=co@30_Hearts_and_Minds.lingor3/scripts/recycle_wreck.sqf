/*
this addAction ["Recycler Vehicule",{ 
	params ["_target", "_caller", "_actionId", "_arguments"]; 
	[recycleVeh] spawn btc_fnc_recycle_wreck;
}, [], 1, false, true, "","_this distance _target < 5"];
*/

params [
    ["_object", objNull, [objNull]]
];

private _array = (nearestObjects [_object, ["LandVehicle", "Air"], 10]) select {!(
    _x isKindOf "ACE_friesBase" OR
    _x isKindOf "ace_fastroping_helper"
)};

if (_array isEqualTo []) exitWith {hint localize "STR_BTC_HAM_LOG_RWRECK_NOWRECK";}; //No wreck found

if (damage (_array select 0) != 1) exitWith {hint localize "STR_BTC_HAM_LOG_RWRECK_NOTWRECK"}; //It is not a wreck!

btc_int_ask_data = nil;
["btc_helo"] remoteExecCall ["btc_fnc_int_ask_var", 2];

waitUntil {!(isNil "btc_int_ask_data")};

private _helo = btc_int_ask_data;
if ((_array select 0) in _helo) exitWith {hint localize "STR_BTC_HAM_LOG_RWRECK_ISHELO"};

[_array select 0] remoteExec ["recycle_wreck", 2];