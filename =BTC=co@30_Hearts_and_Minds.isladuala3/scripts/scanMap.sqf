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

private _markerArray = [];

{
    if (_x getVariable ["type", ""] != "NameMarine") then {
        if (_x getVariable ["marker", ""] != "") then {
            deleteMarker (_x getVariable ["marker", ""]);
        };
        private _radius_x = _x getVariable ["RadiusX", 500];
        private _radius_y = _x getVariable ["RadiusY", 500];

        private _marker = createMarker [format ["city_%1", position _x], position _x];
        _marker setMarkerShape "ELLIPSE";
        _marker setMarkerBrush "SolidBorder";
        _marker setMarkerSize [_radius_x + _radius_y, _radius_x + _radius_y];
        _marker setMarkerAlpha 0.5;
		_markerArray pushback _marker;
        if (_x getVariable ["occupied", false]) then {
            _marker setMarkerColor "colorRed";
        } else {
            _marker setMarkerColor "colorGreen";
        };
    };
	sleep 0.1;
} forEach btc_city_all;

sleep 30;
{deleteMarker _x} foreach _markerArray;