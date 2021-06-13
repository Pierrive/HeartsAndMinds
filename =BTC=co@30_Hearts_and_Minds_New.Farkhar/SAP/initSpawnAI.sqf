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
			private _player = selectRandom _humanPlayers;
			private _AInearPlayer = [_player, _maxRadius] call fnc_countAI;
			private _typeSpawn = [] call fnc_checkTypeSpawn;
			if (debug_VLR) then {diag_log format ["Function initSpawnAI (1): player : %1, Nombre AI near : %2, type de spawn : %3", (name _player), _AInearPlayer, _typeSpawn]};
			
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
							case "Men" : {diag_log "Men"; [_pos,_player,_safeZone] call fnc_randomFootPlayer};
							case "Air" : {diag_log "Air"; [_pos,_player,_safeZone] call fnc_randomAirPlayer};
							case "Tank" : {diag_log "Tank"; [_pos,_player,_safeZone] call fnc_randomVehPlayer};
							case "Car" : {diag_log "Car"; [_pos,_player,_safeZone] call fnc_randomVehPlayer};
							default {diag_log "default"; [_pos,_player,_safeZone] call fnc_randomFootPlayer};
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