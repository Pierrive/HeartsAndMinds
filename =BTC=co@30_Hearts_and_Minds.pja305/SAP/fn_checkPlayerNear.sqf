params [
    ["_road", objNull]
];

if (_road isEqualTo objNull) exitWith {false};

_playerNearPos = [];
_listPlayer = (ASLToAGL getPosASL _road) nearEntities [["Man", "Car", "Motorcycle", "Tank"], 200];

if ((count _listPlayer) > 0) then {

	{
		if (_x in playableUnits || (vehicle _x) in playableUnits) then {
			_playerNearPos pushBack _x;
		};
	} foreach _listPlayer;
};

if ((count _playerNearPos) > 0) then {false} else {true};