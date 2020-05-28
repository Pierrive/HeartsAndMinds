_u = _this select 0;

player addEventHandler ["Respawn",{
	params  [ "_unit" ,  "_corpse" ];
	["Earplug", 1, true] call ace_common_fnc_setHearingCapability;
	[_unit] execVM "scripts\simpleEP.sqf";
}];

_p = ["<t color='#ffff33'>Baisser Volume ou Couper Son Ambiance</t>",{
	_s = _this select 0;
	_i = _this select 2;
	if (soundVolume != 1) then {
		if (player distance (getMarkerPos "btc_base") > 200) then {
			["Earplug", 1, true] call ace_common_fnc_setHearingCapability;
			_s setUserActionText [_i,"<t color='#ffff33'>Baisser Volume</t>"];
		} else {
			["Earplug", 1, true] call ace_common_fnc_setHearingCapability;
			_s setUserActionText [_i,"<t color='#ffff33'>Couper Son Ambiance</t>"];
		};
	} else {
		if (player distance (getMarkerPos "btc_base") > 200) then {
			["Earplug", 0.3, true] call ace_common_fnc_setHearingCapability;
			_s setUserActionText [_i,"<t color='#ffff33'>Remettre Volume</t>"];
		} else {
			["Earplug", 0, true] call ace_common_fnc_setHearingCapability;
			_s setUserActionText [_i,"<t color='#ffff33'>Remettre Volume</t>"];
		};
	};
},[],-90,false,true,"","_target == vehicle player"];

_u addAction _p;