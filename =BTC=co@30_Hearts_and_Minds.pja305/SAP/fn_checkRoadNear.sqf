params [
    ["_pos", [0,0,0]]
];

if (_pos isEqualTo [0,0,0]) exitWith {false};

private _nearAllRoads = _pos nearRoads 600;

if ((count _nearAllRoads) > 0) then {true} else {false};
