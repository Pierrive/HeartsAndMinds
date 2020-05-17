params ["_unit"];

if (!isServer) exitWith {};

if (_unit isEqualTo objNull) exitWith {};

if (isPlayer _unit) exitWith {};

if (_unit isKindOf "CAManBase") then {
	if (side _unit == civilian) then {
		_unit addEventHandler ["HandleDamage", btc_fnc_rep_hd];
		(group _unit) setVariable ["Vcm_Disable",true];
	};
};

if (side _unit == resistance) then {
	(group _unit) setVariable ["Vcm_Disable",true];
};

if (side _unit == west) then {
	(group _unit) setVariable ["Vcm_Disable",true];
};