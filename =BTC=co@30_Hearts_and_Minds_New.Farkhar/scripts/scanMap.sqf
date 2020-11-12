/*

this addAction ["Check Map Zone",{ 
	params ["_target", "_caller", "_actionId", "_arguments"]; 
	openMap [true, true];
	sleep 1;
	[[],"scripts\scanMap.sqf"] remoteExec ["BIS_fnc_execVM",2,false];
	sleep 30;
	openMap [false, false];
}, [], 1, false, true, "","alive _target and (getposatl _caller distance getposatl _target) < 5"];

openMap [true, true];
sleep 1;
[[],"scripts\scanMap.sqf"] remoteExec ["BIS_fnc_execVM",2,false];
sleep 30;
openMap [false, false];

*/
private _player = _this select 0;

city_position = getpos _player;

//Force open users map
openMap [true, false];

//Display user instruction
hint "Cliquer sur la carte pour vérifier si le lieu est pacifié ou non";

//Make sure map is open, before...
waitUntil{ !isNull findDisplay 12 };

[ "check_MAP", "onMapSingleClick", { city_position = _pos } ] call BIS_fnc_addStackedEventHandler;

//Wait for selection
waitUntil { !(city_position isEqualTo (getpos _player))};

hint "Secteur Sélectionné";

private _nearCityPos = [btc_city_all, [], { city_position distance2D _x }, "ASCEND"] call BIS_fnc_sortBy;
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

[ "check_MAP", "onMapSingleClick" ] call BIS_fnc_removeStackedEventHandler;

sleep 30;
deleteMarker _marker;
