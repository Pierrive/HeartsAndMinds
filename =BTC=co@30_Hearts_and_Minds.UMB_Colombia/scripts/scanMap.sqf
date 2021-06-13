/*
this addAction ["<t color='#821212' size='1.5'>Check Map Zone</t>",{ 
	params ["_target", "_caller", "_actionId", "_arguments"]; 
	
	SelectPos = false;
	openMap [true, false];
	hint "Cliquer sur la carte pour vérifier si le lieu est pacifié ou non";
	waitUntil{ !isNull findDisplay 12 };
	[ "check_MAP", "onMapSingleClick", { city_position = _pos; SelectPos = true } ] call BIS_fnc_addStackedEventHandler;
	waitUntil {sleep 0.1; SelectPos};
	
	hint "Secteur Sélectionné";
	[[city_position],"scripts\scanMap.sqf"] remoteExec ["BIS_fnc_execVM",2,false];
	[ "check_MAP", "onMapSingleClick" ] call BIS_fnc_removeStackedEventHandler;
	
	sleep 30;
	openMap [false, false];
}, [], 1, false, true, "","_this distance _target < 5"];
*/

params [
    ["_city_position", [0,0,0]]
];

private _nearCityPos = [btc_city_all, [], { _city_position distance2D _x }, "ASCEND"] call BIS_fnc_sortBy;
private _CityPos = _nearCityPos select 0;

private _marker = createMarker [format ["city_%1", position _CityPos], position _CityPos];
_marker setMarkerShape "ELLIPSE";
_marker setMarkerBrush "SolidBorder";
_marker setMarkerSize [300, 300];
_marker setMarkerAlpha 0.7;

if (_CityPos getVariable ["occupied", false]) then {
    _marker setMarkerColor "colorRed";
} else {
    _marker setMarkerColor "colorGreen";
};

sleep 30;
deleteMarker _marker;
