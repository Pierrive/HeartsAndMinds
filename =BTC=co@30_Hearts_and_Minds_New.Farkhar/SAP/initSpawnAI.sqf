params [
	["_minRadius", 500],
	["_maxRadius", 1200],
	["_maxAi", 20],
	["_safeZone", ""],
	["_SpawnDelay", 180]
];
	
while {true} do {
	private _headlessClients = entities "HeadlessClient_F";
	private _humanPlayers = allPlayers - _headlessClients;
	
	waitUntil {(count _humanPlayers) > 0};
	
	if !(_safeZone isEqualTo "") then {
		if !({alive _x} count _humanPlayers == {alive _x && _x inArea _safeZone} count _humanPlayers) then {
			_player = selectRandom _humanPlayers;
			_AInearPlayer = [_player, _maxRadius] call fnc_countAI;
			_typeSpawn = [] call fnc_checkTypeSpawn;
			
			private _arrayPos = [];
			if (_typeSpawn isEqualTo "Men") then {
				_searchPos = [_player, _minRadius, _maxRadius, 2, 0, 0, 0, [_safeZone], []] call BIS_fnc_findSafePos;
				_arrayPos pushBack _searchPos;
			} else {
				_searchPos = [_player, (_minRadius + 500), (_maxRadius + 500), 2, 0, 0, 0, [_safeZone], []] call BIS_fnc_findSafePos;
				_arrayPos pushBack _searchPos;
			};
					
			private _pos = _arrayPos select 0;
			if !(_pos inArea "safeZone") then {	
				if (count _AInearPlayer < _maxAi) then {
					if !((getpos _player) inArea _safeZone) then {
						switch (_typeSpawn) do {
							case "Men"; {[_pos,_player,_safeZone] call fnc_randomFootPlayer};
							case "Air": {[_pos,_player,_safeZone] call fnc_randomAirPlayer};
							case "Tank"; {[_pos,_player,_safeZone] call fnc_randomVehPlayer};
							case "Car": {[_pos,_player,_safeZone] call fnc_randomVehPlayer};
							default {[_pos,_player,_safeZone] call fnc_randomFootPlayer};
						};		
					};
				};
			};
		};
	};	
	
	// ************************************************************************
	sleep _SpawnDelay; //spawn delay to help minimise impact on performance
	// ************************************************************************
	
	[_safeZone] spawn fnc_deleteGroup;
};