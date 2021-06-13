params [
	["_troupClass", ["I_G_Soldier_F"]],
	["_NbTroupSpawn", 1],
	["_start_pos", [0,0,0]]
];

private _troupgrp = createGroup [btc_enemy_side, true];

for "_i" from 1 to _NbTroupSpawn do {
	(selectRandom _troupClass) createUnit [_start_pos, _troupgrp,"", 0.5, "private"];
};

_tempoArray = missionNamespace getVariable "AllGroupVLR";
_tempoArray pushBack _troupgrp;

missionNamespace setVariable ["AllGroupVLR", _tempoArray, true];

if (debug_VLR) then {diag_log format ["Function SpawnGrpUnits (1): groupe : %1 and classe : %2", _troupgrp, _troupClass]};

_troupgrp